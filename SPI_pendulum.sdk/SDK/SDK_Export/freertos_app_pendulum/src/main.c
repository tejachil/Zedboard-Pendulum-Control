

/*
 * File:   		main.c
 * Author: 		Teja Chiluvuri
 * Description: Source code for controlling inverted pendulum
 * 				Extended Vivek's code to incorporate the FreeRTOS framework
 * Date:		September 21, 2013
*/

/*************************** Header Files ***************************/

#include "SPI.h"
#include "adc_dac.h"
#include "encoder.h"
#include "sleep.h"
#include "xil_printf.h"


#define mainLED_TASK_PRIORITY		( tskIDLE_PRIORITY + 1 )

// Used to toggle the LEDs on ZedBoard to measure timer period and SPI send latency
#define LED_DEBUG 1
#if LED_DEBUG == 1
	static XGpioPs mio_emio_pmod2;
	#define LD7 		54
	#define LD6 		55
	#define LD5 		56
	#define LD4		 	57
	static XGpioPs mio_emio_pmod2;
	void prvSetLEDHardware( void );

	// Function prototype for the printing task
	static void printingTask(void *param);
#endif

static int printed; // variable to keep track of printing
static int enc1, enc2;


/********************** Global variables for controller **********************/

volatile unsigned sec1000; // This is updated 1000 times per second by interrupt handler
volatile float output_V,theta_R,alpha_R,theta_des;
volatile float thetaDot=0.,alphaDot=0.;

#define pi ((float)3.14125926535)
const float Kr2d=180./pi;        //radians to degrees
const float Kpot=-352.*pi/180/10;    //radians/V for pot
const float Kenc=pi/(2.*1024.);     //radians/count for encoder

float xhat[4];

/*************************** Function Prototypes ***************************/

void update_value(xTimerHandle pxTimer);

//INVERTED PENDULUM STABILIZATION

//*************************** main() ***************************

int main(void)
{
	prvInitializeExceptions();

	#if LED_DEBUG == 1
	prvSetLEDHardware();
	setupDebugLatancyLED(&mio_emio_pmod2, LD6);
	printed = 0;
	xTaskCreate(printingTask, (signed char*) "Printing Task", configMINIMAL_STACK_SIZE,(void *) NULL, (tskIDLE_PRIORITY + 1), ( xTaskHandle * ) NULL );
	#endif

	// Start the SPI monitor task
	SpiStruct mySpi;
	startSpiTask(&mySpi);

	// Write 0 to the motors and initialize the encoder
	writeDAC(0);
    theta_des=0.;
    initEncoder(ENCODER_P);
    initEncoder(ENCODER_S);

    // Start a timer with a period of 1ms
	xTimerHandle ControllerTimerHandle = xTimerCreate((const signed char *)"Controller Timer",(1/portTICK_RATE_MS),pdTRUE,(void *) NULL,update_value);
	xTimerStart(ControllerTimerHandle,portMAX_DELAY);

	/* Start the tasks and timer running. */
	vTaskStartScheduler();

	/* If all is well, the scheduler will now be running, and the following line
	will never be reached.  If the following line does execute, then there was
	insufficient FreeRTOS heap memory available for the idle and/or timer tasks
	to be created.  See the memory management section on the FreeRTOS web site
	for more details. */
	for( ;; );
}


//************************** update_value() ***************************
// Contains the control algorithm for maintaining stability of the pendulum
void update_value(xTimerHandle pxTimer)
{
	#if LED_DEBUG == 1
	XGpioPs_WritePin(&mio_emio_pmod2, LD7, 0x01);
	#endif


    static const float Kf[4][2]={
    {0.9775,0},
    {0,0.9775},
    {0.0109,-0.0256},
    {-.0279,0.9422}
    };
    static const float Kc[4]={-5.1871,27.8442,-2.7295,3.1867};
    static const float Aup[4][4]={
        {0.0225,0.0000,0.0000,0.0000},
        {0.0000,0.0225,0.0000,0.0000},
        {-0.0109,0.1051,0.9552,-0.0008},
        {0.0279,-0.8221,-0.0431,0.9977}
    };
    static const float Bup[4]={0,0,0.0815,0.0784};
   int temp,ind,col;
   float u;
   static float thetaOld=0.,alphaOld=0.;

   static float xpre[4]={0.,0.,0.,0.};

	sec1000++;            // Update global variable

	//  code for Kalman Filter based controller
	//read inputs and convert to radians
	theta_R=readADC()*Kpot;
	enc1 = encoderRead(ENCODER_S);
	//temp=-encoderRead(ENCODER_S) % 4096; //get servo reading. - for CCW +ve convention
	temp = -enc1 % 4096;
	//theta_R=temp*Kenc;
	temp=encoderRead(ENCODER_P)%4096;  //force encoder reading to be between 0 and 4096(2pi)
	enc2 = temp;
	printed = 1;
	if (temp<0) temp+=4096;
	alpha_R=(temp)*Kenc-pi;  //convert to up => alpha=0

	//check to see if we should be controlling.  If not, output 0
	if ((alpha_R>=0?alpha_R:-alpha_R)>(20.*pi/180)) {
		u=0.;  //if we are not in range do nothing
		writeDAC(u);
		output_V=u;
		for(ind=0;ind<4;ind++) xpre[ind]=0.; //reset estimator
	}
	else {
	  //update state estimate based on new input
	  for(ind=0;ind<4;ind++) {
		  xhat[ind]=xpre[ind]+Kf[ind][0]*theta_R+Kf[ind][1]*alpha_R;
	  }
	  //compute control
	  u=0.;
	  for(ind=0;ind<4;ind++) {
		  u += -Kc[ind]*xhat[ind];
	  }
	  u+= Kc[0]*theta_des;
	  output_V=u;

	  //saturate
	  if (u>5.) u=5.;
	  else if (u<-5.) u=-5.;


	  writeDAC(-u);  //invert due to sign conventions

	  //precompute the part of xhat we can
	  for(ind=0;ind<4;ind++) {
		  xpre[ind]=0.;
		  for(col=0;col<4;col++) {
			  xpre[ind]+=Aup[ind][col]*xhat[col];
		  }
		  xpre[ind]+=Bup[ind]*u;
	  }

      if((sec1000%20000)<10000) theta_des=20*pi/180;
      else theta_des=-20*pi/180;
      //theta_des=20*pi/180.*sin(2*pi*.0001*sec1000);
	}



/*	#if LED_DEBUG == 1
	XGpioPs_WritePin(&mio_emio_pmod2, LD6, 0x01);
	#endif
*/

	#if LED_DEBUG == 1
	XGpioPs_WritePin(&mio_emio_pmod2, LD7, 0x00);
	#endif
}



