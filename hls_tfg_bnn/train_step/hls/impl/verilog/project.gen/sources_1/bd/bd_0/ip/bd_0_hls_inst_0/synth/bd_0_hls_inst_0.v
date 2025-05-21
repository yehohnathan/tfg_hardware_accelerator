// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:train_step:1.0
// IP Revision: 2114092025

(* X_CORE_INFO = "train_step,Vivado 2024.2" *)
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,train_step,{}" *)
(* CORE_GENERATION_INFO = "bd_0_hls_inst_0,train_step,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=train_step,x_ipVersion=1.0,x_ipCoreRevision=2114092025,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CTRL_ADDR_WIDTH=5,C_S_AXI_CTRL_DATA_WIDTH=32,C_S_AXI_CONTROL_ADDR_WIDTH=6,C_S_AXI_CONTROL_DATA_WIDTH=32,C_M_AXI_WEIGHTS_ID_WIDTH=1,C_M_AXI_WEIGHTS_ADDR_WIDTH=64,C_M_AXI_WEIGHTS_DATA_WIDTH=32,C_M_AXI_WEIGHTS_AWUSER_WIDTH=1,C_M_AXI_WEIGHTS_ARUSER_WIDTH=1,C_M_AXI_WEIGHTS_WUSER_WIDTH=1,C_M_AXI_WE\
IGHTS_RUSER_WIDTH=1,C_M_AXI_WEIGHTS_BUSER_WIDTH=1,C_M_AXI_WEIGHTS_USER_VALUE=0x00000000,C_M_AXI_WEIGHTS_PROT_VALUE=000,C_M_AXI_WEIGHTS_CACHE_VALUE=0011}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  img_pos_ce0,
  img_neg_ce0,
  s_axi_CTRL_ARADDR,
  s_axi_CTRL_ARREADY,
  s_axi_CTRL_ARVALID,
  s_axi_CTRL_AWADDR,
  s_axi_CTRL_AWREADY,
  s_axi_CTRL_AWVALID,
  s_axi_CTRL_BREADY,
  s_axi_CTRL_BRESP,
  s_axi_CTRL_BVALID,
  s_axi_CTRL_RDATA,
  s_axi_CTRL_RREADY,
  s_axi_CTRL_RRESP,
  s_axi_CTRL_RVALID,
  s_axi_CTRL_WDATA,
  s_axi_CTRL_WREADY,
  s_axi_CTRL_WSTRB,
  s_axi_CTRL_WVALID,
  s_axi_control_ARADDR,
  s_axi_control_ARREADY,
  s_axi_control_ARVALID,
  s_axi_control_AWADDR,
  s_axi_control_AWREADY,
  s_axi_control_AWVALID,
  s_axi_control_BREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_RDATA,
  s_axi_control_RREADY,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_WDATA,
  s_axi_control_WREADY,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_WEIGHTS_ARADDR,
  m_axi_WEIGHTS_ARBURST,
  m_axi_WEIGHTS_ARCACHE,
  m_axi_WEIGHTS_ARID,
  m_axi_WEIGHTS_ARLEN,
  m_axi_WEIGHTS_ARLOCK,
  m_axi_WEIGHTS_ARPROT,
  m_axi_WEIGHTS_ARQOS,
  m_axi_WEIGHTS_ARREADY,
  m_axi_WEIGHTS_ARREGION,
  m_axi_WEIGHTS_ARSIZE,
  m_axi_WEIGHTS_ARVALID,
  m_axi_WEIGHTS_AWADDR,
  m_axi_WEIGHTS_AWBURST,
  m_axi_WEIGHTS_AWCACHE,
  m_axi_WEIGHTS_AWID,
  m_axi_WEIGHTS_AWLEN,
  m_axi_WEIGHTS_AWLOCK,
  m_axi_WEIGHTS_AWPROT,
  m_axi_WEIGHTS_AWQOS,
  m_axi_WEIGHTS_AWREADY,
  m_axi_WEIGHTS_AWREGION,
  m_axi_WEIGHTS_AWSIZE,
  m_axi_WEIGHTS_AWVALID,
  m_axi_WEIGHTS_BID,
  m_axi_WEIGHTS_BREADY,
  m_axi_WEIGHTS_BRESP,
  m_axi_WEIGHTS_BVALID,
  m_axi_WEIGHTS_RDATA,
  m_axi_WEIGHTS_RID,
  m_axi_WEIGHTS_RLAST,
  m_axi_WEIGHTS_RREADY,
  m_axi_WEIGHTS_RRESP,
  m_axi_WEIGHTS_RVALID,
  m_axi_WEIGHTS_WDATA,
  m_axi_WEIGHTS_WID,
  m_axi_WEIGHTS_WLAST,
  m_axi_WEIGHTS_WREADY,
  m_axi_WEIGHTS_WSTRB,
  m_axi_WEIGHTS_WVALID,
  img_pos_address0,
  img_pos_q0,
  img_neg_address0,
  img_neg_q0
);

