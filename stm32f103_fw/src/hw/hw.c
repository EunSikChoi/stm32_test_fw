/*
 * hw.c
 *
 *  Created on: Feb 16, 2021
 *      Author: 82109
 */




#include "hw.h"
#include "ap.h"


void hwInit(void)
{

	bspInit();

  cliInit();

  rtcInit();
  resetInit();

  ledInit();
	usbInit();

	uartInit();

	flashInit();



}
