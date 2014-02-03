`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0}" *) 
module system
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
    SPI1_MISO_I,
    SPI1_MISO_O,
    SPI1_MISO_T,
    SPI1_MOSI_I,
    SPI1_MOSI_O,
    SPI1_MOSI_T,
    SPI1_SCLK_I,
    SPI1_SCLK_O,
    SPI1_SCLK_T,
    SPI1_SS1_O,
    SPI1_SS2_O,
    SPI1_SS_I,
    SPI1_SS_O,
    SPI1_SS_T);
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
  input SPI1_MISO_I;
  output SPI1_MISO_O;
  output SPI1_MISO_T;
  input SPI1_MOSI_I;
  output SPI1_MOSI_O;
  output SPI1_MOSI_T;
  input SPI1_SCLK_I;
  output SPI1_SCLK_O;
  output SPI1_SCLK_T;
  output SPI1_SS1_O;
  output SPI1_SS2_O;
  input SPI1_SS_I;
  output SPI1_SS_O;
  output SPI1_SS_T;

  wire GND_1;
  wire [14:0]processing_system7_1_ddr_ADDR;
  wire [2:0]processing_system7_1_ddr_BA;
  wire processing_system7_1_ddr_CAS_N;
  wire processing_system7_1_ddr_CKE;
  wire processing_system7_1_ddr_CK_N;
  wire processing_system7_1_ddr_CK_P;
  wire processing_system7_1_ddr_CS_N;
  wire [3:0]processing_system7_1_ddr_DM;
  wire [31:0]processing_system7_1_ddr_DQ;
  wire [3:0]processing_system7_1_ddr_DQS_N;
  wire [3:0]processing_system7_1_ddr_DQS_P;
  wire processing_system7_1_ddr_ODT;
  wire processing_system7_1_ddr_RAS_N;
  wire processing_system7_1_ddr_RESET_N;
  wire processing_system7_1_ddr_WE_N;
  wire processing_system7_1_fclk_clk0;
  wire processing_system7_1_fixed_io_DDR_VRN;
  wire processing_system7_1_fixed_io_DDR_VRP;
  wire [53:0]processing_system7_1_fixed_io_MIO;
  wire processing_system7_1_fixed_io_PS_CLK;
  wire processing_system7_1_fixed_io_PS_PORB;
  wire processing_system7_1_fixed_io_PS_SRSTB;
  wire [3:0]processing_system7_1_gpio_o;
  wire processing_system7_1_spi1_miso_o;
  wire processing_system7_1_spi1_miso_t;
  wire processing_system7_1_spi1_mosi_o;
  wire processing_system7_1_spi1_mosi_t;
  wire processing_system7_1_spi1_sclk_o;
  wire processing_system7_1_spi1_sclk_t;
  wire processing_system7_1_spi1_ss1_o;
  wire processing_system7_1_spi1_ss2_o;
  wire processing_system7_1_spi1_ss_o;
  wire processing_system7_1_spi1_ss_t;
  wire spi1_miso_i_1;
  wire spi1_mosi_i_1;
  wire spi1_sclk_i_1;
  wire spi1_ss_i_1;

  assign GPIO_O[3:0] = processing_system7_1_gpio_o;
  assign SPI1_MISO_O = processing_system7_1_spi1_miso_o;
  assign SPI1_MISO_T = processing_system7_1_spi1_miso_t;
  assign SPI1_MOSI_O = processing_system7_1_spi1_mosi_o;
  assign SPI1_MOSI_T = processing_system7_1_spi1_mosi_t;
  assign SPI1_SCLK_O = processing_system7_1_spi1_sclk_o;
  assign SPI1_SCLK_T = processing_system7_1_spi1_sclk_t;
  assign SPI1_SS1_O = processing_system7_1_spi1_ss1_o;
  assign SPI1_SS2_O = processing_system7_1_spi1_ss2_o;
  assign SPI1_SS_O = processing_system7_1_spi1_ss_o;
  assign SPI1_SS_T = processing_system7_1_spi1_ss_t;
  assign spi1_miso_i_1 = SPI1_MISO_I;
  assign spi1_mosi_i_1 = SPI1_MOSI_I;
  assign spi1_sclk_i_1 = SPI1_SCLK_I;
  assign spi1_ss_i_1 = SPI1_SS_I;
GND GND
       (.G(GND_1));
system_processing_system7_1_0 processing_system7_1
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_1_fclk_clk0),
        .GPIO_I({GND_1,GND_1,GND_1,GND_1}),
        .GPIO_O(processing_system7_1_gpio_o),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_1_fclk_clk0),
        .M_AXI_GP0_ARREADY(GND_1),
        .M_AXI_GP0_AWREADY(GND_1),
        .M_AXI_GP0_BID({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .M_AXI_GP0_BRESP({GND_1,GND_1}),
        .M_AXI_GP0_BVALID(GND_1),
        .M_AXI_GP0_RDATA({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .M_AXI_GP0_RID({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .M_AXI_GP0_RLAST(GND_1),
        .M_AXI_GP0_RRESP({GND_1,GND_1}),
        .M_AXI_GP0_RVALID(GND_1),
        .M_AXI_GP0_WREADY(GND_1),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SPI1_MISO_I(spi1_miso_i_1),
        .SPI1_MISO_O(processing_system7_1_spi1_miso_o),
        .SPI1_MISO_T(processing_system7_1_spi1_miso_t),
        .SPI1_MOSI_I(spi1_mosi_i_1),
        .SPI1_MOSI_O(processing_system7_1_spi1_mosi_o),
        .SPI1_MOSI_T(processing_system7_1_spi1_mosi_t),
        .SPI1_SCLK_I(spi1_sclk_i_1),
        .SPI1_SCLK_O(processing_system7_1_spi1_sclk_o),
        .SPI1_SCLK_T(processing_system7_1_spi1_sclk_t),
        .SPI1_SS1_O(processing_system7_1_spi1_ss1_o),
        .SPI1_SS2_O(processing_system7_1_spi1_ss2_o),
        .SPI1_SS_I(spi1_ss_i_1),
        .SPI1_SS_O(processing_system7_1_spi1_ss_o),
        .SPI1_SS_T(processing_system7_1_spi1_ss_t),
        .TTC0_CLK0_IN(GND_1),
        .TTC0_CLK1_IN(GND_1),
        .TTC0_CLK2_IN(GND_1));
endmodule
