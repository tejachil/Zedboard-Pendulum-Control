
[
 Attempting to get a license: %s
78*common2"
Implementation2default:defaultZ17-78
Q
Feature available: %s
81*common2"
Implementation2default:defaultZ17-81
…
+Loading parts and site information from %s
36*device2A
-/opt/Xilinx/Vivado/2013.4/data/parts/arch.xml2default:defaultZ21-36
’
!Parsing RTL primitives file [%s]
14*netlist2W
C/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-14
›
*Finished parsing RTL primitives file [%s]
11*netlist2W
C/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-11
5
Refreshing IP repositories
234*coregenZ19-234
>
"No user IP repositories specified
1154*coregenZ19-1704
u
"Loaded Vivado IP repository '%s'.
1332*coregen25
!/opt/Xilinx/Vivado/2013.4/data/ip2default:defaultZ19-2313
r
Command: %s
53*	vivadotcl2J
6synth_design -top system_wrapper -part xc7z020clg484-12default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
•
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347
…
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349
œ
%s*synth2Œ
xStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 789.680 ; gain = 169.047
2default:default
õ
synthesizing module '%s'638*oasys2"
system_wrapper2default:default2
k/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/imports/hdl/system_wrapper.v2default:default2
112default:default8@Z8-638
å
synthesizing module '%s'638*oasys2
system2default:default2{
e/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/hdl/system.v2default:default2
42default:default8@Z8-638
·
synthesizing module '%s'638*oasys2
GND2default:default2M
7/opt/Xilinx/Vivado/2013.4/scripts/rt/data/unisim_comp.v2default:default2
41762default:default8@Z8-638
ò
%done synthesizing module '%s' (%s#%s)256*oasys2
GND2default:default2
12default:default2
12default:default2M
7/opt/Xilinx/Vivado/2013.4/scripts/rt/data/unisim_comp.v2default:default2
41762default:default8@Z8-256
¹
synthesizing module '%s'638*oasys21
system_processing_system7_1_02default:default2¶
Ÿ/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/synth/system_processing_system7_1_0.v2default:default2
572default:default8@Z8-638
Ú
synthesizing module '%s'638*oasys2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
1532default:default8@Z8-638
f
%s*synth2W
C	Parameter C_USE_DEFAULT_ACP_USER_VAL bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_S_AXI_ACP_ARUSER_VAL bound to: 31 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_S_AXI_ACP_AWUSER_VAL bound to: 31 - type: integer 
2default:default
h
%s*synth2Y
E	Parameter C_M_AXI_GP0_THREAD_ID_WIDTH bound to: 12 - type: integer 
2default:default
h
%s*synth2Y
E	Parameter C_M_AXI_GP1_THREAD_ID_WIDTH bound to: 12 - type: integer 
2default:default
k
%s*synth2\
H	Parameter C_M_AXI_GP0_ENABLE_STATIC_REMAP bound to: 0 - type: integer 
2default:default
k
%s*synth2\
H	Parameter C_M_AXI_GP1_ENABLE_STATIC_REMAP bound to: 0 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_M_AXI_GP0_ID_WIDTH bound to: 12 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_M_AXI_GP1_ID_WIDTH bound to: 12 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_GP0_ID_WIDTH bound to: 6 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_GP1_ID_WIDTH bound to: 6 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_HP0_ID_WIDTH bound to: 6 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_HP1_ID_WIDTH bound to: 6 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_HP2_ID_WIDTH bound to: 6 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_HP3_ID_WIDTH bound to: 6 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_ACP_ID_WIDTH bound to: 3 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_S_AXI_HP0_DATA_WIDTH bound to: 64 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_S_AXI_HP1_DATA_WIDTH bound to: 64 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_S_AXI_HP2_DATA_WIDTH bound to: 64 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_S_AXI_HP3_DATA_WIDTH bound to: 64 - type: integer 
2default:default
e
%s*synth2V
B	Parameter C_INCLUDE_ACP_TRANS_CHECK bound to: 0 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_NUM_F2P_INTR_INPUTS bound to: 1 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_FCLK_CLK0_BUF bound to: true - type: string 
2default:default
^
%s*synth2O
;	Parameter C_FCLK_CLK1_BUF bound to: false - type: string 
2default:default
^
%s*synth2O
;	Parameter C_FCLK_CLK2_BUF bound to: false - type: string 
2default:default
^
%s*synth2O
;	Parameter C_FCLK_CLK3_BUF bound to: false - type: string 
2default:default
]
%s*synth2N
:	Parameter C_EMIO_GPIO_WIDTH bound to: 4 - type: integer 
2default:default
b
%s*synth2S
?	Parameter C_INCLUDE_TRACE_BUFFER bound to: 0 - type: integer 
2default:default
f
%s*synth2W
C	Parameter C_TRACE_BUFFER_FIFO_SIZE bound to: 128 - type: integer 
2default:default
g
%s*synth2X
D	Parameter C_TRACE_BUFFER_CLOCK_DELAY bound to: 12 - type: integer 
2default:default
h
%s*synth2Y
E	Parameter USE_TRACE_DATA_EDGE_DETECTOR bound to: 0 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_PS7_SI_REV bound to: PRODUCTION - type: string 
2default:default
[
%s*synth2L
8	Parameter C_EN_EMIO_ENET0 bound to: 0 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_EN_EMIO_ENET1 bound to: 0 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_EN_EMIO_TRACE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_DQ_WIDTH bound to: 32 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_DQS_WIDTH bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_DM_WIDTH bound to: 4 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_MIO_PRIMITIVE bound to: 54 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_PACKAGE_NAME bound to: clg484 - type: string 
2default:default
·
synthesizing module '%s'638*oasys2
BUFG2default:default2M
7/opt/Xilinx/Vivado/2013.4/scripts/rt/data/unisim_comp.v2default:default2
6122default:default8@Z8-638
ò
%done synthesizing module '%s' (%s#%s)256*oasys2
BUFG2default:default2
22default:default2
12default:default2M
7/opt/Xilinx/Vivado/2013.4/scripts/rt/data/unisim_comp.v2default:default2
6122default:default8@Z8-256
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21712default:default8@Z8-4446
¸
synthesizing module '%s'638*oasys2
BIBUF2default:default2M
7/opt/Xilinx/Vivado/2013.4/scripts/rt/data/unisim_comp.v2default:default2
2682default:default8@Z8-638
ó
%done synthesizing module '%s' (%s#%s)256*oasys2
BIBUF2default:default2
32default:default2
12default:default2M
7/opt/Xilinx/Vivado/2013.4/scripts/rt/data/unisim_comp.v2default:default2
2682default:default8@Z8-256
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21722default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21732default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21742default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21752default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21762default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21772default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21782default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21792default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21802default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21812default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21822default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21832default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21842default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21952default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21952default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21952default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22072default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22072default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22072default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22072default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
Ë
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
Ô
Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-44462default:default2
1002default:defaultZ17-14
¸
synthesizing module '%s'638*oasys2
PS72default:default2M
7/opt/Xilinx/Vivado/2013.4/scripts/rt/data/unisim_comp.v2default:default2
267372default:default8@Z8-638
ó
%done synthesizing module '%s' (%s#%s)256*oasys2
PS72default:default2
42default:default2
12default:default2M
7/opt/Xilinx/Vivado/2013.4/scripts/rt/data/unisim_comp.v2default:default2
267372default:default8@Z8-256
š
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET0_GMII_TX_EN2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
2102default:default8@Z8-3848
š
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET0_GMII_TX_ER2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
2112default:default8@Z8-3848
˜
0Net %s in module/entity %s does not have driver.3422*oasys2"
ENET0_GMII_TXD2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
2272default:default8@Z8-3848
š
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET1_GMII_TX_EN2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
2412default:default8@Z8-3848
š
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET1_GMII_TX_ER2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
2422default:default8@Z8-3848
˜
0Net %s in module/entity %s does not have driver.3422*oasys2"
ENET1_GMII_TXD2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
2562default:default8@Z8-3848
›
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET0_GMII_COL_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10332default:default8@Z8-3848
›
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET0_GMII_CRS_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10342default:default8@Z8-3848
›
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET0_GMII_RXD_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10372default:default8@Z8-3848

0Net %s in module/entity %s does not have driver.3422*oasys2&
ENET0_GMII_RX_DV_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10352default:default8@Z8-3848

0Net %s in module/entity %s does not have driver.3422*oasys2&
ENET0_GMII_RX_ER_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10362default:default8@Z8-3848
›
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET1_GMII_COL_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10422default:default8@Z8-3848
›
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET1_GMII_CRS_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10432default:default8@Z8-3848
›
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET1_GMII_RXD_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10462default:default8@Z8-3848

0Net %s in module/entity %s does not have driver.3422*oasys2&
ENET1_GMII_RX_DV_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10442default:default8@Z8-3848

0Net %s in module/entity %s does not have driver.3422*oasys2&
ENET1_GMII_RX_ER_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10452default:default8@Z8-3848
ž
0Net %s in module/entity %s does not have driver.3422*oasys2'
FTMD_TRACEIN_ATID_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10552default:default8@Z8-3848
ž
0Net %s in module/entity %s does not have driver.3422*oasys2'
FTMD_TRACEIN_DATA_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10532default:default8@Z8-3848
Ÿ
0Net %s in module/entity %s does not have driver.3422*oasys2(
FTMD_TRACEIN_VALID_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10542default:default8@Z8-3848
•
%done synthesizing module '%s' (%s#%s)256*oasys2>
*processing_system7_v5_3_processing_system72default:default2
52default:default2
12default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
1532default:default8@Z8-256
Â
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
inst2default:default2>
*processing_system7_v5_3_processing_system72default:default2
6732default:default2
6602default:default2¶
Ÿ/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/synth/system_processing_system7_1_0.v2default:default2
3512default:default8@Z8-350
ô
%done synthesizing module '%s' (%s#%s)256*oasys21
system_processing_system7_1_02default:default2
62default:default2
12default:default2¶
Ÿ/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/synth/system_processing_system7_1_0.v2default:default2
572default:default8@Z8-256
‡
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2(
processing_system7_12default:default21
system_processing_system7_1_02default:default2
852default:default2
532default:default2{
e/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/hdl/system.v2default:default2
1342default:default8@Z8-350
 
%done synthesizing module '%s' (%s#%s)256*oasys2
system2default:default2
72default:default2
12default:default2{
e/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/hdl/system.v2default:default2
42default:default8@Z8-256
°
%done synthesizing module '%s' (%s#%s)256*oasys2"
system_wrapper2default:default2
82default:default2
12default:default2
k/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/imports/hdl/system_wrapper.v2default:default2
112default:default8@Z8-256
œ
%s*synth2Œ
xFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 824.500 ; gain = 203.867
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
˜
Loading clock regions from %s
13*device2a
M/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/zynq/zynq/xc7z020/ClockRegion.xml2default:defaultZ21-13
™
Loading clock buffers from %s
11*device2b
N/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/zynq/zynq/xc7z020/ClockBuffers.xml2default:defaultZ21-11
™
&Loading clock placement rules from %s
318*place2Y
E/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/zynq/ClockPlacerRules.xml2default:defaultZ30-318
—
)Loading package pin functions from %s...
17*device2U
A/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/zynq/PinFunctions.xml2default:defaultZ21-17
•
Loading package from %s
16*device2d
P/opt/Xilinx/Vivado/2013.4/data/parts/xilinx/zynq/zynq/xc7z020/clg484/Package.xml2default:defaultZ21-16
Œ
Loading io standards from %s
15*device2V
B/opt/Xilinx/Vivado/2013.4/data/./parts/xilinx/zynq/IOStandards.xml2default:defaultZ21-15
5

Processing XDC Constraints
244*projectZ1-262
­
$Parsing XDC File [%s] for cell '%s'
848*designutils2°
›/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/system_processing_system7_1_0.xdc2default:default26
"system_i/processing_system7_1/inst2default:defaultZ20-848
¶
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2°
›/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/system_processing_system7_1_0.xdc2default:default26
"system_i/processing_system7_1/inst2default:defaultZ20-847
ª
ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2°
›/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/system_processing_system7_1_0.xdc2default:default2
m/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.runs/synth_1/.Xil/system_wrapper_propImpl.xdc2default:defaultZ1-236
¯
Parsing XDC File [%s]
179*designutils2y
e/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/constrs_1/new/system_wrapper.xdc2default:defaultZ20-179
¸
Finished Parsing XDC File [%s]
178*designutils2y
e/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/constrs_1/new/system_wrapper.xdc2default:defaultZ20-178
ò
ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2y
e/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/constrs_1/new/system_wrapper.xdc2default:default2
m/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.runs/synth_1/.Xil/system_wrapper_propImpl.xdc2default:defaultZ1-236
¥
Parsing XDC File [%s]
179*designutils2o
[/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.runs/synth_1/dont_touch.xdc2default:defaultZ20-179
®
Finished Parsing XDC File [%s]
178*designutils2o
[/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.runs/synth_1/dont_touch.xdc2default:defaultZ20-178
è
ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2o
[/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.runs/synth_1/dont_touch.xdc2default:default2
m/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.runs/synth_1/.Xil/system_wrapper_propImpl.xdc2default:defaultZ1-236
?
&Completed Processing XDC Constraints

245*projectZ1-263
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-144
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
¶
%s*synth2¦
‘Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1113.273 ; gain = 492.641
2default:default
ž
%s*synth2Ž
zFinished RTL Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1113.273 ; gain = 492.641
2default:default
š
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET0_GMII_TX_EN2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
2102default:default8@Z8-3848
š
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET0_GMII_TX_ER2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
2112default:default8@Z8-3848
˜
0Net %s in module/entity %s does not have driver.3422*oasys2"
ENET0_GMII_TXD2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
2272default:default8@Z8-3848
š
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET1_GMII_TX_EN2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
2412default:default8@Z8-3848
š
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET1_GMII_TX_ER2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
2422default:default8@Z8-3848
˜
0Net %s in module/entity %s does not have driver.3422*oasys2"
ENET1_GMII_TXD2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
2562default:default8@Z8-3848
›
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET0_GMII_COL_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10332default:default8@Z8-3848
›
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET0_GMII_CRS_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10342default:default8@Z8-3848
›
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET0_GMII_RXD_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10372default:default8@Z8-3848

0Net %s in module/entity %s does not have driver.3422*oasys2&
ENET0_GMII_RX_DV_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10352default:default8@Z8-3848

0Net %s in module/entity %s does not have driver.3422*oasys2&
ENET0_GMII_RX_ER_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10362default:default8@Z8-3848
›
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET1_GMII_COL_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10422default:default8@Z8-3848
›
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET1_GMII_CRS_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10432default:default8@Z8-3848
›
0Net %s in module/entity %s does not have driver.3422*oasys2$
ENET1_GMII_RXD_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10462default:default8@Z8-3848

0Net %s in module/entity %s does not have driver.3422*oasys2&
ENET1_GMII_RX_DV_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10442default:default8@Z8-3848

0Net %s in module/entity %s does not have driver.3422*oasys2&
ENET1_GMII_RX_ER_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10452default:default8@Z8-3848
ž
0Net %s in module/entity %s does not have driver.3422*oasys2'
FTMD_TRACEIN_ATID_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10552default:default8@Z8-3848
ž
0Net %s in module/entity %s does not have driver.3422*oasys2'
FTMD_TRACEIN_DATA_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10532default:default8@Z8-3848
Ÿ
0Net %s in module/entity %s does not have driver.3422*oasys2(
FTMD_TRACEIN_VALID_i2default:default2>
*processing_system7_v5_3_processing_system72default:default2É
²/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
10542default:default8@Z8-3848
<
%s*synth2-

Report RTL Partitions: 
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
z
%s*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:default
²
%s*synth2¢
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1154.613 ; gain = 533.980
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
:
%s*synth2+
Module system_wrapper 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
V
%s*synth2G
3Module processing_system7_v5_3_processing_system7 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
I
%s*synth2:
&Module system_processing_system7_1_0 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
2
%s*synth2#
Module system 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
ª
%s*synth2š
…Finished Cross Boundary Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1154.613 ; gain = 533.980
2default:default
¢
%s*synth2’
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¦
%s*synth2–
---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
Ÿ
%s*synth2
{Finished Area Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1176.641 ; gain = 556.008
2default:default
®
%s*synth2ž
‰Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1328.641 ; gain = 708.008
2default:default
¡
%s*synth2‘
}Finished Timing Optimization : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1347.648 ; gain = 727.016
2default:default
 
%s*synth2
|Finished Technology Mapping : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1355.656 ; gain = 735.023
2default:default
D
%s*synth25
!Gated Clock Conversion mode: off
2default:default
š
%s*synth2Š
vFinished IO Insertion : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 1355.656 ; gain = 735.023
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
«
%s*synth2›
†Finished Renaming Generated Instances : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 1355.656 ; gain = 735.023
2default:default
¨
%s*synth2˜
ƒFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 1355.656 ; gain = 735.023
2default:default
¢
%s*synth2’
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¦
%s*synth2–
---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
8
%s*synth2)

Report BlackBoxes: 
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
| |BlackBox name |Instances |
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
8
%s*synth2)

Report Cell Usage: 
2default:default
:
%s*synth2+
+------+------+------+
2default:default
:
%s*synth2+
|      |Cell  |Count |
2default:default
:
%s*synth2+
+------+------+------+
2default:default
:
%s*synth2+
|1     |BIBUF |   130|
2default:default
:
%s*synth2+
|2     |BUFG  |     1|
2default:default
:
%s*synth2+
|3     |GND   |     1|
2default:default
:
%s*synth2+
|4     |LUT1  |    29|
2default:default
:
%s*synth2+
|5     |PS7   |     1|
2default:default
:
%s*synth2+
|6     |IBUF  |     1|
2default:default
:
%s*synth2+
|7     |OBUF  |     4|
2default:default
:
%s*synth2+
|8     |OBUFT |     5|
2default:default
:
%s*synth2+
+------+------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
y
%s*synth2j
V+------+-------------------------+-------------------------------------------+------+
2default:default
y
%s*synth2j
V|      |Instance                 |Module                                     |Cells |
2default:default
y
%s*synth2j
V+------+-------------------------+-------------------------------------------+------+
2default:default
y
%s*synth2j
V|1     |top                      |                                           |   172|
2default:default
y
%s*synth2j
V|2     |  system_i               |system                                     |   162|
2default:default
y
%s*synth2j
V|3     |    processing_system7_1 |system_processing_system7_1_0              |   161|
2default:default
y
%s*synth2j
V|4     |      inst               |processing_system7_v5_3_processing_system7 |   161|
2default:default
y
%s*synth2j
V+------+-------------------------+-------------------------------------------+------+
2default:default
§
%s*synth2—
‚Finished Writing Synthesis Report : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 1355.656 ; gain = 735.023
2default:default
j
%s*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 19 warnings.
2default:default
¥
%s*synth2•
€Synthesis Optimization Complete : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 1355.656 ; gain = 735.023
2default:default
\
-Analyzing %s Unisim elements for replacement
17*netlist2
12default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
^
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140
^
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-144
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
¿
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
302default:default2
1402default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
ý
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:372default:default2
00:00:382default:default2
1714.1412default:default2
969.4572default:defaultZ17-268
<
%Done setting XDC timing constraints.
35*timingZ38-35
‚
vreport_utilization: Time (s): cpu = 00:00:00.11 ; elapsed = 00:00:00.13 . Memory (MB): peak = 1714.145 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Feb  3 15:18:58 20142default:defaultZ17-206