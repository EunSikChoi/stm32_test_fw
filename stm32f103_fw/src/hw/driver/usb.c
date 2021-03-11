/*
 * usb.c
 *
 *  Created on: 2021. 3. 2.
 *      Author: 82109
 */


#include "usb.h"
#include "usb_device.h"




bool usbInit(void)
{

  bool ret = true;

  GPIO_InitTypeDef GPIO_InitStruct = {0};

  GPIO_InitStruct.Pin   = GPIO_PIN_12;
  GPIO_InitStruct.Mode  = GPIO_MODE_OUTPUT_PP;  //OUTPUT
  GPIO_InitStruct.Pull  = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_12, GPIO_PIN_RESET); //SET LOW
  delay(100);
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_12, GPIO_PIN_SET);//SET HIGH

  GPIO_InitStruct.Mode  = GPIO_MODE_INPUT;//INPUT
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  MX_USB_DEVICE_Init();    //



  return ret;

}




