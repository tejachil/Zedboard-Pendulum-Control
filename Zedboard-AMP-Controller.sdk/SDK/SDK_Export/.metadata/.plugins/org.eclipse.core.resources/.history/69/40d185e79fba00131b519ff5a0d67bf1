/*
 * amp.c
 *
 *  Created on: Mar 24, 2014
 *      Author: chris
 */
#include "amp.h"
#include "xil_mmu.h"
#include "xil_cache.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "sleep.h"
#include "xpseudo_asm.h"


/**
 * Modified DCacheFlush to prevent L2 Cache controller access
 */
void MyXil_DCacheFlush(void)
{
	Xil_L1DCacheFlush();
	//Xil_L2CacheFlush();
}


/**
 * Modified SetTlbAttributes to call MyXil_DCacheFlush in order
 * to prevelt L2 Cache controller accesses
 */
void MyXil_SetTlbAttributes(u32 addr, u32 attrib)
{
	u32 *ptr;
	u32 section;

	mtcp(XREG_CP15_INVAL_UTLB_UNLOCKED, 0);
	dsb();

	mtcp(XREG_CP15_INVAL_BRANCH_ARRAY, 0);
	dsb();
	MyXil_DCacheFlush();

	section = addr / 0x100000;
	ptr = &MMUTable + section;
	*ptr = (addr & 0xFFF00000) | attrib;
	dsb();
}


/**
 * Function to send data to OCM which is consumed by Linux Application
 */
void myPutchar(char c){
	//wait for cpu0 to consume previous value
	while(COMM_TX_FLAG);
	COMM_TX_DATA = (volatile unsigned long)c;
	dmb();
	COMM_TX_FLAG = 1;

}

/*
 * Since there is no STDIO assigned to the BSP, outbyte() is not created
 * by libgen. So add outbyte() call to myPutchar() to enable STDOUT functionality
 * for print() and xil_printf()
 */void outbyte(char c){
	myPutchar(c);
}
