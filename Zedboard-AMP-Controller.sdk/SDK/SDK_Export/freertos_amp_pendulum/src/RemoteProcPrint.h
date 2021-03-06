/*
 * File:   		RemoteProcPrint.h
 * Author: 		Chris McCarty
 * Description:
 * Date:		April 2, 2014
*/
#ifndef REMOTEPROCPRINT_H_
#define REMOTEPROCPRINT_H_


#include "FreeRTOS.h"
#include "queue.h"
#include "task.h"
#include "timers.h"

#define COMM_TX_FLAG    (*(volatile unsigned long *)(0xFFFF9000))
#define COMM_TX_DATA    (*(volatile unsigned long *)(0xFFFF9004))


// static locations for data to be written to in a burst
#define COMM_TX_DATA_A    (*(volatile unsigned long *)(0xFFFF9010))
#define COMM_TX_DATA_B    (*(volatile unsigned long *)(0xFFFF9018))
#define COMM_TX_DATA_C    (*(volatile unsigned long *)(0xFFFF9030))
#define COMM_TX_DATA_D    (*(volatile unsigned long *)(0xFFFF9038))
#define COMM_TX_DATA_E    (*(volatile unsigned long *)(0xFFFF9050))
#define COMM_TX_DATA_F    (*(volatile unsigned long *)(0xFFFF9058))
#define COMM_TX_DATA_G    (*(volatile unsigned long *)(0xFFFF9070))
#define COMM_TX_DATA_H    (*(volatile unsigned long *)(0xFFFF9078))
#define COMM_TX_DATA_I    (*(volatile unsigned long *)(0xFFFF9080))
#define COMM_TX_DATA_J    (*(volatile unsigned long *)(0xFFFF9088))
#define COMM_TX_DATA_K    (*(volatile unsigned long *)(0xFFFF9090))
#define COMM_TX_DATA_L    (*(volatile unsigned long *)(0xFFFF9098))
#define COMM_TX_DATA_M    (*(volatile unsigned long *)(0xFFFF90A0))
#define COMM_TX_DATA_N    (*(volatile unsigned long *)(0xFFFF90A8))
#define COMM_TX_DATA_O    (*(volatile unsigned long *)(0xFFFF90B0))
#define COMM_TX_DATA_P    (*(volatile unsigned long *)(0xFFFF90B8))


#define MessageQueueSize	60

#define m_factor			100000

// page size = 4096
#define STATUS_ADDR    	0xFFFF9000
#define TYPE_ADDR    	0xFFFF9004
#define TYPE_OFFSET    	0x4

#define BUFFER_BASE    	0xFFFF9008
#define IDLE_THRESHOLD	5000

#define MAX_INDEX 				31
#define MAX_ENQUEUE_DELAY 		0
#define MAX_MESSAGE_DELAY 		0
#define MAX_DATABURST_DELAY 	0

#define mainRPP_TASK_PRIORITY		( tskIDLE_PRIORITY  + 1)
#define max_string_length			32
#define idle_threshold 				100000




// Maintains the inQ handle. Can easily be extended to include other parameters.
typedef struct __RemoteProcStruct {
	xQueueHandle inQ;
	xQueueHandle burst_data_inQ;
	unsigned char idle_flag;
	unsigned long long idle_counter;
	volatile unsigned int buffer_index;
} RemoteProcStruct;

// Struct that represents a message in the queue and contains all the necessary parameters
typedef struct __RPPMessageStruct {
	unsigned long value;		// the data to be sent
	unsigned char type;			// 0 for numeric data, 1 for character data
} RPPMessageStruct;


// Struct that represents a data burst in the queue and contains all the necessary parameters
typedef struct __RPPDataStruct {
	unsigned long timestamp;	// timestamp of data
	unsigned long value_a;		// data to be sent
	unsigned long value_b;		// data to be sent
	unsigned long value_c;		// data to be sent
	unsigned long value_d;		// data to be sent
	unsigned long value_e;		// data to be sent
	unsigned long value_f;		// data to be sent
	unsigned long value_g;		// data to be sent
	unsigned long value_h;		// data to be sent
	unsigned long value_i;		// data to be sent
	unsigned long value_j;		// data to be sent
	unsigned long value_k;		// data to be sent
	unsigned long value_l;		// data to be sent
	unsigned long value_m;		// data to be sent
	unsigned long value_n;		// data to be sent
	unsigned long value_o;		// data to be sent
	unsigned long value_p;		// data to be sent
} RPPDataStruct;




//Creates the RemoteProc monitor task
//Arguments:
//      rp: RemoteProcStruct that maintains the inQ
void startRPPTask(RemoteProcStruct* rps);

// Sends a value to
//Arguments:
void sendValue(unsigned long value, unsigned char type);

// Sends a string to
//Arguments:
void sendString(const char* string);


void sendBurstData(unsigned long timestamp, float* a, float* b, float* c,
		float* d, float* e, float* f, float* g, float* h, float* i,
		float* j, float* k, float* l, float* m, float* n, float* o, float* p);





#endif /* REMOTEPROCPRINT_H_ */
