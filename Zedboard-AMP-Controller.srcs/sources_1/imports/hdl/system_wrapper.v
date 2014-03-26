`timescale 1 ps / 1 ps

module system_wrapper
   (MOSI,
    MISO,
    SCLK,
    SS0,
    SS1,
    SS2,
    SS3,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    leds_8bits_tri_o,
    sws_8bits_tri_i);
    
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [7:0]leds_8bits_tri_o;
  input [7:0]sws_8bits_tri_i;
  
  //Outputs of SPI (At Boundary)
  output MOSI;
  input MISO; 
  output SCLK;
  output SS0;
  output SS1;
  output SS2;
  output SS3;


  /*wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  */
  //wire [7:0]leds_8bits_tri_o;
  //wire [7:0]sws_8bits_tri_i;
  
  
  //Redundant wires (SPI SIGNALS)
  //wire AXI_SPI0_MISO_O;
  //wire AXI_SPI0_MOSI_I;
  //wire AXI_SPI0_SCLK_I;
  //wire [2:0]AXI_SPI0_SS_I;
  //wire AXI_SPI0_MISO_T;
  
  //Assignments to redundant wires (To make it function as a MASTER)
  //assign AXI_SPI0_MOSI_I = 1'b0;
  //assign AXI_SPI0_SCLK_I = 1'b0;
  //assign AXI_SPI0_SS_I[0] = 1'b1;


  wire AXI_SPI0_MISO_I;
  wire AXI_SPI0_MOSI_O;
  wire AXI_SPI0_MOSI_T;
  wire AXI_SPI0_SCLK_O;
  wire AXI_SPI0_SCLK_T;
  wire [3:0]AXI_SPI0_SS_O;
  wire AXI_SPI0_SS_T;
  
  //Gate Level Description (Refer Zynq TRM for diagram)
  bufif0 U1(SCLK, AXI_SPI0_SCLK_O, AXI_SPI0_SCLK_T); 
  bufif0 U2(MOSI, AXI_SPI0_MOSI_O, AXI_SPI0_MOSI_T);
  bufif0 U3(SS0, AXI_SPI0_SS_O[0], AXI_SPI0_SS_T); 
  bufif0 U4(SS1, AXI_SPI0_SS_O[1], AXI_SPI0_SS_T);
  bufif0 U5(SS2, AXI_SPI0_SS_O[2], AXI_SPI0_SS_T);
  bufif0 U6(SS3, AXI_SPI0_SS_O[3], AXI_SPI0_SS_T);
  buf U7(AXI_SPI0_MISO_I, MISO);


system system_i
       (.AXI_SPI0_MISO_I(AXI_SPI0_MISO_I),
        .AXI_SPI0_MISO_O(AXI_SPI0_MISO_O),
        .AXI_SPI0_MISO_T(AXI_SPI0_MISO_T),
        .AXI_SPI0_MOSI_I(AXI_SPI0_MOSI_I),
        .AXI_SPI0_MOSI_O(AXI_SPI0_MOSI_O),
        .AXI_SPI0_MOSI_T(AXI_SPI0_MOSI_T),
        .AXI_SPI0_SCLK_I(AXI_SPI0_SCLK_I),
        .AXI_SPI0_SCLK_O(AXI_SPI0_SCLK_O),
        .AXI_SPI0_SCLK_T(AXI_SPI0_SCLK_T),
        .AXI_SPI0_SS_I(AXI_SPI0_SS_I),
        .AXI_SPI0_SS_O(AXI_SPI0_SS_O),
        .AXI_SPI0_SS_T(AXI_SPI0_SS_T),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .leds_8bits_tri_o(leds_8bits_tri_o),
        .sws_8bits_tri_i(sws_8bits_tri_i));
endmodule
