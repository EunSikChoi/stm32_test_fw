/*
 * led.h
 *
 *  Created on: Mar 3, 2021
 *      Author: 82109
 */

#ifndef SRC_COMMON_HW_INCLUDE_LED_H_
#define SRC_COMMON_HW_INCLUDE_LED_H_



#include "hw_def.h"


#ifdef _USE_HW_LED


bool ledInit(void);

#define LED_PC13_Pin GPIO_PIN_13
#define LED_PC13_GPIO_Port GPIOC

#endif


#endif /* SRC_COMMON_HW_INCLUDE_LED_H_ */
