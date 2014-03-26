################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/AXI_SPI.c \
../src/amp.c \
../src/gpio.c \
../src/main.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/AXI_SPI.o \
./src/amp.o \
./src/gpio.o \
./src/main.o 

C_DEPS += \
./src/AXI_SPI.d \
./src/amp.d \
./src/gpio.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../freertos_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


