################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/AXI_GPIO.c \
../src/AXI_SPI.c \
../src/PlantControl.c \
../src/RemoteProcPrint.c \
../src/adc_dac.c \
../src/amp.c \
../src/encoder.c \
../src/main.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/AXI_GPIO.o \
./src/AXI_SPI.o \
./src/PlantControl.o \
./src/RemoteProcPrint.o \
./src/adc_dac.o \
./src/amp.o \
./src/encoder.o \
./src/main.o 

C_DEPS += \
./src/AXI_GPIO.d \
./src/AXI_SPI.d \
./src/PlantControl.d \
./src/RemoteProcPrint.d \
./src/adc_dac.d \
./src/amp.d \
./src/encoder.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../freertos_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


