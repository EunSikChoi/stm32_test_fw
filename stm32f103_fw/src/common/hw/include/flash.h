/*
 * flash.h
 *
 *  Created on: 2021. 2. 25.
 *      Author: 82109
 */

#ifndef SRC_HW_FLASH_H_
#define SRC_HW_FLASH_H_

#include "hw_def.h"

#ifdef _USE_HW_FLASH

bool flashInit(void);
bool flashErase(uint32_t addr, uint32_t length);
bool flashWrite(uint32_t addr, uint8_t *p_data, uint32_t length);
bool flashRead(uint32_t addr, uint8_t *p_data, uint32_t length);


#endif

#endif /* SRC_HW_FLASH_H_ */
