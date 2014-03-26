################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/SPI.c \
../src/adc_dac.c \
../src/amp.c \
../src/encoder.c \
../src/freertos_blink_led_semaphore.c \
../src/gpio.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/SPI.o \
./src/adc_dac.o \
./src/amp.o \
./src/encoder.o \
./src/freertos_blink_led_semaphore.o \
./src/gpio.o 

C_DEPS += \
./src/SPI.d \
./src/adc_dac.d \
./src/amp.d \
./src/encoder.d \
./src/freertos_blink_led_semaphore.d \
./src/gpio.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I/home/chris/Gen-3/Gen-3.sdk/SDK/SDK_Export/freertos_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


