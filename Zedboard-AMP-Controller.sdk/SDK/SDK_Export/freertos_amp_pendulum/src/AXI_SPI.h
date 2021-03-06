/*
 * File:   		AXI_SPI.c
 * Author: 		Chris McCarty
 * Description: Modified version of Vivek and Teja's source code for FreeRTOS, specifically
 * 					modified for using an AXI Quad SPI device as opposed to the SPI device
 * 					in the processing system
 * Date:		March 26, 2014
*/

#ifndef AXI_SPI_H
#define	AXI_SPI_H

#include "FreeRTOS.h"
#include "queue.h"
#include "task.h"
#include "timers.h"
#include "projdefs.h"
#include "semphr.h"
#include "xgpiops.h"

// Chip Select Signals
//#define ADC_SS      (0x01) 			// ADC chip select (RD1)		// previously 0x00
//#define DAC_SS      (0x02) 			// DAC chip select (RD2)		// previously 0x01
//#define ENC_SS      (0x04) 			// Encoder Chip select (RD9)	// previously 0x02

typedef enum {ADC=0x01, DAC=0x02, ENCODER_P=0x04, ENCODER_S=0x08} target_t;

// Different SPI Modes
#define SPI_MODE_ENCODER_8   (0)
#define SPI_MODE_ENCODER_16  (1)
#define SPI_MODE_ENCODER_32  (2)
#define SPI_MODE_DAC_16      (3)
#define SPI_MODE_ADC_32      (4)

//Maintains the inQ and outQ handles. Currently only using the inQ. Can easily be extended to include other parameters.
typedef struct __SpiStruct {
	xQueueHandle inQ;
	xQueueHandle outQ;
} SpiStruct;

//Struct that represents a message in the queue and contains all the necessary parameters
typedef struct __SpiParams {
	int mode;
	int configuration;
	int target;
} SpiParams;


//Creates the SPI monitor task
//Arguments:
//      mySpi: SpiStruct that maintains the inQ and outQ handles
void startSpiTask(SpiStruct* mySpi);

//Read a value through SPI
//Arguments:
//      mode: specifies the mode of SPI which takes one of the 5 defined values above
//      configuration: should contains the configuration bits to be sent through SPI
//      target: specifies the pin to be used as a chip select
//Return:
//      the read value from SPI
int readSPI(int mode, int configuration, int target);

// Packages the writeSPI parameters into a message (struct) and enqueues it on the inQ
//Arguments:
//      mode: specifies the mode of SPI which takes one of the 5 defined values above
//      configuration: should contains the configuration bits to be sent through SPI
//      target: specifies the pin to be used as a chip select
void writeSPI(int mode, int configuration, int target);

#endif	/* AXI_SPI_H */
