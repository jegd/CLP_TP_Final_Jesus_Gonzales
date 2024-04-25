vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pwm.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../pwm.srcs/sources_1/ip/vio_0/hdl" "+incdir+../../../../pwm.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../pwm.srcs/sources_1/ip/vio_0/hdl" \
"E:/Vivado/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"E:/Vivado/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../pwm.srcs/sources_1/ip/vio_0/sim/vio_0.vhd" \


vlog -work xil_defaultlib \
"glbl.v"

