################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lib/main.c 

OBJS += \
./src/lib/main.o 

C_DEPS += \
./src/lib/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/lib/main.o: ../src/lib/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xB -c -I../Inc -I"D:/exam_arm/stm32f103_fw/src" -I"D:/exam_arm/stm32f103_fw/src/ap" -I"D:/exam_arm/stm32f103_fw/src/bsp" -I"D:/exam_arm/stm32f103_fw/src/hw" -I"D:/exam_arm/stm32f103_fw/src/lib" -I"D:/exam_arm/stm32f103_fw/src/common" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Drivers/CMSIS/Include" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/App" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/exam_arm/stm32f103_fw/src/lib/cube_f103/USB_DEVICE/Target" -I"D:/exam_arm/stm32f103_fw/src/common/core" -I"D:/exam_arm/stm32f103_fw/src/hw/driver" -I"D:/exam_arm/stm32f103_fw/src/common/hw/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/lib/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

