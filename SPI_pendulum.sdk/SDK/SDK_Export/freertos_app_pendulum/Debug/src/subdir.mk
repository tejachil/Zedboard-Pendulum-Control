################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/SPI.c \
../src/adc_dac.c \
../src/encoder.c \
../src/main.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/SPI.o \
./src/adc_dac.o \
./src/encoder.o \
./src/main.o 

C_DEPS += \
./src/SPI.d \
./src/adc_dac.d \
./src/encoder.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../freertos_zynq_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


