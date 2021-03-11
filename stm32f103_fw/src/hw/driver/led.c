/*
 * led.c
 *
 *  Created on: Mar 3, 2021
 *      Author: 82109
 */


#include "led.h"
#include "cli.h"


#ifdef _USE_HW_CLI

static void cliLed(cli_args_t *args);

#endif

bool ledInit(void)
{
  bool ret = true;

  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();


  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LED_PC13_GPIO_Port, LED_PC13_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : PtPin */
  GPIO_InitStruct.Pin = LED_PC13_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_OD;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LED_PC13_GPIO_Port, &GPIO_InitStruct);



#ifdef _USE_HW_CLI

cliAdd("led",cliLed);

#endif


  return ret;

}



#ifdef _USE_HW_CLI



void cliLed(cli_args_t *args)
{

  bool ret = false;

  if(args->argc == 3 && args->isStr(0, "toggle") == true) //여기서 설정한 toggle 과 동일 문자가 입력하면 아래 Loop가 실행됨//
  {
    uint8_t led_ch;
    uint32_t toggle_time;
    uint32_t pre_time;

    toggle_time   = (uint32_t)args->getData(2);

    pre_time = millis();

    while(cliKeepLoop()) // 다음 통신 오기전까지 일시적으로만 도는 루프//
    {
      if(millis()-pre_time >= toggle_time)
      {
        pre_time = millis();
        HAL_GPIO_TogglePin(LED_PC13_GPIO_Port , LED_PC13_Pin);

      }
    }

    ret = true;

  }

  if(ret != true )
  {
    cliPrintf("led toggle ch[1] time_ms\n");
  }



}



#endif
