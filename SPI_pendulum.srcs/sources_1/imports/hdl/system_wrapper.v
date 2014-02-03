/*
 * File:   system_wrapper.v
 * Author: Vivek Gopal
 * Description: Top level file for inverted pendulum interface
 * Created: September 21, 2013
 */


`timescale 1 ps / 1 ps
// lib IP_Integrator_Lib
module system_wrapper
   (DDR_addr,
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
    GPIO_O,
    MOSI,
    MISO,
    SCLK,
    SS0,
    SS1,
    SS2
    );
    
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
  output [3:0]GPIO_O;
  
  //Redundant wires (SPI SIGNALS)  
  wire SPI1_MISO_O;
  wire SPI1_MOSI_I;
  wire SPI1_SCLK_I;
  wire SPI1_SS_I;
  wire SPI1_MISO_T;
  
  //Assignments to redundant wires (To make it function as a MASTER)
  assign SPI1_MOSI_I = 1'b0;
  assign SPI1_SCLK_I = 1'b0;
  assign SPI1_SS_I = 1'b1;
  
  //SPI communication wires (Intermediate Wires)(Master Mode)        
  wire SPI1_MISO_I;
  wire SPI1_MOSI_O;
  wire SPI1_MOSI_T;
  wire SPI1_SCLK_O;
  wire SPI1_SCLK_T;
  wire SPI1_SS1_O;
  wire SPI1_SS2_O;
  wire SPI1_SS_O;
  wire SPI1_SS_T;

  wire [3:0]GPIO_O;

  //Outputs of SPI (At Boundary)
  output MOSI;
  input MISO; 
  output SCLK;
  output SS0;
  output SS1;
  output SS2;

  //Gate Level Description (Refer Zynq TRM for diagram)
  bufif0 U1(SCLK, SPI1_SCLK_O, SPI1_SCLK_T); 
  bufif0 U2(MOSI, SPI1_MOSI_O, SPI1_MOSI_T);
  bufif0 U3(SS0, SPI1_SS_O, SPI1_SS_T);
  bufif0 U4(SS1, SPI1_SS1_O, SPI1_SS_T);
  bufif0 U5(SS2, SPI1_SS2_O, SPI1_SS_T);   
  buf U6(SPI1_MISO_I, MISO);
    
system system_i
       (.DDR_addr(DDR_addr),
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
        .GPIO_O(GPIO_O),
        .SPI1_MISO_I(SPI1_MISO_I),
        .SPI1_MISO_O(SPI1_MISO_O),
        .SPI1_MISO_T(SPI1_MISO_T),
        .SPI1_MOSI_I(SPI1_MOSI_I),
        .SPI1_MOSI_O(SPI1_MOSI_O),
        .SPI1_MOSI_T(SPI1_MOSI_T),
        .SPI1_SCLK_I(SPI1_SCLK_I),
        .SPI1_SCLK_O(SPI1_SCLK_O),
        .SPI1_SCLK_T(SPI1_SCLK_T),
        .SPI1_SS1_O(SPI1_SS1_O),
        .SPI1_SS2_O(SPI1_SS2_O),
        .SPI1_SS_I(SPI1_SS_I),
        .SPI1_SS_O(SPI1_SS_O),
        .SPI1_SS_T(SPI1_SS_T));
endmodule