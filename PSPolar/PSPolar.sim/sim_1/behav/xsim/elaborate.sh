#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.3 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Feb 05 15:11:40 IST 2020
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xelab -wto 6df709e3f7de46c0990aca1686aba358 --incr --debug typical --relax --mt 8 -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_4 -L zynq_ultra_ps_e_vip_v1_0_4 -L xil_defaultlib -L ecc_v2_0_12 -L fec_5g_common_v1_1_0 -L polar_v1_0_2 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L gigantic_mux -L xlconcat_v2_1_1 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_3 -L axi_data_fifo_v2_1_17 -L axi_register_slice_v2_1_18 -L axi_protocol_converter_v2_1_18 -L axi_clock_converter_v2_1_17 -L blk_mem_gen_v8_4_2 -L axi_dwidth_converter_v2_1_18 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tb_behav xil_defaultlib.tb xil_defaultlib.glbl -log elaborate.log