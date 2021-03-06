#include "encoder.h"
#include "sleep.h"

void initEncoder(target_t enc){
   // clear counter
   writeSPI(SPI_MODE_ENCODER_8, CLR_CNTR, enc);
   // write to MDR0 register the following:
   // QUADRX4: X4 quadrature mode (four counts per quadrature cycle)
   // FREE_RUN: run the counter without any limits
   // DISABLE_INDX: index_disabled
   // FILTER_2: filter clock frequency division factor 2
   writeSPI(SPI_MODE_ENCODER_16, (WRITE_MDR0 << 8) | QUADRX4|FREE_RUN|DISABLE_INDX|FILTER_2, enc);
   // write to MDR1 register the following:
   // NO_FLAGS: turn off flags
   // BYTE_2: counter will be in two byte mode
   // EN_CNTR: counting enabled
   writeSPI(SPI_MODE_ENCODER_16, (WRITE_MDR1 << 8) | NO_FLAGS|BYTE_2|EN_CNTR, enc);
}

int encoderRead(target_t enc){
    // initialize SPI to 32-bits mode and encoder chip select

	// read SPI, note this is a 32 bit mode and READ_CNTR need to be sent first
    // that is why it is shifted by 24 bits. Thus, the following two bytes will
    // contain the 2-bytes counter
    int value =  readSPI(SPI_MODE_ENCODER_32, (READ_CNTR << 24), enc);
    // get the 2-bytes counter
    value &= ~(0xFF0000FF);
    value = (value >> 8);
    //if (value&0x8000) value +=0xFFFF0000;
    return value;
}
