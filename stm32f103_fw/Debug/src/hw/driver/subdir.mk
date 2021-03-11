################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hw/driver/cli.c \
../src/hw/driver/flash.c \
../src/hw/driver/led.c \
../src/hw/driver/reset.c \
../src/hw/driver/rtc.c \
../src/hw/driver/uart.c \
../src/hw/driver/usb.c 

OBJS += \
./src/hw/driver/cli.o \
./src/hw/driver/flash.o \
./src/hw/driver/led.o \
./src/hw/driver/reset.o \
./src/hw/driver/rtc.o \
./src/hw/driver/uart.o \
./src/hw/driver/usb.o 

C_DEPS += \
./src/hw/driver/cli.d \
./src/hw/driver/flash.d \
./src/hw/driver/led.d \
./src/hw/driver/reset.d \
./src/hw/driver/rtc.d \
./src/hw/driver/uart.d \
./src/hw/driver/usb.d 


# Each subdirectory must supply rules for building sources it contributes
src/hw/driver/cli.o: ../src/hw/driver/cli.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xB -c -I../Inc -I"D:/exam_arm/stm32f103_fw/src" -I"D:/exam_arm/stm32f103_fw/src/ap" -I"D:/exam_arm/stm32f103_fw/src/bsp" -I"D:/exam_arm/stm32f103_fw/src/hw" -I"D:/exam_arm/stm32f103_fw/src/lib" -I"D:/exam_arm/stm32f103_fw/src/common" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/App" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/Target" -I"D:/exam_arm/stm32f103_fw/src/common/core" -I"D:/exam_arm/stm32f103_fw/src/hw/driver" -I"D:/exam_arm/stm32f103_fw/src/common/hw/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/cli.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/hw/driver/flash.o: ../src/hw/driver/flash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xB -c -I../Inc -I"D:/exam_arm/stm32f103_fw/src" -I"D:/exam_arm/stm32f103_fw/src/ap" -I"D:/exam_arm/stm32f103_fw/src/bsp" -I"D:/exam_arm/stm32f103_fw/src/hw" -I"D:/exam_arm/stm32f103_fw/src/lib" -I"D:/exam_arm/stm32f103_fw/src/common" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/App" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/Target" -I"D:/exam_arm/stm32f103_fw/src/common/core" -I"D:/exam_arm/stm32f103_fw/src/hw/driver" -I"D:/exam_arm/stm32f103_fw/src/common/hw/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/flash.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/hw/driver/led.o: ../src/hw/driver/led.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xB -c -I../Inc -I"D:/exam_arm/stm32f103_fw/src" -I"D:/exam_arm/stm32f103_fw/src/ap" -I"D:/exam_arm/stm32f103_fw/src/bsp" -I"D:/exam_arm/stm32f103_fw/src/hw" -I"D:/exam_arm/stm32f103_fw/src/lib" -I"D:/exam_arm/stm32f103_fw/src/common" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/App" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/Target" -I"D:/exam_arm/stm32f103_fw/src/common/core" -I"D:/exam_arm/stm32f103_fw/src/hw/driver" -I"D:/exam_arm/stm32f103_fw/src/common/hw/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/led.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/hw/driver/reset.o: ../src/hw/driver/reset.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xB -c -I../Inc -I"D:/exam_arm/stm32f103_fw/src" -I"D:/exam_arm/stm32f103_fw/src/ap" -I"D:/exam_arm/stm32f103_fw/src/bsp" -I"D:/exam_arm/stm32f103_fw/src/hw" -I"D:/exam_arm/stm32f103_fw/src/lib" -I"D:/exam_arm/stm32f103_fw/src/common" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/App" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/Target" -I"D:/exam_arm/stm32f103_fw/src/common/core" -I"D:/exam_arm/stm32f103_fw/src/hw/driver" -I"D:/exam_arm/stm32f103_fw/src/common/hw/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/reset.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/hw/driver/rtc.o: ../src/hw/driver/rtc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xB -c -I../Inc -I"D:/exam_arm/stm32f103_fw/src" -I"D:/exam_arm/stm32f103_fw/src/ap" -I"D:/exam_arm/stm32f103_fw/src/bsp" -I"D:/exam_arm/stm32f103_fw/src/hw" -I"D:/exam_arm/stm32f103_fw/src/lib" -I"D:/exam_arm/stm32f103_fw/src/common" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/App" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/Target" -I"D:/exam_arm/stm32f103_fw/src/common/core" -I"D:/exam_arm/stm32f103_fw/src/hw/driver" -I"D:/exam_arm/stm32f103_fw/src/common/hw/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/rtc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/hw/driver/uart.o: ../src/hw/driver/uart.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xB -c -I../Inc -I"D:/exam_arm/stm32f103_fw/src" -I"D:/exam_arm/stm32f103_fw/src/ap" -I"D:/exam_arm/stm32f103_fw/src/bsp" -I"D:/exam_arm/stm32f103_fw/src/hw" -I"D:/exam_arm/stm32f103_fw/src/lib" -I"D:/exam_arm/stm32f103_fw/src/common" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/App" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/Target" -I"D:/exam_arm/stm32f103_fw/src/common/core" -I"D:/exam_arm/stm32f103_fw/src/hw/driver" -I"D:/exam_arm/stm32f103_fw/src/common/hw/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/uart.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/hw/driver/usb.o: ../src/hw/driver/usb.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xB -c -I../Inc -I"D:/exam_arm/stm32f103_fw/src" -I"D:/exam_arm/stm32f103_fw/src/ap" -I"D:/exam_arm/stm32f103_fw/src/bsp" -I"D:/exam_arm/stm32f103_fw/src/hw" -I"D:/exam_arm/stm32f103_fw/src/lib" -I"D:/exam_arm/stm32f103_fw/src/common" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/App" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/Target" -I"D:/exam_arm/stm32f103_fw/src/common/core" -I"D:/exam_arm/stm32f103_fw/src/hw/driver" -I"D:/exam_arm/stm32f103_fw/src/common/hw/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/usb.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

