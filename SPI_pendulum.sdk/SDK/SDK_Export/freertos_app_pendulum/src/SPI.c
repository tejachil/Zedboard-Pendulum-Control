/*
 * File:   		SPI.c
 * Author: 		Teja Chiluvuri
 * Description: Contains function implementation for reading and writing to SPI devices
 * Date:		December 13, 2013
*/

/*************************** Header Files ***************************/
#include "SPI.h"
#include "xparameters.h"
#include "xspips.h"
#include "xil_printf.h"


/********************* Constant Definitions *************************/
#define SPI_DEVICE_ID		XPAR_XSPIPS_0_DEVICE_ID

static SpiStruct *spiStruct; // contains the message queue handles

// Function prototype of the SPI monitor task
static void spiMonitorTask(void *param);

/** Debug framework for toggling LED and measuring latency **/
static int debugLED = 0;
static XGpioPs *debugXgpiopsLED;
static int debugLEDnum;

void setupDebugLatancyLED(XGpioPs *xgpiops, int lednum){
	debugLED = 1;
	debugXgpiopsLED = xgpiops;
	debugLEDnum = lednum;
}

// Creates and starts the SPI monitor task that waits for new messages to send on the queue
void startSpiTask(SpiStruct* mySpi){
	mySpi->inQ = xQueueCreate(30,sizeof(SpiParams));
	spiStruct = mySpi;
	xTaskCreate(spiMonitorTask, (signed char*) "Spi Monitor", configMINIMAL_STACK_SIZE,(void *) &mySpi, (tskIDLE_PRIORITY + 3), ( xTaskHandle * ) NULL );
}

// Original readSPI from the standalone implementation
int readSPI(int mode, int configuration, int target)
{
    int readData = 0x0000;
	unsigned Buffer_Size;
	u8 ReadBuffer[4];
	u8 WriteBuffer[4];

	//Instance of SPI device
	XSpiPs Spi;

	int Status; // Status to indicate Success/Failure
	XSpiPs_Config *SpiConfig;

	//Initialize the SPI device.
	SpiConfig = XSpiPs_LookupConfig(SPI_DEVICE_ID);
	if (NULL == SpiConfig) {
		xil_printf("\nXSpiPs_LookupConfig Failed!");
	}

	Status = XSpiPs_CfgInitialize(&Spi, SpiConfig, SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("\nXSpiPs_CfgInitialize Failed!");
	}

	//Set Buffer Size (RX FIFO buffer and TX FIFO buffer have a capacity of 128 * 1Byte)
	if(mode == SPI_MODE_ENCODER_8){
        Buffer_Size = 1;
		WriteBuffer[0] = (u8)(configuration & 0x000000ff);
    }
	else if(mode == SPI_MODE_ENCODER_16){
        Buffer_Size = 2;
		WriteBuffer[0] = (u8)((configuration & 0x0000ff00)>>8);
		WriteBuffer[1] = (u8)(configuration & 0x000000ff);
    }
	else if(mode == SPI_MODE_ENCODER_32){
        Buffer_Size = 4;
		WriteBuffer[0] = (u8)((configuration & 0xff000000)>>24);
		WriteBuffer[1] = (u8)((configuration & 0x00ff0000)>>16);
		WriteBuffer[2] = (u8)((configuration & 0x0000ff00)>>8);
		WriteBuffer[3] = (u8)(configuration & 0x000000ff);
    }
	else if(mode == SPI_MODE_DAC_16){
        Buffer_Size = 2;
		WriteBuffer[0] = (u8)((configuration & 0x0000ff00)>>8);
		WriteBuffer[1] = (u8)(configuration & 0x000000ff);
    }
	else if(mode == SPI_MODE_ADC_32){
        Buffer_Size = 4;
		WriteBuffer[0] = (u8)((configuration & 0xff000000)>>24);
		WriteBuffer[1] = (u8)((configuration & 0x00ff0000)>>16);
		WriteBuffer[2] = (u8)((configuration & 0x0000ff00)>>8);
		WriteBuffer[3] = (u8)(configuration & 0x000000ff);
    }

	//Select a slave
   	XSpiPs_SetSlaveSelect(&Spi, target);	//TEST THIS!!!!!!---------------------------------------------------------

	//Set the options
	XSpiPs_SetOptions(&Spi, XSPIPS_MASTER_OPTION|XSPIPS_FORCE_SSELECT_OPTION|XSPIPS_MANUAL_START_OPTION	);

	//SPI Clock Frequency = 1.25MHz (160/128)
	XSpiPs_SetClkPrescaler(&Spi, XSPIPS_CLK_PRESCALE_128);

	//Transfer of data
	Status = XSpiPs_PolledTransfer(&Spi, WriteBuffer, ReadBuffer, Buffer_Size);
	if (Status != XST_SUCCESS) {
		xil_printf("\nXSpiPs_PolledTransfer Failed!");
	}

	//Set readData
	if(mode == SPI_MODE_ENCODER_8){
        readData = ReadBuffer[0];
    }
	else if(mode == SPI_MODE_ENCODER_16){
        readData = (u32)(ReadBuffer[0]<<8) | ReadBuffer[1];		//TEST THIS!!!!!!---------------------------------------------------------
	}
	else if(mode == SPI_MODE_ENCODER_32){

        readData = (u32)(ReadBuffer[0]<<24) | (u32)(ReadBuffer[1]<<16) | (u32)(ReadBuffer[2]<<8) | ReadBuffer[3];
    }
	else if(mode == SPI_MODE_DAC_16){
        readData = (u32)(ReadBuffer[0]<<8) | ReadBuffer[1];
    }
	else if(mode == SPI_MODE_ADC_32){
        readData = (u32)(ReadBuffer[0]<<24) | (u32)(ReadBuffer[1]<<16) | (u32)(ReadBuffer[2]<<8) | ReadBuffer[3];
    }

    return readData;
}

