#include "adc_dac.h"
#include "xil_printf.h"

int writeDAC(float voltage){
    float vref = 3.3;
    short hex;
    //xil_printf("\nValue2 = %f", voltage);
    // saturate voltage at -10V and +10V
    if(voltage > 10){
        voltage = 10;
    }else if(voltage < -10){
        voltage = -10;
    }
    //-------------------------------------------------

    // scale voltage from -10V --- +10V to 0V --- +3.3V
    voltage /= 6.0; // gain of op amp
    voltage += 1.65; // offset voltage;
    if(voltage > 3.2){
        voltage = 3.2;
    }else if(voltage <0){
        voltage = 0;
    }
    //-------------------------------------------------

    // convert voltage to hex
    hex = (voltage/vref) * 4096;

    hex |= DAC_CONFIG_BITS; // add configuration bits
    //-------------------------------------------------

    //xil_printf("\nDAC Value = %x", hex);
    writeSPI(SPI_MODE_DAC_16, hex, DAC); // write to DAC and change DAC chip select
    return (hex & (~0xF000));
}

float readADC(){
    float vref = 3.3;
    float voltage;
    unsigned int hex;
    // read the ADC
    hex = readSPI(SPI_MODE_ADC_32, ADC_CONFIG_BITS, ADC); // read the ADC and change ADC chip select
    //-------------------------------------------------
    //xil_printf("\n\nADC Value = %x", hex);
    // convert hex to voltage
    hex &= 0x00000FFF;  // clear configByte and other garbage
    //xil_printf("\nValue = %x", hex);
    //xil_printf("\nValue = %d", hex);
    voltage  = vref * hex / (4096.0);
    //-------------------------------------------------

    // scale voltage from 0V --- +3.3V to -10V --- +10V
    voltage -= 1.65; // offset voltage;
    voltage *= 6.0; // gain of op amp
    //-------------------------------------------------
    return voltage;
}
