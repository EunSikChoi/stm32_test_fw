/*
 * rtc.h
 *
 *  Created on: Mar 2, 2021
 *      Author: 82109
 */

#ifndef SRC_COMMON_HW_INCLUDE_RTC_H_
#define SRC_COMMON_HW_INCLUDE_RTC_H_




#include "hw_def.h"


#ifdef _USE_HW_RTC


uint32_t rtcbackupRegRead(uint32_t index );
void     rtcbackupRegWrite(uint32_t index , uint32_t data);
bool rtcInit(void);

#endif


#endif /* SRC_COMMON_HW_INCLUDE_RTC_H_ */
