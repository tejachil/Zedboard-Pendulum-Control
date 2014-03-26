/*
 * amp.h
 *
 *  Created on: Mar 24, 2014
 *      Author: chris
 */

#ifndef AMP_H_
#define AMP_H_


#include "xil_io.h"
#include "xil_cache.h"



#define COMM_VAL        (*(volatile unsigned long *)(0xFFFF8000))
#define COMM_TX_FLAG    (*(volatile unsigned long *)(0xFFFF9000))
#define COMM_TX_DATA    (*(volatile unsigned long *)(0xFFFF9004))
#define COMM_RX_FLAG    (*(volatile unsigned long *)(0xFFFF9008))
#define COMM_RX_DATA    (*(volatile unsigned long *)(0xFFFF900C))


extern u32 MMUTable;





/**
 * Modified DCacheFlush to prevent L2 Cache controller access
 */
void MyXil_DCacheFlush(void);




/**
 * Modified SetTlbAttributes to call MyXil_DCacheFlush in order
 * to prevelt L2 Cache controller accesses
 */
void MyXil_SetTlbAttributes(u32 addr, u32 attrib);



/**
 * Function to send data to OCM which is consumed by Linux Application
 */
void myPutchar(char c);

/*
 * Since there is no STDIO assigned to the BSP, outbyte() is not created
 * by libgen. So add outbyte() call to myPutchar() to enable STDOUT functionality
 * for print() and xil_printf()
 */
void outbyte(char c);





#endif /* AMP_H_ */
