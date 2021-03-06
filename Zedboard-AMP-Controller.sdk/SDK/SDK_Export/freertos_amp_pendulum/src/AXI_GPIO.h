/*
 * gpio.h
 *
 *  Created on: Mar 24, 2014
 *      Author: chris
 */

#ifndef GPIO_H_
#define GPIO_H_

#include "xgpio.h"



#define LED_0		0x00000001		// mask for LED 0
#define LED_1		0x00000002		// mask for LED 1
#define LED_2		0x00000004		// mask for LED 2
#define LED_3		0x00000008		// mask for LED 3
#define LED_4		0x00000010		// mask for LED 4
#define LED_5		0x00000020		// mask for LED 5
#define LED_6		0x00000040		// mask for LED 6
#define LED_7		0x00000080		// mask for LED 7
#define LED_MASK	0xFFFFFF00		// mask for clearing all LEDs


// Initialize the AXI GPIO and sets direction
//Returns:
//      status
int initLEDs();



// Changes the state of the specified LEDs
//Arguments:
//      led: a 32 bit mask specifying which LEDs to set
//      state: 0 for off, 1 for on
void setLEDs(int led, int state);


#endif /* GPIO_H_ */
