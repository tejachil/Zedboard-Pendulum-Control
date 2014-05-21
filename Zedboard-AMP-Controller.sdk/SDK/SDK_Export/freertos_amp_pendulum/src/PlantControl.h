/*
 * PlantControl.h
 *
 *  Created on: Apr 15, 2014
 *      Author: chris
 */

#ifndef PLANTCONTROL_H_
#define PLANTCONTROL_H_



#define configTIMER_TASK_PRIORITY   ( configMAX_PRIORITIES - 1 )
#define prediction_TASK_PRIORITY	( tskIDLE_PRIORITY + 1)
#define pi 							((float)3.14125926535)


// Creates the Plant Control Timer
// Arguments:
//      TODO
void startPlantControlTimer();

// Creates the Prediction Task
// Arguments:
//      TODO
void startPredictionTask();


#endif /* PLANTCONTROL_H_ */
