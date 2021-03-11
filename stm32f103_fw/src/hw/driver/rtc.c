/*
 * rtc.c
 *
 *  Created on: Mar 2, 2021
 *      Author: 82109
 */


#include "rtc.h"



static RTC_HandleTypeDef hrtc;

bool rtcInit(void)
{
  bool ret = true;


  hrtc.Instance           = RTC;
  hrtc.Init.AsynchPrediv  = RTC_AUTO_1_SECOND;
  hrtc.Init.OutPut        = RTC_OUTPUTSOURCE_NONE;

  if (HAL_RTC_Init(&hrtc) != HAL_OK)
  {
    Error_Handler();
  }

  return ret;

  }


void rtcbackupRegWrite(uint32_t index , uint32_t data)
{
  HAL_RTCEx_BKUPWrite(&hrtc, index, data);
}

uint32_t rtcbackupRegRead(uint32_t index)
{

 return HAL_RTCEx_BKUPRead(&hrtc, index);

}



void HAL_RTC_MspInit(RTC_HandleTypeDef* rtcHandle)
{

  if(rtcHandle->Instance==RTC)
  {
  /* USER CODE BEGIN RTC_MspInit 0 */

  /* USER CODE END RTC_MspInit 0 */
    HAL_PWR_EnableBkUpAccess();
    /* Enable BKP CLK enable for backup registers */
    __HAL_RCC_BKP_CLK_ENABLE();
    /* RTC clock enable */
    __HAL_RCC_RTC_ENABLE();
  /* USER CODE BEGIN RTC_MspInit 1 */

  /* USER CODE END RTC_MspInit 1 */
  }
}

void HAL_RTC_MspDeInit(RTC_HandleTypeDef* rtcHandle)
{

  if(rtcHandle->Instance==RTC)
  {
  /* USER CODE BEGIN RTC_MspDeInit 0 */

  /* USER CODE END RTC_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_RTC_DISABLE();
  /* USER CODE BEGIN RTC_MspDeInit 1 */

  /* USER CODE END RTC_MspDeInit 1 */
  }
}