// Original writeSPI function from standalone implementation is now implemented in the SPI monitor
static void spiMonitorTask( void *param ){
	SpiParams msgBuffer;
	int mode, configuration, target;

	int Buffer_Size;
	u8 ReadBuffer[4];
	u8 WriteBuffer[4];

	//Instance of SPI device
	XSpiPs Spi;

	int Status; // Status to indicate Success/Failure
	XSpiPs_Config *SpiConfig;

	//Initialize the SPI device.
	SpiConfig = XSpiPs_LookupConfig(SPI_DEVICE_ID);
	if (NULL == SpiConfig) {
		xil_printf("\nXSpiPs_LookupConfig Failed!");
	}

	Status = XSpiPs_CfgInitialize(&Spi, SpiConfig, SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("\nXSpiPs_CfgInitialize Failed!");
	}

	// Infinite loop for the SPI monitor task
	for(;;){
		// Check for new message on the inQ and yield if there is no new message
		if (xQueueReceive(spiStruct->inQ,(void *)(&msgBuffer),portMAX_DELAY) != pdTRUE) {
			xil_printf("\nError: Bad message on Queue received");
		}

		mode = msgBuffer.mode;
		configuration = msgBuffer.configuration;
		target = msgBuffer.target;

		//Set Buffer Size (RX FIFO buffer and TX FIFO buffer have a capacity of 128 * 1Byte)
		if(mode == SPI_MODE_ENCODER_8){
			Buffer_Size = 1;
			WriteBuffer[0] = (u8)(configuration & 0x000000ff);
		}
		else if(mode == SPI_MODE_ENCODER_16){
			Buffer_Size = 2;
			WriteBuffer[0] = (u8)((configuration & 0x0000ff00)>>8);
			WriteBuffer[1] = (u8)(configuration & 0x000000ff);
		}
		else if(mode == SPI_MODE_ENCODER_32){
			Buffer_Size = 4;
			WriteBuffer[0] = (u8)((configuration & 0xff000000)>>24);
			WriteBuffer[1] = (u8)((configuration & 0x00ff0000)>>16);
			WriteBuffer[2] = (u8)((configuration & 0x0000ff00)>>8);
			WriteBuffer[3] = (u8)(configuration & 0x000000ff);
		}
		else if(mode == SPI_MODE_DAC_16){
			Buffer_Size = 2;
			WriteBuffer[0] = (u8)((configuration & 0x0000ff00)>>8);
			WriteBuffer[1] = (u8)(configuration & 0x000000ff);
		}
		else if(mode == SPI_MODE_ADC_32){
			Buffer_Size = 4;
			WriteBuffer[0] = (u8)((configuration & 0xff000000)>>24);
			WriteBuffer[1] = (u8)((configuration & 0x00ff0000)>>16);
			WriteBuffer[2] = (u8)((configuration & 0x0000ff00)>>8);
			WriteBuffer[3] = (u8)(configuration & 0x000000ff);
		}

		//Select a slave
		XSpiPs_SetSlaveSelect(&Spi, target);

		//Set the options
		XSpiPs_SetOptions(&Spi, XSPIPS_MASTER_OPTION|XSPIPS_FORCE_SSELECT_OPTION|
		XSPIPS_MANUAL_START_OPTION);

		//SPI Clock Frequency = 1.25MHz (160/128)
		XSpiPs_SetClkPrescaler(&Spi, XSPIPS_CLK_PRESCALE_128);

		//Transfer of data
		Status = XSpiPs_PolledTransfer(&Spi, WriteBuffer, ReadBuffer, Buffer_Size);
		if (Status != XST_SUCCESS) {
			xil_printf("\nXSpiPs_PolledTransfer Failed!");
		}

		if(debugLED)	XGpioPs_WritePin(debugXgpiopsLED, debugLEDnum, 0x00);
	}
}


// Packages the writeSPI parameters into a message (struct) and enqueues it on the inQ
void writeSPI(int mode, int configuration, int target){
	SpiParams msgBuf;
	msgBuf.mode = mode;
	msgBuf.configuration = configuration;
	msgBuf.target = target;

	xQueueSend(spiStruct->inQ, &msgBuf,portMAX_DELAY);
}