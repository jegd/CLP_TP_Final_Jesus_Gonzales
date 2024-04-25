// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Apr 22 23:51:22 2024
// Host        : LAPTOP-VCKIONAK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/Especialidad sistemas embebidos
//               UBA/Circuitos_logicos_pro/Clase_1/pwm/Sintesis/pwm.srcs/sources_1/ip/vio_0/vio_0_stub.v}
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2018.1" *)
module vio_0(clk, probe_in0, probe_out0, probe_out1, 
  probe_out2, probe_out3)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[0:0],probe_out0[31:0],probe_out1[0:0],probe_out2[31:0],probe_out3[0:0]" */;
  input clk;
  input [0:0]probe_in0;
  output [31:0]probe_out0;
  output [0:0]probe_out1;
  output [31:0]probe_out2;
  output [0:0]probe_out3;
endmodule
