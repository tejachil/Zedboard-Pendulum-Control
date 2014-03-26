/*
 * File:   		AXI_GPIO.c
 * Author: 		Chris McCarty
 * Description: Contains function implementations for GPIO from cpu core 1
 * Date:		March 24, 2014
*/

/*************************** Header Files ***************************/
#include "AXI_GPIO.h"
#include "xparameters.h"



// Initialize the AXI GPIO and sets direction
//Returns:
//      status
int initLEDs(XGpio *GPIOInstance_Ptr){
	int retval = XGpio_Initialize(GPIOInstance_Ptr, XPAR_AXI_GPIO_LEDS_DEVICE_ID);
	if(XST_SUCCESS != retval){
		return retval;
	}
	XGpio_SetDataDirection(GPIOInstance_Ptr, 1, 1);
	return retval;
}



// Changes the state of the specified LEDs
//Arguments:
//      led: a 32 bit mask specifying which LEDs to set
//      state: 0 for off, 1 for on
void setLEDs(XGpio *GPIOInstance_Ptr, int led, int state){
	if(state == 1){
		XGpio_DiscreteSet(GPIOInstance_Ptr, 1, led | LED_MASK);
	}else{
		XGpio_DiscreteClear(GPIOInstance_Ptr, 1, led | LED_MASK);
	}
}
