`timescale 1 ps / 1 ps

module system_wrapper
   (AXI_SPI0_MISO_I,
    AXI_SPI0_MISO_O,
    AXI_SPI0_MISO_T,
    AXI_SPI0_MOSI_I,
    AXI_SPI0_MOSI_O,
    AXI_SPI0_MOSI_T,
    AXI_SPI0_SCLK_I,
    AXI_SPI0_SCLK_O,
    AXI_SPI0_SCLK_T,
    AXI_SPI0_SS_I,
    AXI_SPI0_SS_O,
    AXI_SPI0_SS_T,
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
  input AXI_SPI0_MISO_I;
  output AXI_SPI0_MISO_O;
  output AXI_SPI0_MISO_T;
  input AXI_SPI0_MOSI_I;
  output AXI_SPI0_MOSI_O;
  output AXI_SPI0_MOSI_T;
  input AXI_SPI0_SCLK_I;
  output AXI_SPI0_SCLK_O;
  output AXI_SPI0_SCLK_T;
  input [3:0]AXI_SPI0_SS_I;
  output [3:0]AXI_SPI0_SS_O;
  output AXI_SPI0_SS_T;
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

  wire AXI_SPI0_MISO_I;
  wire AXI_SPI0_MISO_O;
  wire AXI_SPI0_MISO_T;
  wire AXI_SPI0_MOSI_I;
  wire AXI_SPI0_MOSI_O;
  wire AXI_SPI0_MOSI_T;
  wire AXI_SPI0_SCLK_I;
  wire AXI_SPI0_SCLK_O;
  wire AXI_SPI0_SCLK_T;
  wire [3:0]AXI_SPI0_SS_I;
  wire [3:0]AXI_SPI0_SS_O;
  wire AXI_SPI0_SS_T;
  wire [14:0]DDR_addr;
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
  wire [7:0]leds_8bits_tri_o;
  wire [7:0]sws_8bits_tri_i;

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
