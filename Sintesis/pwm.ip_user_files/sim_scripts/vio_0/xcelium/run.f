-makelib xcelium_lib/xil_defaultlib -sv \
  "E:/Vivado/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/Vivado/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../pwm.srcs/sources_1/ip/vio_0/sim/vio_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

