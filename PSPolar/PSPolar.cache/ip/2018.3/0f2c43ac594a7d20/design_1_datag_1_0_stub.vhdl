-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Jan 31 18:32:07 2020
-- Host        : shubham-HP-Desktop-Pro-G1-MT running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_datag_1_0_stub.vhdl
-- Design      : design_1_datag_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    dat_V_ce0 : out STD_LOGIC;
    dat_V_we0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    din_V_TVALID : out STD_LOGIC;
    din_V_TREADY : in STD_LOGIC;
    din_V_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    dat_V_address0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    dat_V_d0 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    dat_V_q0 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    dat_V_address1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    dat_V_ce1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    dat_V_we1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    dat_V_d1 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    din_tlast_TVALID : out STD_LOGIC;
    din_tlast_TREADY : in STD_LOGIC;
    din_tlast_TDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    control_TVALID : out STD_LOGIC;
    control_TREADY : in STD_LOGIC;
    control_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    din_words_TVALID : out STD_LOGIC;
    din_words_TREADY : in STD_LOGIC;
    din_words_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dout_words_TVALID : out STD_LOGIC;
    dout_words_TREADY : in STD_LOGIC;
    dout_words_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dat_V_ce0,dat_V_we0,ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,din_V_TVALID,din_V_TREADY,din_V_TDATA[127:0],dat_V_address0[0:0],dat_V_d0[127:0],dat_V_q0[127:0],dat_V_address1[0:0],dat_V_ce1[0:0],dat_V_we1[0:0],dat_V_d1[127:0],din_tlast_TVALID,din_tlast_TREADY,din_tlast_TDATA[0:0],control_TVALID,control_TREADY,control_TDATA[31:0],din_words_TVALID,din_words_TREADY,din_words_TDATA[31:0],dout_words_TVALID,dout_words_TREADY,dout_words_TDATA[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "datag,Vivado 2018.3";
begin
end;