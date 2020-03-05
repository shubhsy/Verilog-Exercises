onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_4 -L zynq_ultra_ps_e_vip_v1_0_4 -L ecc_v2_0_12 -L fec_5g_common_v1_1_0 -L polar_v1_0_2 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L gigantic_mux -L xlconcat_v2_1_1 -L xlconstant_v1_1_5 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_3 -L axi_data_fifo_v2_1_17 -L axi_register_slice_v2_1_18 -L axi_protocol_converter_v2_1_18 -L axi_clock_converter_v2_1_17 -L blk_mem_gen_v8_4_2 -L axi_dwidth_converter_v2_1_18 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force