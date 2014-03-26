/*
 * File:   adc_dac.h
 * Author: Yasir
 *
 * Created on March 20, 2013, 11:16 AM
 */

#ifndef ADC_DAC_H
#define	ADC_DAC_H
#include "AXI_SPI.h"

// OVERRIDE_CONFIG_BITS
#define DAC_CONFIG_BITS  (0x3000)     //store 4-bit configuration bits to be sent to DAC
                                      //and 12-bit junk bits to be replaced by the function writeDAC()
#define ADC_CONFIG_BITS  (0x0001E000) //store 5-bit configuration bits to be sent to ADC
                                      //followed by 12-bits to be read from ADC

//Write a value to motor
//Arguments:
//      voltage: should be in the range of (-10V <--> +10V)
//Return:
//      the written value to DAC
int writeDAC(float voltage);

//Read from ADC specifically potentiometer
//Return:
//     In general, readADC is prepared to return any value in the range of (-10V <--> +10V)
//     In this case, potentiometer is expected to be in the range of (-5V <--> +5V)
float readADC();

#endif	/* ADC_DAC_H */

