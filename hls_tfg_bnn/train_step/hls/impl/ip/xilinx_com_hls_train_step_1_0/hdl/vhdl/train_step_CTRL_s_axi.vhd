-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
-- Tool Version Limit: 2024.11
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- 
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity train_step_CTRL_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 8;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    img_pos_0             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_pos_1             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_pos_2             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_pos_3             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_pos_4             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_pos_5             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_pos_6             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_pos_7             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_neg_0             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_neg_1             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_neg_2             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_neg_3             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_neg_4             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_neg_5             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_neg_6             :out  STD_LOGIC_VECTOR(7 downto 0);
    img_neg_7             :out  STD_LOGIC_VECTOR(7 downto 0);
    last_sample           :out  STD_LOGIC_VECTOR(31 downto 0);
    sample_idx            :out  STD_LOGIC_VECTOR(31 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity train_step_CTRL_s_axi;

-- ------------------------Address Info-------------------
-- Protocol Used: ap_ctrl_hs
--
-- 0x00 : Control signals
--        bit 0  - ap_start (Read/Write/COH)
--        bit 1  - ap_done (Read/COR)
--        bit 2  - ap_idle (Read)
--        bit 3  - ap_ready (Read/COR)
--        bit 7  - auto_restart (Read/Write)
--        bit 9  - interrupt (Read)
--        others - reserved
-- 0x04 : Global Interrupt Enable Register
--        bit 0  - Global Interrupt Enable (Read/Write)
--        others - reserved
-- 0x08 : IP Interrupt Enable Register (Read/Write)
--        bit 0 - enable ap_done interrupt (Read/Write)
--        bit 1 - enable ap_ready interrupt (Read/Write)
--        others - reserved
-- 0x0c : IP Interrupt Status Register (Read/TOW)
--        bit 0 - ap_done (Read/TOW)
--        bit 1 - ap_ready (Read/TOW)
--        others - reserved
-- 0x10 : Data signal of img_pos_0
--        bit 7~0 - img_pos_0[7:0] (Read/Write)
--        others  - reserved
-- 0x14 : reserved
-- 0x18 : Data signal of img_pos_1
--        bit 7~0 - img_pos_1[7:0] (Read/Write)
--        others  - reserved
-- 0x1c : reserved
-- 0x20 : Data signal of img_pos_2
--        bit 7~0 - img_pos_2[7:0] (Read/Write)
--        others  - reserved
-- 0x24 : reserved
-- 0x28 : Data signal of img_pos_3
--        bit 7~0 - img_pos_3[7:0] (Read/Write)
--        others  - reserved
-- 0x2c : reserved
-- 0x30 : Data signal of img_pos_4
--        bit 7~0 - img_pos_4[7:0] (Read/Write)
--        others  - reserved
-- 0x34 : reserved
-- 0x38 : Data signal of img_pos_5
--        bit 7~0 - img_pos_5[7:0] (Read/Write)
--        others  - reserved
-- 0x3c : reserved
-- 0x40 : Data signal of img_pos_6
--        bit 7~0 - img_pos_6[7:0] (Read/Write)
--        others  - reserved
-- 0x44 : reserved
-- 0x48 : Data signal of img_pos_7
--        bit 7~0 - img_pos_7[7:0] (Read/Write)
--        others  - reserved
-- 0x4c : reserved
-- 0x50 : Data signal of img_neg_0
--        bit 7~0 - img_neg_0[7:0] (Read/Write)
--        others  - reserved
-- 0x54 : reserved
-- 0x58 : Data signal of img_neg_1
--        bit 7~0 - img_neg_1[7:0] (Read/Write)
--        others  - reserved
-- 0x5c : reserved
-- 0x60 : Data signal of img_neg_2
--        bit 7~0 - img_neg_2[7:0] (Read/Write)
--        others  - reserved
-- 0x64 : reserved
-- 0x68 : Data signal of img_neg_3
--        bit 7~0 - img_neg_3[7:0] (Read/Write)
--        others  - reserved
-- 0x6c : reserved
-- 0x70 : Data signal of img_neg_4
--        bit 7~0 - img_neg_4[7:0] (Read/Write)
--        others  - reserved
-- 0x74 : reserved
-- 0x78 : Data signal of img_neg_5
--        bit 7~0 - img_neg_5[7:0] (Read/Write)
--        others  - reserved
-- 0x7c : reserved
-- 0x80 : Data signal of img_neg_6
--        bit 7~0 - img_neg_6[7:0] (Read/Write)
--        others  - reserved
-- 0x84 : reserved
-- 0x88 : Data signal of img_neg_7
--        bit 7~0 - img_neg_7[7:0] (Read/Write)
--        others  - reserved
-- 0x8c : reserved
-- 0x90 : Data signal of last_sample
--        bit 31~0 - last_sample[31:0] (Read/Write)
-- 0x94 : reserved
-- 0x98 : Data signal of sample_idx
--        bit 31~0 - sample_idx[31:0] (Read/Write)
-- 0x9c : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of train_step_CTRL_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL            : INTEGER := 16#00#;
    constant ADDR_GIE                : INTEGER := 16#04#;
    constant ADDR_IER                : INTEGER := 16#08#;
    constant ADDR_ISR                : INTEGER := 16#0c#;
    constant ADDR_IMG_POS_0_DATA_0   : INTEGER := 16#10#;
    constant ADDR_IMG_POS_0_CTRL     : INTEGER := 16#14#;
    constant ADDR_IMG_POS_1_DATA_0   : INTEGER := 16#18#;
    constant ADDR_IMG_POS_1_CTRL     : INTEGER := 16#1c#;
    constant ADDR_IMG_POS_2_DATA_0   : INTEGER := 16#20#;
    constant ADDR_IMG_POS_2_CTRL     : INTEGER := 16#24#;
    constant ADDR_IMG_POS_3_DATA_0   : INTEGER := 16#28#;
    constant ADDR_IMG_POS_3_CTRL     : INTEGER := 16#2c#;
    constant ADDR_IMG_POS_4_DATA_0   : INTEGER := 16#30#;
    constant ADDR_IMG_POS_4_CTRL     : INTEGER := 16#34#;
    constant ADDR_IMG_POS_5_DATA_0   : INTEGER := 16#38#;
    constant ADDR_IMG_POS_5_CTRL     : INTEGER := 16#3c#;
    constant ADDR_IMG_POS_6_DATA_0   : INTEGER := 16#40#;
    constant ADDR_IMG_POS_6_CTRL     : INTEGER := 16#44#;
    constant ADDR_IMG_POS_7_DATA_0   : INTEGER := 16#48#;
    constant ADDR_IMG_POS_7_CTRL     : INTEGER := 16#4c#;
    constant ADDR_IMG_NEG_0_DATA_0   : INTEGER := 16#50#;
    constant ADDR_IMG_NEG_0_CTRL     : INTEGER := 16#54#;
    constant ADDR_IMG_NEG_1_DATA_0   : INTEGER := 16#58#;
    constant ADDR_IMG_NEG_1_CTRL     : INTEGER := 16#5c#;
    constant ADDR_IMG_NEG_2_DATA_0   : INTEGER := 16#60#;
    constant ADDR_IMG_NEG_2_CTRL     : INTEGER := 16#64#;
    constant ADDR_IMG_NEG_3_DATA_0   : INTEGER := 16#68#;
    constant ADDR_IMG_NEG_3_CTRL     : INTEGER := 16#6c#;
    constant ADDR_IMG_NEG_4_DATA_0   : INTEGER := 16#70#;
    constant ADDR_IMG_NEG_4_CTRL     : INTEGER := 16#74#;
    constant ADDR_IMG_NEG_5_DATA_0   : INTEGER := 16#78#;
    constant ADDR_IMG_NEG_5_CTRL     : INTEGER := 16#7c#;
    constant ADDR_IMG_NEG_6_DATA_0   : INTEGER := 16#80#;
    constant ADDR_IMG_NEG_6_CTRL     : INTEGER := 16#84#;
    constant ADDR_IMG_NEG_7_DATA_0   : INTEGER := 16#88#;
    constant ADDR_IMG_NEG_7_CTRL     : INTEGER := 16#8c#;
    constant ADDR_LAST_SAMPLE_DATA_0 : INTEGER := 16#90#;
    constant ADDR_LAST_SAMPLE_CTRL   : INTEGER := 16#94#;
    constant ADDR_SAMPLE_IDX_DATA_0  : INTEGER := 16#98#;
    constant ADDR_SAMPLE_IDX_CTRL    : INTEGER := 16#9c#;
    constant ADDR_BITS         : INTEGER := 8;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_interrupt       : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_img_pos_0       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_pos_1       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_pos_2       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_pos_3       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_pos_4       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_pos_5       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_pos_6       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_pos_7       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_neg_0       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_neg_1       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_neg_2       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_neg_3       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_neg_4       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_neg_5       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_neg_6       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_img_neg_7       : UNSIGNED(7 downto 0) := (others => '0');
    signal int_last_sample     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_sample_idx      : UNSIGNED(31 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 2) & (1 downto 0 => '0'));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(9) <= int_interrupt;
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_IMG_POS_0_DATA_0 =>
                        rdata_data <= RESIZE(int_img_pos_0(7 downto 0), 32);
                    when ADDR_IMG_POS_1_DATA_0 =>
                        rdata_data <= RESIZE(int_img_pos_1(7 downto 0), 32);
                    when ADDR_IMG_POS_2_DATA_0 =>
                        rdata_data <= RESIZE(int_img_pos_2(7 downto 0), 32);
                    when ADDR_IMG_POS_3_DATA_0 =>
                        rdata_data <= RESIZE(int_img_pos_3(7 downto 0), 32);
                    when ADDR_IMG_POS_4_DATA_0 =>
                        rdata_data <= RESIZE(int_img_pos_4(7 downto 0), 32);
                    when ADDR_IMG_POS_5_DATA_0 =>
                        rdata_data <= RESIZE(int_img_pos_5(7 downto 0), 32);
                    when ADDR_IMG_POS_6_DATA_0 =>
                        rdata_data <= RESIZE(int_img_pos_6(7 downto 0), 32);
                    when ADDR_IMG_POS_7_DATA_0 =>
                        rdata_data <= RESIZE(int_img_pos_7(7 downto 0), 32);
                    when ADDR_IMG_NEG_0_DATA_0 =>
                        rdata_data <= RESIZE(int_img_neg_0(7 downto 0), 32);
                    when ADDR_IMG_NEG_1_DATA_0 =>
                        rdata_data <= RESIZE(int_img_neg_1(7 downto 0), 32);
                    when ADDR_IMG_NEG_2_DATA_0 =>
                        rdata_data <= RESIZE(int_img_neg_2(7 downto 0), 32);
                    when ADDR_IMG_NEG_3_DATA_0 =>
                        rdata_data <= RESIZE(int_img_neg_3(7 downto 0), 32);
                    when ADDR_IMG_NEG_4_DATA_0 =>
                        rdata_data <= RESIZE(int_img_neg_4(7 downto 0), 32);
                    when ADDR_IMG_NEG_5_DATA_0 =>
                        rdata_data <= RESIZE(int_img_neg_5(7 downto 0), 32);
                    when ADDR_IMG_NEG_6_DATA_0 =>
                        rdata_data <= RESIZE(int_img_neg_6(7 downto 0), 32);
                    when ADDR_IMG_NEG_7_DATA_0 =>
                        rdata_data <= RESIZE(int_img_neg_7(7 downto 0), 32);
                    when ADDR_LAST_SAMPLE_DATA_0 =>
                        rdata_data <= RESIZE(int_last_sample(31 downto 0), 32);
                    when ADDR_SAMPLE_IDX_DATA_0 =>
                        rdata_data <= RESIZE(int_sample_idx(31 downto 0), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_interrupt;
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);
    img_pos_0            <= STD_LOGIC_VECTOR(int_img_pos_0);
    img_pos_1            <= STD_LOGIC_VECTOR(int_img_pos_1);
    img_pos_2            <= STD_LOGIC_VECTOR(int_img_pos_2);
    img_pos_3            <= STD_LOGIC_VECTOR(int_img_pos_3);
    img_pos_4            <= STD_LOGIC_VECTOR(int_img_pos_4);
    img_pos_5            <= STD_LOGIC_VECTOR(int_img_pos_5);
    img_pos_6            <= STD_LOGIC_VECTOR(int_img_pos_6);
    img_pos_7            <= STD_LOGIC_VECTOR(int_img_pos_7);
    img_neg_0            <= STD_LOGIC_VECTOR(int_img_neg_0);
    img_neg_1            <= STD_LOGIC_VECTOR(int_img_neg_1);
    img_neg_2            <= STD_LOGIC_VECTOR(int_img_neg_2);
    img_neg_3            <= STD_LOGIC_VECTOR(int_img_neg_3);
    img_neg_4            <= STD_LOGIC_VECTOR(int_img_neg_4);
    img_neg_5            <= STD_LOGIC_VECTOR(int_img_neg_5);
    img_neg_6            <= STD_LOGIC_VECTOR(int_img_neg_6);
    img_neg_7            <= STD_LOGIC_VECTOR(int_img_neg_7);
    last_sample          <= STD_LOGIC_VECTOR(int_last_sample);
    sample_idx           <= STD_LOGIC_VECTOR(int_sample_idx);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_interrupt <= '0';
            elsif (ACLK_EN = '1') then
                if (int_gie = '1' and (int_isr(0) or int_isr(1)) = '1') then
                    int_interrupt <= '1';
                else
                    int_interrupt <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_pos_0(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_POS_0_DATA_0) then
                    int_img_pos_0(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_pos_0(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_pos_1(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_POS_1_DATA_0) then
                    int_img_pos_1(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_pos_1(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_pos_2(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_POS_2_DATA_0) then
                    int_img_pos_2(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_pos_2(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_pos_3(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_POS_3_DATA_0) then
                    int_img_pos_3(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_pos_3(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_pos_4(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_POS_4_DATA_0) then
                    int_img_pos_4(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_pos_4(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_pos_5(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_POS_5_DATA_0) then
                    int_img_pos_5(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_pos_5(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_pos_6(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_POS_6_DATA_0) then
                    int_img_pos_6(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_pos_6(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_pos_7(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_POS_7_DATA_0) then
                    int_img_pos_7(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_pos_7(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_neg_0(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_NEG_0_DATA_0) then
                    int_img_neg_0(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_neg_0(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_neg_1(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_NEG_1_DATA_0) then
                    int_img_neg_1(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_neg_1(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_neg_2(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_NEG_2_DATA_0) then
                    int_img_neg_2(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_neg_2(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_neg_3(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_NEG_3_DATA_0) then
                    int_img_neg_3(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_neg_3(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_neg_4(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_NEG_4_DATA_0) then
                    int_img_neg_4(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_neg_4(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_neg_5(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_NEG_5_DATA_0) then
                    int_img_neg_5(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_neg_5(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_neg_6(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_NEG_6_DATA_0) then
                    int_img_neg_6(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_neg_6(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_img_neg_7(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMG_NEG_7_DATA_0) then
                    int_img_neg_7(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_img_neg_7(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_last_sample(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAST_SAMPLE_DATA_0) then
                    int_last_sample(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_last_sample(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_sample_idx(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SAMPLE_IDX_DATA_0) then
                    int_sample_idx(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_sample_idx(31 downto 0));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
