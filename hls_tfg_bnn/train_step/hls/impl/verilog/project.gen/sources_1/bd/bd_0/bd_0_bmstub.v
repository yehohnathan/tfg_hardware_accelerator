// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module bd_0 (
  W1_out_address0,
  W1_out_address1,
  W1_out_ce0,
  W1_out_ce1,
  W1_out_d0,
  W1_out_d1,
  W1_out_we0,
  W1_out_we1,
  W2_out_address0,
  W2_out_ce0,
  W2_out_d0,
  W2_out_we0,
  ap_clk,
  ap_rst_n,
  interrupt,
  leds_port,
  leds_port_ap_vld,
  s_axi_CTRL_araddr,
  s_axi_CTRL_arready,
  s_axi_CTRL_arvalid,
  s_axi_CTRL_awaddr,
  s_axi_CTRL_awready,
  s_axi_CTRL_awvalid,
  s_axi_CTRL_bready,
  s_axi_CTRL_bresp,
  s_axi_CTRL_bvalid,
  s_axi_CTRL_rdata,
  s_axi_CTRL_rready,
  s_axi_CTRL_rresp,
  s_axi_CTRL_rvalid,
  s_axi_CTRL_wdata,
  s_axi_CTRL_wready,
  s_axi_CTRL_wstrb,
  s_axi_CTRL_wvalid
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.W1_OUT_ADDRESS0 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.W1_OUT_ADDRESS0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.W1_OUT_ADDRESS0, LAYERED_METADATA undef" *)
  output [4:0]W1_out_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.W1_OUT_ADDRESS1 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.W1_OUT_ADDRESS1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.W1_OUT_ADDRESS1, LAYERED_METADATA undef" *)
  output [4:0]W1_out_address1;
  (* X_INTERFACE_IGNORE = "true" *)
  output W1_out_ce0;
  (* X_INTERFACE_IGNORE = "true" *)
  output W1_out_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.W1_OUT_D0 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.W1_OUT_D0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.W1_OUT_D0, LAYERED_METADATA undef" *)
  output [7:0]W1_out_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.W1_OUT_D1 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.W1_OUT_D1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.W1_OUT_D1, LAYERED_METADATA undef" *)
  output [7:0]W1_out_d1;
  (* X_INTERFACE_IGNORE = "true" *)
  output W1_out_we0;
  (* X_INTERFACE_IGNORE = "true" *)
  output W1_out_we1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.W2_OUT_ADDRESS0 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.W2_OUT_ADDRESS0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.W2_OUT_ADDRESS0, LAYERED_METADATA undef" *)
  output [1:0]W2_out_address0;
  (* X_INTERFACE_IGNORE = "true" *)
  output W2_out_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.W2_OUT_D0 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.W2_OUT_D0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.W2_OUT_D0, LAYERED_METADATA undef" *)
  output [7:0]W2_out_d0;
  (* X_INTERFACE_IGNORE = "true" *)
  output W2_out_we0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.AP_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, ASSOCIATED_BUSIF s_axi_CTRL, ASSOCIATED_RESET ap_rst_n, INSERT_VIP 0" *)
  input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *)
  (* X_INTERFACE_MODE = "slave RST.AP_RST_N" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.INTERRUPT" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LEDS_PORT DATA" *)
  (* X_INTERFACE_MODE = "master DATA.LEDS_PORT" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LEDS_PORT, LAYERED_METADATA undef" *)
  output [3:0]leds_port;
  (* X_INTERFACE_IGNORE = "true" *)
  output leds_port_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *)
  (* X_INTERFACE_MODE = "slave s_axi_CTRL" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000.0, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [7:0]s_axi_CTRL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *)
  output s_axi_CTRL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *)
  input s_axi_CTRL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *)
  input [7:0]s_axi_CTRL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY" *)
  output s_axi_CTRL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID" *)
  input s_axi_CTRL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY" *)
  input s_axi_CTRL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP" *)
  output [1:0]s_axi_CTRL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID" *)
  output s_axi_CTRL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA" *)
  output [31:0]s_axi_CTRL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *)
  input s_axi_CTRL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP" *)
  output [1:0]s_axi_CTRL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID" *)
  output s_axi_CTRL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA" *)
  input [31:0]s_axi_CTRL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY" *)
  output s_axi_CTRL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB" *)
  input [3:0]s_axi_CTRL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID" *)
  input s_axi_CTRL_wvalid;

  // stub module has no contents

endmodule
