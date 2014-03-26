/*
 * File:   		AXI_SPI.c
 * Author: 		Chris McCarty
 * Description: Contains function implementation for reading and writing to an AXI Quad SPI device
 * Date:		March 26, 2014
*/

/*************************** Header Files ***************************/
#include "AXI_SPI.h"
#include "xparameters.h"
#include "xspi.h"
#include "xil_printf.h"


/********************* Constant Definitions *************************/
#define SPI_DEVICE_ID		XPAR_AXI_QUAD_SPI_0_DEVICE_ID
SpiStruct *spiStruct; 		// contains the message queue handles
xTaskHandle xSpiTask;
XSpi SpiDev;				//Instance of SPI device
XSpi_Config *SpiConfig;

// Function prototype of the SPI monitor task
static void spiMonitorTask(void *param);


// Creates and starts the SPI monitor task that waits for new messages to send on the queue
void startSpiTask(SpiStruct* mySpi){

	// Create the SPI queue
	xil_printf("          Creating the SPI Queue...");
	mySpi->inQ = xQueueCreate(30,sizeof(SpiParams));
	xil_printf("DONE\n");


	spiStruct = mySpi;


	// Create the SPI task
	xil_printf("          Creating the SPI Task...");
	xTaskCreate(spiMonitorTask, (signed char*) "Spi Monitor", configMINIMAL_STACK_SIZE, (void *) &spiStruct, (tskIDLE_PRIORITY + 3), &xSpiTask);
	xil_printf("DONE\n");
}



// Original readSPI from the standalone implementation
int readSPI(int mode, int configuration, int target)
{
    int readData = 0x0000;
	unsigned Buffer_Size;
	u8 ReadBuffer[4];
	u8 WriteBuffer[4];
	int status; // Status to indicate Success/Failure

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
	status = XSpi_SetSlaveSelect(&SpiDev, target);
	if(status == XST_DEVICE_BUSY){
		xil_printf("R XSpi_SetSlaveSelect Device is busy\n");
	}else if(status == XST_SPI_TOO_MANY_SLAVES){
		xil_printf("R XSpi_SetSlaveSelect too many slaves\n");
	}else if(status != XST_SUCCESS){
	   	xil_printf("R XSpi_SetSlaveSelect Failed\n");
	}


	//Transfer of data
	//Status = XSpi_PolledTransfer(&Spi, WriteBuffer, ReadBuffer, Buffer_Size);
	status = XSpi_Transfer(&SpiDev, WriteBuffer, ReadBuffer, Buffer_Size);
	if(status == XST_DEVICE_BUSY){
		xil_printf("XSpi_Transfer Device is busy\n");
	}else if(status == XST_DEVICE_IS_STOPPED){
		xil_printf("XSpi_Transfer device is stopped\n");
	}else if(status == XST_SPI_NO_SLAVE){
		xil_printf("XSpi_Transfer no slave selected\n");
	}else if(status != XST_SUCCESS){
		xil_printf("XSpi_Transfer Failed\n");
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

	xil_printf("Entered the SPI Monitor Task...\n");

	SpiParams msgBuffer;
	int mode = 0, configuration = 0, target = 0;

	int Buffer_Size = 1;
	u8 ReadBuffer[4];
	u8 WriteBuffer[4];
	int status; // Status to indicate Success/Failure


	//Get the SPI device configuration
	xil_printf("Getting SPI device configuration...");
	SpiConfig = XSpi_LookupConfig(SPI_DEVICE_ID);
	if(NULL == SpiConfig){
		xil_printf("XSpi_LookupConfig Failed\n");
	}
	xil_printf("DONE\n");


	//Initialize the SPI device.
	xil_printf("Initializing SPI device...");
	status = XSpi_CfgInitialize(&SpiDev, SpiConfig, SpiConfig->BaseAddress);
	if(status == XST_DEVICE_IS_STARTED){
		xil_printf("XSpi_CfgInitialize Device already started");
	}else if(status != XST_SUCCESS){
		xil_printf("XSpi_CfgInitialize Failed");
	}
	xil_printf("DONE\n");


	//Set the options (defined in xspi.h)
	xil_printf("Setting SPI device options...");
	status = XSpi_SetOptions(&SpiDev, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);
	if(status == XST_DEVICE_BUSY){
		xil_printf("XSpi_SetOptions Device is busy\n");
	}else if(status == XST_SPI_SLAVE_ONLY){
		xil_printf("XSpi_SetOptions device is slave-only\n");
	}else if(status != XST_SUCCESS){
		xil_printf("XSpi_SetOptions Failed\n");
	}
	xil_printf("DONE\n");


	// start the device
	xil_printf("Starting SPI device...");
	status = XSpi_Start(&SpiDev);
	if(status == XST_DEVICE_IS_STARTED){
		xil_printf("XSpi_Start Device already started");
	}else if(status != XST_SUCCESS){
		xil_printf("XSpi_Start Failed");
	}
	xil_printf("DONE\n");


	xil_printf("Disabling SPI global interrupts...");
	// disable global interrupt for polled operation
	XSpi_IntrGlobalDisable(&SpiDev);
	xil_printf("DONE\n");


	xil_printf("SPI Task done one-time device configuration\n");
	// Infinite loop for the SPI monitor task
	for(;;){
		// Check for new message on the inQ and yield if there is no new message
		if(xQueueReceive(spiStruct->inQ,(void *)(&msgBuffer),portMAX_DELAY) != pdTRUE) {
			xil_printf("Error: Bad message on Queue received\n");
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
		status = XSpi_SetSlaveSelect(&SpiDev, target);
		if(status == XST_DEVICE_BUSY){
			xil_printf("XSpi_SetSlaveSelect Device is busy\n");
		}else if(status == XST_SPI_TOO_MANY_SLAVES){
			xil_printf("XSpi_SetSlaveSelect too many slaves\n");
		}else if(status != XST_SUCCESS){
		   	xil_printf("XSpi_SetSlaveSelect Failed\n");
		}

		//Transfer of data
		status = XSpi_Transfer(&SpiDev, WriteBuffer, ReadBuffer, Buffer_Size);
		if(status == XST_DEVICE_BUSY){
			xil_printf("XSpi_Transfer Device is busy\n");
		}else if(status == XST_DEVICE_IS_STOPPED){
			xil_printf("XSpi_Transfer device is stopped\n");
		}else if(status == XST_SPI_NO_SLAVE){
			xil_printf("XSpi_Transfer no slave selected\n");
		}else if(status != XST_SUCCESS){
			xil_printf("XSpi_Transfer Failed\n");
		}

		//if(debugLED)	XGpioPs_WritePin(debugXgpiopsLED, debugLEDnum, 0x00);
	}
}


// Packages the writeSPI parameters into a message (struct) and enqueues it on the inQ
void writeSPI(int mode, int configuration, int target){
	SpiParams msgBuf;
	msgBuf.mode = mode;
	msgBuf.configuration = configuration;
	msgBuf.target = target;

	xQueueSend(spiStruct->inQ, &msgBuf, portMAX_DELAY);
}