output wire img_pos_ce0;
output wire img_neg_ce0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1\
, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [4 : 0] s_axi_CTRL_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *)
output wire s_axi_CTRL_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *)
input wire s_axi_CTRL_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *)
input wire [4 : 0] s_axi_CTRL_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY" *)
output wire s_axi_CTRL_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID" *)
input wire s_axi_CTRL_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY" *)
input wire s_axi_CTRL_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP" *)
output wire [1 : 0] s_axi_CTRL_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID" *)
output wire s_axi_CTRL_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA" *)
output wire [31 : 0] s_axi_CTRL_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *)
input wire s_axi_CTRL_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP" *)
output wire [1 : 0] s_axi_CTRL_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID" *)
output wire s_axi_CTRL_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA" *)
input wire [31 : 0] s_axi_CTRL_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY" *)
output wire s_axi_CTRL_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB" *)
input wire [3 : 0] s_axi_CTRL_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID" *)
input wire s_axi_CTRL_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREAD\
S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [5 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [5 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:s_axi_control:m_axi_WEIGHTS, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_WEIGHTS, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 100000000.0, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMA\
IN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [63 : 0] m_axi_WEIGHTS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARBURST" *)
output wire [1 : 0] m_axi_WEIGHTS_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARCACHE" *)
output wire [3 : 0] m_axi_WEIGHTS_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARID" *)
output wire [0 : 0] m_axi_WEIGHTS_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARLEN" *)
output wire [7 : 0] m_axi_WEIGHTS_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARLOCK" *)
output wire [1 : 0] m_axi_WEIGHTS_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARPROT" *)
output wire [2 : 0] m_axi_WEIGHTS_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARQOS" *)
output wire [3 : 0] m_axi_WEIGHTS_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARREADY" *)
input wire m_axi_WEIGHTS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARREGION" *)
output wire [3 : 0] m_axi_WEIGHTS_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARSIZE" *)
output wire [2 : 0] m_axi_WEIGHTS_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS ARVALID" *)
output wire m_axi_WEIGHTS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWADDR" *)
output wire [63 : 0] m_axi_WEIGHTS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWBURST" *)
output wire [1 : 0] m_axi_WEIGHTS_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWCACHE" *)
output wire [3 : 0] m_axi_WEIGHTS_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWID" *)
output wire [0 : 0] m_axi_WEIGHTS_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWLEN" *)
output wire [7 : 0] m_axi_WEIGHTS_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWLOCK" *)
output wire [1 : 0] m_axi_WEIGHTS_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWPROT" *)
output wire [2 : 0] m_axi_WEIGHTS_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWQOS" *)
output wire [3 : 0] m_axi_WEIGHTS_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWREADY" *)
input wire m_axi_WEIGHTS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWREGION" *)
output wire [3 : 0] m_axi_WEIGHTS_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWSIZE" *)
output wire [2 : 0] m_axi_WEIGHTS_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS AWVALID" *)
output wire m_axi_WEIGHTS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS BID" *)
input wire [0 : 0] m_axi_WEIGHTS_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS BREADY" *)
output wire m_axi_WEIGHTS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS BRESP" *)
input wire [1 : 0] m_axi_WEIGHTS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS BVALID" *)
input wire m_axi_WEIGHTS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS RDATA" *)
input wire [31 : 0] m_axi_WEIGHTS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS RID" *)
input wire [0 : 0] m_axi_WEIGHTS_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS RLAST" *)
input wire m_axi_WEIGHTS_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS RREADY" *)
output wire m_axi_WEIGHTS_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS RRESP" *)
input wire [1 : 0] m_axi_WEIGHTS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS RVALID" *)
input wire m_axi_WEIGHTS_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS WDATA" *)
output wire [31 : 0] m_axi_WEIGHTS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS WID" *)
output wire [0 : 0] m_axi_WEIGHTS_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS WLAST" *)
output wire m_axi_WEIGHTS_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS WREADY" *)
input wire m_axi_WEIGHTS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS WSTRB" *)
output wire [3 : 0] m_axi_WEIGHTS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_WEIGHTS WVALID" *)
output wire m_axi_WEIGHTS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_pos_address0 DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_pos_address0, LAYERED_METADATA undef" *)
output wire [5 : 0] img_pos_address0;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_pos_q0 DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_pos_q0, LAYERED_METADATA undef" *)
input wire [7 : 0] img_pos_q0;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_neg_address0 DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_neg_address0, LAYERED_METADATA undef" *)
output wire [5 : 0] img_neg_address0;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_neg_q0 DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_neg_q0, LAYERED_METADATA undef" *)
input wire [7 : 0] img_neg_q0;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  train_step #(
    .C_S_AXI_CTRL_ADDR_WIDTH(5),
    .C_S_AXI_CTRL_DATA_WIDTH(32),
    .C_S_AXI_CONTROL_ADDR_WIDTH(6),
    .C_S_AXI_CONTROL_DATA_WIDTH(32),
    .C_M_AXI_WEIGHTS_ID_WIDTH(1),
    .C_M_AXI_WEIGHTS_ADDR_WIDTH(64),
    .C_M_AXI_WEIGHTS_DATA_WIDTH(32),
    .C_M_AXI_WEIGHTS_AWUSER_WIDTH(1),
    .C_M_AXI_WEIGHTS_ARUSER_WIDTH(1),
    .C_M_AXI_WEIGHTS_WUSER_WIDTH(1),
    .C_M_AXI_WEIGHTS_RUSER_WIDTH(1),
    .C_M_AXI_WEIGHTS_BUSER_WIDTH(1),
    .C_M_AXI_WEIGHTS_USER_VALUE(32'H00000000),
    .C_M_AXI_WEIGHTS_PROT_VALUE(3'B000),
    .C_M_AXI_WEIGHTS_CACHE_VALUE(4'B0011)
  ) inst (
    .img_pos_ce0(img_pos_ce0),
    .img_neg_ce0(img_neg_ce0),
    .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),
    .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),
    .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
    .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),
    .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),
    .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
    .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
    .s_axi_CTRL_BRESP(s_axi_CTRL_BRESP),
    .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
    .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),
    .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
    .s_axi_CTRL_RRESP(s_axi_CTRL_RRESP),
    .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
    .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),
    .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),
    .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),
    .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_WEIGHTS_ARADDR(m_axi_WEIGHTS_ARADDR),
    .m_axi_WEIGHTS_ARBURST(m_axi_WEIGHTS_ARBURST),
    .m_axi_WEIGHTS_ARCACHE(m_axi_WEIGHTS_ARCACHE),
    .m_axi_WEIGHTS_ARID(m_axi_WEIGHTS_ARID),
    .m_axi_WEIGHTS_ARLEN(m_axi_WEIGHTS_ARLEN),
    .m_axi_WEIGHTS_ARLOCK(m_axi_WEIGHTS_ARLOCK),
    .m_axi_WEIGHTS_ARPROT(m_axi_WEIGHTS_ARPROT),
    .m_axi_WEIGHTS_ARQOS(m_axi_WEIGHTS_ARQOS),
    .m_axi_WEIGHTS_ARREADY(m_axi_WEIGHTS_ARREADY),
    .m_axi_WEIGHTS_ARREGION(m_axi_WEIGHTS_ARREGION),
    .m_axi_WEIGHTS_ARSIZE(m_axi_WEIGHTS_ARSIZE),
    .m_axi_WEIGHTS_ARUSER(),
    .m_axi_WEIGHTS_ARVALID(m_axi_WEIGHTS_ARVALID),
    .m_axi_WEIGHTS_AWADDR(m_axi_WEIGHTS_AWADDR),
    .m_axi_WEIGHTS_AWBURST(m_axi_WEIGHTS_AWBURST),
    .m_axi_WEIGHTS_AWCACHE(m_axi_WEIGHTS_AWCACHE),
    .m_axi_WEIGHTS_AWID(m_axi_WEIGHTS_AWID),
    .m_axi_WEIGHTS_AWLEN(m_axi_WEIGHTS_AWLEN),
    .m_axi_WEIGHTS_AWLOCK(m_axi_WEIGHTS_AWLOCK),
    .m_axi_WEIGHTS_AWPROT(m_axi_WEIGHTS_AWPROT),
    .m_axi_WEIGHTS_AWQOS(m_axi_WEIGHTS_AWQOS),
    .m_axi_WEIGHTS_AWREADY(m_axi_WEIGHTS_AWREADY),
    .m_axi_WEIGHTS_AWREGION(m_axi_WEIGHTS_AWREGION),
    .m_axi_WEIGHTS_AWSIZE(m_axi_WEIGHTS_AWSIZE),
    .m_axi_WEIGHTS_AWUSER(),
    .m_axi_WEIGHTS_AWVALID(m_axi_WEIGHTS_AWVALID),
    .m_axi_WEIGHTS_BID(m_axi_WEIGHTS_BID),
    .m_axi_WEIGHTS_BREADY(m_axi_WEIGHTS_BREADY),
    .m_axi_WEIGHTS_BRESP(m_axi_WEIGHTS_BRESP),
    .m_axi_WEIGHTS_BUSER(1'B0),
    .m_axi_WEIGHTS_BVALID(m_axi_WEIGHTS_BVALID),
    .m_axi_WEIGHTS_RDATA(m_axi_WEIGHTS_RDATA),
    .m_axi_WEIGHTS_RID(m_axi_WEIGHTS_RID),
    .m_axi_WEIGHTS_RLAST(m_axi_WEIGHTS_RLAST),
    .m_axi_WEIGHTS_RREADY(m_axi_WEIGHTS_RREADY),
    .m_axi_WEIGHTS_RRESP(m_axi_WEIGHTS_RRESP),
    .m_axi_WEIGHTS_RUSER(1'B0),
    .m_axi_WEIGHTS_RVALID(m_axi_WEIGHTS_RVALID),
    .m_axi_WEIGHTS_WDATA(m_axi_WEIGHTS_WDATA),
    .m_axi_WEIGHTS_WID(m_axi_WEIGHTS_WID),
    .m_axi_WEIGHTS_WLAST(m_axi_WEIGHTS_WLAST),
    .m_axi_WEIGHTS_WREADY(m_axi_WEIGHTS_WREADY),
    .m_axi_WEIGHTS_WSTRB(m_axi_WEIGHTS_WSTRB),
    .m_axi_WEIGHTS_WUSER(),
    .m_axi_WEIGHTS_WVALID(m_axi_WEIGHTS_WVALID),
    .img_pos_address0(img_pos_address0),
    .img_pos_q0(img_pos_q0),
    .img_neg_address0(img_neg_address0),
    .img_neg_q0(img_neg_q0)
  );
endmodule
