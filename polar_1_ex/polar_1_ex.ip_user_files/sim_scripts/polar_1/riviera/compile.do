vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/ecc_v2_0_12
vlib riviera/fec_5g_common_v1_1_0
vlib riviera/polar_v1_0_2
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap ecc_v2_0_12 riviera/ecc_v2_0_12
vmap fec_5g_common_v1_1_0 riviera/fec_5g_common_v1_1_0
vmap polar_v1_0_2 riviera/polar_v1_0_2
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work ecc_v2_0_12  -v2k5 "+incdir+../../../ipstatic/ipshared/a023/hdl" "+incdir+../../../../polar_1_ex.srcs/sources_1/ip/polar_1/drivers/polar_v1_0/src" "+incdir+/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../ipstatic/ipshared/690a/hdl/ecc_v2_0_vl_rfs.v" \

vlog -work fec_5g_common_v1_1_0  -sv2k12 "+incdir+../../../ipstatic/ipshared/a023/hdl" "+incdir+../../../../polar_1_ex.srcs/sources_1/ip/polar_1/drivers/polar_v1_0/src" "+incdir+/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../ipstatic/ipshared/a023/hdl/fec_5g_common_v1_1_rfs.sv" \

vlog -work polar_v1_0_2  -sv2k12 "+incdir+../../../ipstatic/ipshared/a023/hdl" "+incdir+../../../../polar_1_ex.srcs/sources_1/ip/polar_1/drivers/polar_v1_0/src" "+incdir+/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../ipstatic/ipshared/2b35/hdl/polar_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic/ipshared/a023/hdl" "+incdir+../../../../polar_1_ex.srcs/sources_1/ip/polar_1/drivers/polar_v1_0/src" "+incdir+/home/shubham/Xilinx2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../polar_1_ex.srcs/sources_1/ip/polar_1/sim/polar_1.sv" \

vlog -work xil_defaultlib \
"glbl.v"
