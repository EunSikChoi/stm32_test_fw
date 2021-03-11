/*
 * ap.c
 *
 *  Created on: Feb 16, 2021
 *      Author: 82109
 */


#include "ap.h"


void apInit(void)
{
	  uartOpen(_DEF_UART1, 57600);  //USB    // COM3
	  uartOpen(_DEF_UART2, 57600);  //UART  // COM13

	  cliOpen(_DEF_UART1, 57600);
	  cliOpenLog(_DEF_UART2, 57600);  // for Test
}

extern uint32_t sof_cnt ;

#define FLASH_USER_START_ADDR (uint32_t)0x0800EFEA
#define FLASH_USER_LENGTH 32

void apMain(void)
{

    uint32_t pre_time;
    uint32_t led_blink_time = 1000;

    pre_time = millis();

    if(resetGetCount() >= 2)
    {
      led_blink_time = 200;
    }

	while(1)
	{

	      if(millis()-pre_time >= 1000)
	      {
	        pre_time = millis();
	       // HAL_GPIO_TogglePin(LED_PC13_GPIO_Port , LED_PC13_Pin);

	       // uartPrintf(_DEF_UART1, "reset Count %d\n", resetGetCount());

	       // uartPrintf(_DEF_UART2, "SOF %d\n", resetGetCount());
	        // CDC_Transmit_FS("test1\n", 7);
	       // logPrintf("logprintf test %d\n", (int) millis());
	      }

	      if (uartAvailable(_DEF_UART2) > 0)
	          {
	            uint8_t rx_data;
	            rx_data = uartRead(_DEF_UART2);

	            uartPrintf(_DEF_UART2, "Rx : 0x%X\n", rx_data);
	          }

	          cliMain();

#if 0
	      if(uartAvailable(_DEF_UART1) > 0)
	      {
	        uint8_t rx_data;

	        rx_data = uartRead(_DEF_UART1);


	        if(rx_data == '1')
	        {
	           uint8_t buf[32];

	           logPrintf("Read...\n");

	           flashRead(FLASH_USER_START_ADDR , buf, FLASH_USER_LENGTH);
	           //flashRead(0x8000000 + (60*1024) , buf, 32);
	           for ( int i = 0; i < 32 ; i++)
	           {
	            // logPrintf("0x%X : 0x%X\n", 0x8000000 + (60*1024) + i, buf[i]);
	             logPrintf("0x%X : 0x%X\n", (int32_t)FLASH_USER_START_ADDR + i, buf[i]);
	           }

	           rx_data = 0;

	        }
	        if(rx_data == '2')
	        {
	          logPrintf("Erase...\n");

	          if(flashErase(FLASH_USER_START_ADDR , FLASH_USER_LENGTH) == true)
	          //if(flashErase(0x8000000 + (60*1024) , 32) == true)
	          {
	            logPrintf("Erase OK\n");
	          }
	          else
	          {
	            logPrintf("Erase Fail\n");
	          }

	          rx_data = 0;

	        }
	        if (rx_data == '3')
	        {
	          uint8_t buf[32];

	          for (int i=0; i<32; i++)
	          {
	            buf[i] = i;
	          }

	          logPrintf("Write...\n");

	          if (flashWrite(FLASH_USER_START_ADDR, buf, FLASH_USER_LENGTH) == true)
	          //if (flashWrite(0x8000000 + (60*1024), buf, 32) == true)
	          {
	            logPrintf("Wrtie OK\n");
	          }
	          else
	          {
	            logPrintf("Write Fail\n");
	          }

	          rx_data = 0;
	        }


	      }


//#if 0
	      if(uartAvailable(_DEF_UART1) > 0)
	      {
	        uint8_t rx_data;

	        rx_data = uartRead(_DEF_UART1);
	        uartPrintf(_DEF_UART1, "RxData : %c 0x%x\n", rx_data, rx_data);
	      }


	      if(uartAvailable(_DEF_UART2) > 0)
	      {
	         uint8_t rx_data;

	         rx_data = uartRead(_DEF_UART2);
	         uartPrintf(_DEF_UART2, "UART2_DMA Rx: %c %x\n", rx_data, rx_data);
	      }


	      if(uartGetBaud(_DEF_UART1) != pre_baud)
	      {
	        pre_baud = uartGetBaud(_DEF_UART1);
	        uartPrintf(_DEF_UART1, "ChangedBaud : %d\n", uartGetBaud(_DEF_UART1));
	      }

#endif

	}

}
