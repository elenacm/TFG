vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib -v2k5 -sv "+incdir+../../../ipstatic/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/Desktop/project_1/Practica 2/Practica 2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/Desktop/project_1/Practica 2/Practica 2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_v5_3_1" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/Desktop/project_1/Practica 2/Practica 2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/clk_wiz_v5_3_1" "+incdir+../../../ipstatic/Desktop/project_1/Practica 2/Practica 2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_v5_3_1" \
"../../../../Practica 2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../../Practica 2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \

vlog -work xil_defaultlib "glbl.v"
