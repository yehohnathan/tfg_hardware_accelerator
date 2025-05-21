// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module bd_0 (
  ap_clk,
  ap_rst_n,
  img_neg_address0,
  img_neg_ce0,
  img_neg_q0,
  img_pos_address0,
  img_pos_ce0,
  img_pos_q0,
  interrupt,
  m_axi_WEIGHTS_araddr,
  m_axi_WEIGHTS_arburst,
  m_axi_WEIGHTS_arcache,
  m_axi_WEIGHTS_arid,
  m_axi_WEIGHTS_arlen,
  m_axi_WEIGHTS_arlock,
  m_axi_WEIGHTS_arprot,
  m_axi_WEIGHTS_arqos,
  m_axi_WEIGHTS_arready,
  m_axi_WEIGHTS_arregion,
  m_axi_WEIGHTS_arsize,
  m_axi_WEIGHTS_arvalid,
  m_axi_WEIGHTS_awaddr,
  m_axi_WEIGHTS_awburst,
  m_axi_WEIGHTS_awcache,
  m_axi_WEIGHTS_awid,
  m_axi_WEIGHTS_awlen,
  m_axi_WEIGHTS_awlock,
  m_axi_WEIGHTS_awprot,
  m_axi_WEIGHTS_awqos,
  m_axi_WEIGHTS_awready,
  m_axi_WEIGHTS_awregion,
  m_axi_WEIGHTS_awsize,
  m_axi_WEIGHTS_awvalid,
  m_axi_WEIGHTS_bid,
  m_axi_WEIGHTS_bready,
  m_axi_WEIGHTS_bresp,
  m_axi_WEIGHTS_bvalid,
  m_axi_WEIGHTS_rdata,
  m_axi_WEIGHTS_rid,
  m_axi_WEIGHTS_rlast,
  m_axi_WEIGHTS_rready,
  m_axi_WEIGHTS_rresp,
  m_axi_WEIGHTS_rvalid,
  m_axi_WEIGHTS_wdata,
  m_axi_WEIGHTS_wid,
  m_axi_WEIGHTS_wlast,
  m_axi_WEIGHTS_wready,
  m_axi_WEIGHTS_wstrb,
  m_axi_WEIGHTS_wvalid,
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
  s_axi_CTRL_wvalid,
  s_axi_control_araddr,
  s_axi_control_arready,
  s_axi_control_arvalid,
  s_axi_control_awaddr,
  s_axi_control_awready,
  s_axi_control_awvalid,
  s_axi_control_bready,
  s_axi_control_bresp,
  s_axi_control_bvalid,
  s_axi_control_rdata,
  s_axi_control_rready,
  s_axi_control_rresp,
  s_axi_control_rvalid,
  s_axi_control_wdata,
  s_axi_control_wready,
  s_axi_control_wstrb,
  s_axi_control_wvalid
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.AP_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, ASSOCIATED_BUSIF m_axi_WEIGHTS:s_axi_CTRL:s_axi_control, ASSOCIATED_RESET ap_rst_n, INSERT_VIP 0" *)
  input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *)
  (* X_INTERFACE_MODE = "slave RST.AP_RST_N" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_NEG_ADDRESS0 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.IMG_NEG_ADDRESS0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_NEG_ADDRESS0, LAYERED_METADATA undef" *)
  output [5:0]img_neg_address0;
  (* X_INTERFACE_IGNORE = "true" *)
  output img_neg_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_NEG_Q0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_NEG_Q0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_NEG_Q0, LAYERED_METADATA undef" *)
  input [7:0]img_neg_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_POS_ADDRESS0 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.IMG_POS_ADDRESS0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_POS_ADDRESS0, LAYERED_METADATA undef" *)
  output [5:0]img_pos_address0;
  (* X_INTERFACE_IGNORE = "true" *)
  output img_pos_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_POS_Q0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_POS_Q0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_POS_Q0, LAYERED_METADATA undef" *)
  input [7:0]img_pos_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.INTERRUPT" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARADDR" *)
  (* X_INTERFACE_MODE = "master m_axi_WEIGHTS" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_WEIGHTS, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  output [63:0]m_axi_WEIGHTS_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARBURST" *)
  output [1:0]m_axi_WEIGHTS_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARCACHE" *)
  output [3:0]m_axi_WEIGHTS_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARID" *)
  output [0:0]m_axi_WEIGHTS_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARLEN" *)
  output [7:0]m_axi_WEIGHTS_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARLOCK" *)
  output [1:0]m_axi_WEIGHTS_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARPROT" *)
  output [2:0]m_axi_WEIGHTS_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARQOS" *)
  output [3:0]m_axi_WEIGHTS_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARREADY" *)
  input m_axi_WEIGHTS_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARREGION" *)
  output [3:0]m_axi_WEIGHTS_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARSIZE" *)
  output [2:0]m_axi_WEIGHTS_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARVALID" *)
  output m_axi_WEIGHTS_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWADDR" *)
  output [63:0]m_axi_WEIGHTS_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWBURST" *)
  output [1:0]m_axi_WEIGHTS_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWCACHE" *)
  output [3:0]m_axi_WEIGHTS_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWID" *)
  output [0:0]m_axi_WEIGHTS_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWLEN" *)
  output [7:0]m_axi_WEIGHTS_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWLOCK" *)
  output [1:0]m_axi_WEIGHTS_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWPROT" *)
  output [2:0]m_axi_WEIGHTS_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWQOS" *)
  output [3:0]m_axi_WEIGHTS_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWREADY" *)
  input m_axi_WEIGHTS_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWREGION" *)
  output [3:0]m_axi_WEIGHTS_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWSIZE" *)
  output [2:0]m_axi_WEIGHTS_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWVALID" *)
  output m_axi_WEIGHTS_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS BID" *)
  input [0:0]m_axi_WEIGHTS_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS BREADY" *)
  output m_axi_WEIGHTS_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS BRESP" *)
  input [1:0]m_axi_WEIGHTS_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS BVALID" *)
  input m_axi_WEIGHTS_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS RDATA" *)
  input [31:0]m_axi_WEIGHTS_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS RID" *)
  input [0:0]m_axi_WEIGHTS_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS RLAST" *)
  input m_axi_WEIGHTS_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS RREADY" *)
  output m_axi_WEIGHTS_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS RRESP" *)
  input [1:0]m_axi_WEIGHTS_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS RVALID" *)
  input m_axi_WEIGHTS_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS WDATA" *)
  output [31:0]m_axi_WEIGHTS_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS WID" *)
  output [0:0]m_axi_WEIGHTS_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS WLAST" *)
  output m_axi_WEIGHTS_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS WREADY" *)
  input m_axi_WEIGHTS_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS WSTRB" *)
  output [3:0]m_axi_WEIGHTS_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS WVALID" *)
  output m_axi_WEIGHTS_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *)
  (* X_INTERFACE_MODE = "slave s_axi_CTRL" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000.0, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [4:0]s_axi_CTRL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *)
  output s_axi_CTRL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *)
  input s_axi_CTRL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *)
  input [4:0]s_axi_CTRL_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
  (* X_INTERFACE_MODE = "slave s_axi_control" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000.0, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [5:0]s_axi_control_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
  output s_axi_control_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
  input s_axi_control_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
  input [5:0]s_axi_control_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
  output s_axi_control_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
  input s_axi_control_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
  input s_axi_control_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
  output [1:0]s_axi_control_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
  output s_axi_control_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
  output [31:0]s_axi_control_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
  input s_axi_control_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
  output [1:0]s_axi_control_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
  output s_axi_control_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
  input [31:0]s_axi_control_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
  output s_axi_control_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
  input [3:0]s_axi_control_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
  input s_axi_control_wvalid;

  // stub module has no contents

endmodule