#if LED_DEBUG == 1

static void printingTask( void *param ){
	for(;;){
		if(printed){
			XGpioPs_WritePin(&mio_emio_pmod2, LD5, 0x01);
			//xil_printf("\n%d: %d, %d", (int)xTaskGetTickCount(), temp, ((int)u)*1000); // print time: encoder value, control input
			xil_printf("\n%d %d", (int)(1000*theta_R), enc2); // print time: encoder value, control input
			printed = 0;
		}
		XGpioPs_WritePin(&mio_emio_pmod2, LD5, 0x00);
		taskYIELD();
	}

}

void prvSetLEDHardware( void )
{

	XGpioPs_Config *ConfigPtrPS;

	ConfigPtrPS = XGpioPs_LookupConfig(0);
	XGpioPs_CfgInitialize(&mio_emio_pmod2, ConfigPtrPS,
					ConfigPtrPS->BaseAddr);

	XGpioPs_SetDirectionPin(&mio_emio_pmod2, LD7, 1);
	XGpioPs_SetOutputEnablePin(&mio_emio_pmod2, LD7, 1);
	XGpioPs_SetDirectionPin(&mio_emio_pmod2, LD6, 1);
	XGpioPs_SetOutputEnablePin(&mio_emio_pmod2, LD6, 1);
	XGpioPs_SetDirectionPin(&mio_emio_pmod2, LD5, 1);
	XGpioPs_SetOutputEnablePin(&mio_emio_pmod2, LD5, 1);
	XGpioPs_SetDirectionPin(&mio_emio_pmod2, LD4, 1);
	XGpioPs_SetOutputEnablePin(&mio_emio_pmod2, LD4, 1);

	XGpioPs_WritePin(&mio_emio_pmod2, LD7, 0x0);
	XGpioPs_WritePin(&mio_emio_pmod2, LD6, 0x0);
	XGpioPs_WritePin(&mio_emio_pmod2, LD5, 0x0);
	XGpioPs_WritePin(&mio_emio_pmod2, LD4, 0x0);
}
#endif


/*-----------------------------------------------------------*/
void vApplicationMallocFailedHook( void )
{
	/* vApplicationMallocFailedHook() will only be called if
	configUSE_MALLOC_FAILED_HOOK is set to 1 in FreeRTOSConfig.h.  It is a hook
	function that will get called if a call to pvPortMalloc() fails.
	pvPortMalloc() is called internally by the kernel whenever a task, queue or
	semaphore is created.  It is also called by various parts of the demo
	application.  If heap_1.c or heap_2.c are used, then the size of the heap
	available to pvPortMalloc() is defined by configTOTAL_HEAP_SIZE in
	FreeRTOSConfig.h, and the xPortGetFreeHeapSize() API function can be used
	to query the size of free heap space that remains (although it does not
	provide information on how the remaining heap might be fragmented). */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}

/*-----------------------------------------------------------*/
void vApplicationStackOverflowHook( xTaskHandle *pxTask, signed char *pcTaskName )
{
	( void ) pcTaskName;
	( void ) pxTask;

	/* vApplicationStackOverflowHook() will only be called if
	configCHECK_FOR_STACK_OVERFLOW is set to either 1 or 2.  The handle and name
	of the offending task will be passed into the hook function via its
	parameters.  However, when a stack has overflowed, it is possible that the
	parameters will have been corrupted, in which case the pxCurrentTCB variable
	can be inspected directly. */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}

void vApplicationSetupHardware( void )
{
	/* Do nothing */
}
