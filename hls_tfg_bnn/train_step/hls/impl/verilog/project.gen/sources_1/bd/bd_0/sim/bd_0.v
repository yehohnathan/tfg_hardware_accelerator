//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Wed May 14 09:54:19 2025
//Host        : Yehoh running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (W1_out_address0,
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
    s_axi_CTRL_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.W1_OUT_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.W1_OUT_ADDRESS0, LAYERED_METADATA undef" *) output [4:0]W1_out_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.W1_OUT_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.W1_OUT_ADDRESS1, LAYERED_METADATA undef" *) output [4:0]W1_out_address1;
  output W1_out_ce0;
  output W1_out_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.W1_OUT_D0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.W1_OUT_D0, LAYERED_METADATA undef" *) output [7:0]W1_out_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.W1_OUT_D1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.W1_OUT_D1, LAYERED_METADATA undef" *) output [7:0]W1_out_d1;
  output W1_out_we0;
  output W1_out_we1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.W2_OUT_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.W2_OUT_ADDRESS0, LAYERED_METADATA undef" *) output [1:0]W2_out_address0;
  output W2_out_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.W2_OUT_D0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.W2_OUT_D0, LAYERED_METADATA undef" *) output [7:0]W2_out_d0;
  output W2_out_we0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axi_CTRL, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LEDS_PORT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LEDS_PORT, LAYERED_METADATA undef" *) output [3:0]leds_port;
  output leds_port_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [7:0]s_axi_CTRL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *) output s_axi_CTRL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *) input s_axi_CTRL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *) input [7:0]s_axi_CTRL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY" *) output s_axi_CTRL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID" *) input s_axi_CTRL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY" *) input s_axi_CTRL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP" *) output [1:0]s_axi_CTRL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID" *) output s_axi_CTRL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA" *) output [31:0]s_axi_CTRL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *) input s_axi_CTRL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP" *) output [1:0]s_axi_CTRL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID" *) output s_axi_CTRL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA" *) input [31:0]s_axi_CTRL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY" *) output s_axi_CTRL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB" *) input [3:0]s_axi_CTRL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID" *) input s_axi_CTRL_wvalid;

  wire [4:0]W1_out_address0;
  wire [4:0]W1_out_address1;
  wire W1_out_ce0;
  wire W1_out_ce1;
  wire [7:0]W1_out_d0;
  wire [7:0]W1_out_d1;
  wire W1_out_we0;
  wire W1_out_we1;
  wire [1:0]W2_out_address0;
  wire W2_out_ce0;
  wire [7:0]W2_out_d0;
  wire W2_out_we0;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [3:0]leds_port;
  wire leds_port_ap_vld;
  wire [7:0]s_axi_CTRL_araddr;
  wire s_axi_CTRL_arready;
  wire s_axi_CTRL_arvalid;
  wire [7:0]s_axi_CTRL_awaddr;
  wire s_axi_CTRL_awready;
  wire s_axi_CTRL_awvalid;
  wire s_axi_CTRL_bready;
  wire [1:0]s_axi_CTRL_bresp;
  wire s_axi_CTRL_bvalid;
  wire [31:0]s_axi_CTRL_rdata;
  wire s_axi_CTRL_rready;
  wire [1:0]s_axi_CTRL_rresp;
  wire s_axi_CTRL_rvalid;
  wire [31:0]s_axi_CTRL_wdata;
  wire s_axi_CTRL_wready;
  wire [3:0]s_axi_CTRL_wstrb;
  wire s_axi_CTRL_wvalid;

  bd_0_hls_inst_0 hls_inst
       (.W1_out_address0(W1_out_address0),
        .W1_out_address1(W1_out_address1),
        .W1_out_ce0(W1_out_ce0),
        .W1_out_ce1(W1_out_ce1),
        .W1_out_d0(W1_out_d0),
        .W1_out_d1(W1_out_d1),
        .W1_out_we0(W1_out_we0),
        .W1_out_we1(W1_out_we1),
        .W2_out_address0(W2_out_address0),
        .W2_out_ce0(W2_out_ce0),
        .W2_out_d0(W2_out_d0),
        .W2_out_we0(W2_out_we0),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .leds_port(leds_port),
        .leds_port_ap_vld(leds_port_ap_vld),
        .s_axi_CTRL_ARADDR(s_axi_CTRL_araddr),
        .s_axi_CTRL_ARREADY(s_axi_CTRL_arready),
        .s_axi_CTRL_ARVALID(s_axi_CTRL_arvalid),
        .s_axi_CTRL_AWADDR(s_axi_CTRL_awaddr),
        .s_axi_CTRL_AWREADY(s_axi_CTRL_awready),
        .s_axi_CTRL_AWVALID(s_axi_CTRL_awvalid),
        .s_axi_CTRL_BREADY(s_axi_CTRL_bready),
        .s_axi_CTRL_BRESP(s_axi_CTRL_bresp),
        .s_axi_CTRL_BVALID(s_axi_CTRL_bvalid),
        .s_axi_CTRL_RDATA(s_axi_CTRL_rdata),
        .s_axi_CTRL_RREADY(s_axi_CTRL_rready),
        .s_axi_CTRL_RRESP(s_axi_CTRL_rresp),
        .s_axi_CTRL_RVALID(s_axi_CTRL_rvalid),
        .s_axi_CTRL_WDATA(s_axi_CTRL_wdata),
        .s_axi_CTRL_WREADY(s_axi_CTRL_wready),
        .s_axi_CTRL_WSTRB(s_axi_CTRL_wstrb),
        .s_axi_CTRL_WVALID(s_axi_CTRL_wvalid));
endmodule
