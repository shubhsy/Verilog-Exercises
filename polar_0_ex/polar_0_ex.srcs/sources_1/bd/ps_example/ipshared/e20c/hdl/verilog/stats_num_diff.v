// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1.0
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module stats_num_diff (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        in1_V,
        in2_V,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [127:0] in1_V;
input  [127:0] in2_V;
output  [7:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
reg    ap_block_pp0_stage0_11001;
wire   [7:0] bit_cnt_V_address0;
reg    bit_cnt_V_ce0;
wire   [3:0] bit_cnt_V_q0;
wire   [7:0] bit_cnt_V_address1;
reg    bit_cnt_V_ce1;
wire   [3:0] bit_cnt_V_q1;
wire   [7:0] bit_cnt_V_address2;
reg    bit_cnt_V_ce2;
wire   [3:0] bit_cnt_V_q2;
wire   [7:0] bit_cnt_V_address3;
reg    bit_cnt_V_ce3;
wire   [3:0] bit_cnt_V_q3;
wire   [7:0] bit_cnt_V_address4;
reg    bit_cnt_V_ce4;
wire   [3:0] bit_cnt_V_q4;
wire   [7:0] bit_cnt_V_address5;
reg    bit_cnt_V_ce5;
wire   [3:0] bit_cnt_V_q5;
wire   [7:0] bit_cnt_V_address6;
reg    bit_cnt_V_ce6;
wire   [3:0] bit_cnt_V_q6;
wire   [7:0] bit_cnt_V_address7;
reg    bit_cnt_V_ce7;
wire   [3:0] bit_cnt_V_q7;
wire   [7:0] bit_cnt_V_address8;
reg    bit_cnt_V_ce8;
wire   [3:0] bit_cnt_V_q8;
wire   [7:0] bit_cnt_V_address9;
reg    bit_cnt_V_ce9;
wire   [3:0] bit_cnt_V_q9;
wire   [7:0] bit_cnt_V_address10;
reg    bit_cnt_V_ce10;
wire   [3:0] bit_cnt_V_q10;
wire   [7:0] bit_cnt_V_address11;
reg    bit_cnt_V_ce11;
wire   [3:0] bit_cnt_V_q11;
wire   [7:0] bit_cnt_V_address12;
reg    bit_cnt_V_ce12;
wire   [3:0] bit_cnt_V_q12;
wire   [7:0] bit_cnt_V_address13;
reg    bit_cnt_V_ce13;
wire   [3:0] bit_cnt_V_q13;
wire   [7:0] bit_cnt_V_address14;
reg    bit_cnt_V_ce14;
wire   [3:0] bit_cnt_V_q14;
wire   [7:0] bit_cnt_V_address15;
reg    bit_cnt_V_ce15;
wire   [3:0] bit_cnt_V_q15;
reg   [3:0] bit_cnt_V_load_2_reg_729;
reg   [3:0] bit_cnt_V_load_3_reg_734;
reg   [3:0] bit_cnt_V_load_4_reg_739;
reg   [3:0] bit_cnt_V_load_5_reg_744;
reg   [3:0] bit_cnt_V_load_6_reg_749;
reg   [3:0] bit_cnt_V_load_6_reg_749_pp0_iter2_reg;
reg   [3:0] bit_cnt_V_load_7_reg_754;
reg   [3:0] bit_cnt_V_load_7_reg_754_pp0_iter2_reg;
reg   [3:0] bit_cnt_V_load_8_reg_759;
reg   [3:0] bit_cnt_V_load_8_reg_759_pp0_iter2_reg;
reg   [3:0] bit_cnt_V_load_9_reg_764;
reg   [3:0] bit_cnt_V_load_9_reg_764_pp0_iter2_reg;
reg   [3:0] bit_cnt_V_load_10_reg_769;
reg   [3:0] bit_cnt_V_load_10_reg_769_pp0_iter2_reg;
reg   [3:0] bit_cnt_V_load_10_reg_769_pp0_iter3_reg;
reg   [3:0] bit_cnt_V_load_11_reg_774;
reg   [3:0] bit_cnt_V_load_11_reg_774_pp0_iter2_reg;
reg   [3:0] bit_cnt_V_load_11_reg_774_pp0_iter3_reg;
reg   [3:0] bit_cnt_V_load_12_reg_779;
reg   [3:0] bit_cnt_V_load_12_reg_779_pp0_iter2_reg;
reg   [3:0] bit_cnt_V_load_12_reg_779_pp0_iter3_reg;
reg   [3:0] bit_cnt_V_load_13_reg_784;
reg   [3:0] bit_cnt_V_load_13_reg_784_pp0_iter2_reg;
reg   [3:0] bit_cnt_V_load_13_reg_784_pp0_iter3_reg;
reg   [3:0] bit_cnt_V_load_14_reg_789;
reg   [3:0] bit_cnt_V_load_14_reg_789_pp0_iter2_reg;
reg   [3:0] bit_cnt_V_load_14_reg_789_pp0_iter3_reg;
reg   [3:0] bit_cnt_V_load_14_reg_789_pp0_iter4_reg;
reg   [3:0] bit_cnt_V_load_15_reg_794;
reg   [3:0] bit_cnt_V_load_15_reg_794_pp0_iter2_reg;
reg   [3:0] bit_cnt_V_load_15_reg_794_pp0_iter3_reg;
reg   [3:0] bit_cnt_V_load_15_reg_794_pp0_iter4_reg;
wire   [4:0] r_V_fu_509_p2;
reg   [4:0] r_V_reg_799;
wire   [6:0] r_V_5_fu_552_p2;
reg   [6:0] r_V_5_reg_804;
wire   [7:0] r_V_9_fu_591_p2;
reg   [7:0] r_V_9_reg_809;
wire   [7:0] r_V_13_fu_626_p2;
reg   [7:0] r_V_13_reg_814;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] tmp_fu_271_p1;
wire   [63:0] tmp_s_fu_286_p1;
wire   [63:0] tmp_4_fu_301_p1;
wire   [63:0] tmp_5_fu_316_p1;
wire   [63:0] tmp_6_fu_331_p1;
wire   [63:0] tmp_7_fu_346_p1;
wire   [63:0] tmp_8_fu_361_p1;
wire   [63:0] tmp_9_fu_376_p1;
wire   [63:0] tmp_1_fu_391_p1;
wire   [63:0] tmp_2_fu_406_p1;
wire   [63:0] tmp_3_fu_421_p1;
wire   [63:0] tmp_10_fu_436_p1;
wire   [63:0] tmp_11_fu_451_p1;
wire   [63:0] tmp_12_fu_466_p1;
wire   [63:0] tmp_13_fu_481_p1;
wire   [63:0] tmp_14_fu_496_p1;
wire   [127:0] r_V_16_fu_261_p2;
wire   [7:0] tmp_15_fu_267_p1;
wire   [7:0] p_Result_1_fu_276_p4;
wire   [7:0] p_Result_2_fu_291_p4;
wire   [7:0] p_Result_3_fu_306_p4;
wire   [7:0] p_Result_4_fu_321_p4;
wire   [7:0] p_Result_5_fu_336_p4;
wire   [7:0] p_Result_6_fu_351_p4;
wire   [7:0] p_Result_7_fu_366_p4;
wire   [7:0] p_Result_8_fu_381_p4;
wire   [7:0] p_Result_9_fu_396_p4;
wire   [7:0] p_Result_s_fu_411_p4;
wire   [7:0] p_Result_10_fu_426_p4;
wire   [7:0] p_Result_11_fu_441_p4;
wire   [7:0] p_Result_12_fu_456_p4;
wire   [7:0] p_Result_13_fu_471_p4;
wire   [7:0] p_Result_14_fu_486_p4;
wire   [4:0] rhs_V_cast_fu_505_p1;
wire   [4:0] lhs_V_cast_fu_501_p1;
wire   [5:0] rhs_V_1_cast_fu_518_p1;
wire   [5:0] lhs_V_4_cast_fu_515_p1;
wire   [5:0] rhs_V_2_cast_fu_527_p1;
wire   [5:0] r_V_2_fu_521_p2;
wire   [5:0] r_V_3_fu_530_p2;
wire   [6:0] rhs_V_3_cast_fu_540_p1;
wire   [6:0] lhs_V_6_cast_fu_536_p1;
wire   [6:0] rhs_V_4_cast_fu_549_p1;
wire   [6:0] r_V_4_fu_543_p2;
wire   [6:0] rhs_V_5_cast_fu_558_p1;
wire   [6:0] rhs_V_6_cast_fu_566_p1;
wire   [6:0] r_V_6_fu_561_p2;
wire   [6:0] r_V_7_fu_569_p2;
wire   [7:0] rhs_V_7_cast_fu_579_p1;
wire   [7:0] lhs_V_10_cast_fu_575_p1;
wire   [7:0] rhs_V_8_cast_fu_588_p1;
wire   [7:0] r_V_8_fu_582_p2;
wire   [7:0] rhs_V_9_cast_fu_597_p1;
wire   [7:0] rhs_V_10_cast_fu_605_p1;
wire   [7:0] r_V_10_fu_600_p2;
wire   [7:0] rhs_V_11_cast_fu_614_p1;
wire   [7:0] r_V_11_fu_608_p2;
wire   [7:0] rhs_V_12_cast_fu_623_p1;
wire   [7:0] r_V_12_fu_617_p2;
wire   [7:0] rhs_V_13_cast_fu_632_p1;
wire   [7:0] rhs_V_14_cast_fu_640_p1;
wire   [7:0] r_V_14_fu_635_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to4;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
end

stats_num_diff_bit_cnt_V #(
    .DataWidth( 4 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
bit_cnt_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(bit_cnt_V_address0),
    .ce0(bit_cnt_V_ce0),
    .q0(bit_cnt_V_q0),
    .address1(bit_cnt_V_address1),
    .ce1(bit_cnt_V_ce1),
    .q1(bit_cnt_V_q1),
    .address2(bit_cnt_V_address2),
    .ce2(bit_cnt_V_ce2),
    .q2(bit_cnt_V_q2),
    .address3(bit_cnt_V_address3),
    .ce3(bit_cnt_V_ce3),
    .q3(bit_cnt_V_q3),
    .address4(bit_cnt_V_address4),
    .ce4(bit_cnt_V_ce4),
    .q4(bit_cnt_V_q4),
    .address5(bit_cnt_V_address5),
    .ce5(bit_cnt_V_ce5),
    .q5(bit_cnt_V_q5),
    .address6(bit_cnt_V_address6),
    .ce6(bit_cnt_V_ce6),
    .q6(bit_cnt_V_q6),
    .address7(bit_cnt_V_address7),
    .ce7(bit_cnt_V_ce7),
    .q7(bit_cnt_V_q7),
    .address8(bit_cnt_V_address8),
    .ce8(bit_cnt_V_ce8),
    .q8(bit_cnt_V_q8),
    .address9(bit_cnt_V_address9),
    .ce9(bit_cnt_V_ce9),
    .q9(bit_cnt_V_q9),
    .address10(bit_cnt_V_address10),
    .ce10(bit_cnt_V_ce10),
    .q10(bit_cnt_V_q10),
    .address11(bit_cnt_V_address11),
    .ce11(bit_cnt_V_ce11),
    .q11(bit_cnt_V_q11),
    .address12(bit_cnt_V_address12),
    .ce12(bit_cnt_V_ce12),
    .q12(bit_cnt_V_q12),
    .address13(bit_cnt_V_address13),
    .ce13(bit_cnt_V_ce13),
    .q13(bit_cnt_V_q13),
    .address14(bit_cnt_V_address14),
    .ce14(bit_cnt_V_ce14),
    .q14(bit_cnt_V_q14),
    .address15(bit_cnt_V_address15),
    .ce15(bit_cnt_V_ce15),
    .q15(bit_cnt_V_q15)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_load_10_reg_769 <= bit_cnt_V_q10;
        bit_cnt_V_load_11_reg_774 <= bit_cnt_V_q11;
        bit_cnt_V_load_12_reg_779 <= bit_cnt_V_q12;
        bit_cnt_V_load_13_reg_784 <= bit_cnt_V_q13;
        bit_cnt_V_load_14_reg_789 <= bit_cnt_V_q14;
        bit_cnt_V_load_15_reg_794 <= bit_cnt_V_q15;
        bit_cnt_V_load_2_reg_729 <= bit_cnt_V_q2;
        bit_cnt_V_load_3_reg_734 <= bit_cnt_V_q3;
        bit_cnt_V_load_4_reg_739 <= bit_cnt_V_q4;
        bit_cnt_V_load_5_reg_744 <= bit_cnt_V_q5;
        bit_cnt_V_load_6_reg_749 <= bit_cnt_V_q6;
        bit_cnt_V_load_7_reg_754 <= bit_cnt_V_q7;
        bit_cnt_V_load_8_reg_759 <= bit_cnt_V_q8;
        bit_cnt_V_load_9_reg_764 <= bit_cnt_V_q9;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        bit_cnt_V_load_10_reg_769_pp0_iter2_reg <= bit_cnt_V_load_10_reg_769;
        bit_cnt_V_load_10_reg_769_pp0_iter3_reg <= bit_cnt_V_load_10_reg_769_pp0_iter2_reg;
        bit_cnt_V_load_11_reg_774_pp0_iter2_reg <= bit_cnt_V_load_11_reg_774;
        bit_cnt_V_load_11_reg_774_pp0_iter3_reg <= bit_cnt_V_load_11_reg_774_pp0_iter2_reg;
        bit_cnt_V_load_12_reg_779_pp0_iter2_reg <= bit_cnt_V_load_12_reg_779;
        bit_cnt_V_load_12_reg_779_pp0_iter3_reg <= bit_cnt_V_load_12_reg_779_pp0_iter2_reg;
        bit_cnt_V_load_13_reg_784_pp0_iter2_reg <= bit_cnt_V_load_13_reg_784;
        bit_cnt_V_load_13_reg_784_pp0_iter3_reg <= bit_cnt_V_load_13_reg_784_pp0_iter2_reg;
        bit_cnt_V_load_14_reg_789_pp0_iter2_reg <= bit_cnt_V_load_14_reg_789;
        bit_cnt_V_load_14_reg_789_pp0_iter3_reg <= bit_cnt_V_load_14_reg_789_pp0_iter2_reg;
        bit_cnt_V_load_14_reg_789_pp0_iter4_reg <= bit_cnt_V_load_14_reg_789_pp0_iter3_reg;
        bit_cnt_V_load_15_reg_794_pp0_iter2_reg <= bit_cnt_V_load_15_reg_794;
        bit_cnt_V_load_15_reg_794_pp0_iter3_reg <= bit_cnt_V_load_15_reg_794_pp0_iter2_reg;
        bit_cnt_V_load_15_reg_794_pp0_iter4_reg <= bit_cnt_V_load_15_reg_794_pp0_iter3_reg;
        bit_cnt_V_load_6_reg_749_pp0_iter2_reg <= bit_cnt_V_load_6_reg_749;
        bit_cnt_V_load_7_reg_754_pp0_iter2_reg <= bit_cnt_V_load_7_reg_754;
        bit_cnt_V_load_8_reg_759_pp0_iter2_reg <= bit_cnt_V_load_8_reg_759;
        bit_cnt_V_load_9_reg_764_pp0_iter2_reg <= bit_cnt_V_load_9_reg_764;
        r_V_13_reg_814 <= r_V_13_fu_626_p2;
        r_V_5_reg_804 <= r_V_5_fu_552_p2;
        r_V_9_reg_809 <= r_V_9_fu_591_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_V_reg_799 <= r_V_fu_509_p2;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce0 = 1'b1;
    end else begin
        bit_cnt_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce1 = 1'b1;
    end else begin
        bit_cnt_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce10 = 1'b1;
    end else begin
        bit_cnt_V_ce10 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce11 = 1'b1;
    end else begin
        bit_cnt_V_ce11 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce12 = 1'b1;
    end else begin
        bit_cnt_V_ce12 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce13 = 1'b1;
    end else begin
        bit_cnt_V_ce13 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce14 = 1'b1;
    end else begin
        bit_cnt_V_ce14 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce15 = 1'b1;
    end else begin
        bit_cnt_V_ce15 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce2 = 1'b1;
    end else begin
        bit_cnt_V_ce2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce3 = 1'b1;
    end else begin
        bit_cnt_V_ce3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce4 = 1'b1;
    end else begin
        bit_cnt_V_ce4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce5 = 1'b1;
    end else begin
        bit_cnt_V_ce5 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce6 = 1'b1;
    end else begin
        bit_cnt_V_ce6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce7 = 1'b1;
    end else begin
        bit_cnt_V_ce7 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce8 = 1'b1;
    end else begin
        bit_cnt_V_ce8 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bit_cnt_V_ce9 = 1'b1;
    end else begin
        bit_cnt_V_ce9 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b0 == ap_ce) | ((ap_start == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start == 1'b0);
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_return = (rhs_V_14_cast_fu_640_p1 + r_V_14_fu_635_p2);

assign bit_cnt_V_address0 = tmp_fu_271_p1;

assign bit_cnt_V_address1 = tmp_s_fu_286_p1;

assign bit_cnt_V_address10 = tmp_3_fu_421_p1;

assign bit_cnt_V_address11 = tmp_10_fu_436_p1;

assign bit_cnt_V_address12 = tmp_11_fu_451_p1;

assign bit_cnt_V_address13 = tmp_12_fu_466_p1;

assign bit_cnt_V_address14 = tmp_13_fu_481_p1;

assign bit_cnt_V_address15 = tmp_14_fu_496_p1;

assign bit_cnt_V_address2 = tmp_4_fu_301_p1;

assign bit_cnt_V_address3 = tmp_5_fu_316_p1;

assign bit_cnt_V_address4 = tmp_6_fu_331_p1;

assign bit_cnt_V_address5 = tmp_7_fu_346_p1;

assign bit_cnt_V_address6 = tmp_8_fu_361_p1;

assign bit_cnt_V_address7 = tmp_9_fu_376_p1;

assign bit_cnt_V_address8 = tmp_1_fu_391_p1;

assign bit_cnt_V_address9 = tmp_2_fu_406_p1;

assign lhs_V_10_cast_fu_575_p1 = r_V_7_fu_569_p2;

assign lhs_V_4_cast_fu_515_p1 = r_V_reg_799;

assign lhs_V_6_cast_fu_536_p1 = r_V_3_fu_530_p2;

assign lhs_V_cast_fu_501_p1 = bit_cnt_V_q0;

assign p_Result_10_fu_426_p4 = {{r_V_16_fu_261_p2[95:88]}};

assign p_Result_11_fu_441_p4 = {{r_V_16_fu_261_p2[103:96]}};

assign p_Result_12_fu_456_p4 = {{r_V_16_fu_261_p2[111:104]}};

assign p_Result_13_fu_471_p4 = {{r_V_16_fu_261_p2[119:112]}};

assign p_Result_14_fu_486_p4 = {{r_V_16_fu_261_p2[127:120]}};

assign p_Result_1_fu_276_p4 = {{r_V_16_fu_261_p2[15:8]}};

assign p_Result_2_fu_291_p4 = {{r_V_16_fu_261_p2[23:16]}};

assign p_Result_3_fu_306_p4 = {{r_V_16_fu_261_p2[31:24]}};

assign p_Result_4_fu_321_p4 = {{r_V_16_fu_261_p2[39:32]}};

assign p_Result_5_fu_336_p4 = {{r_V_16_fu_261_p2[47:40]}};

assign p_Result_6_fu_351_p4 = {{r_V_16_fu_261_p2[55:48]}};

assign p_Result_7_fu_366_p4 = {{r_V_16_fu_261_p2[63:56]}};

assign p_Result_8_fu_381_p4 = {{r_V_16_fu_261_p2[71:64]}};

assign p_Result_9_fu_396_p4 = {{r_V_16_fu_261_p2[79:72]}};

assign p_Result_s_fu_411_p4 = {{r_V_16_fu_261_p2[87:80]}};

assign r_V_10_fu_600_p2 = (rhs_V_9_cast_fu_597_p1 + r_V_9_reg_809);

assign r_V_11_fu_608_p2 = (rhs_V_10_cast_fu_605_p1 + r_V_10_fu_600_p2);

assign r_V_12_fu_617_p2 = (rhs_V_11_cast_fu_614_p1 + r_V_11_fu_608_p2);

assign r_V_13_fu_626_p2 = (rhs_V_12_cast_fu_623_p1 + r_V_12_fu_617_p2);

assign r_V_14_fu_635_p2 = (rhs_V_13_cast_fu_632_p1 + r_V_13_reg_814);

assign r_V_16_fu_261_p2 = (in2_V ^ in1_V);

assign r_V_2_fu_521_p2 = (rhs_V_1_cast_fu_518_p1 + lhs_V_4_cast_fu_515_p1);

assign r_V_3_fu_530_p2 = (rhs_V_2_cast_fu_527_p1 + r_V_2_fu_521_p2);

assign r_V_4_fu_543_p2 = (rhs_V_3_cast_fu_540_p1 + lhs_V_6_cast_fu_536_p1);

assign r_V_5_fu_552_p2 = (rhs_V_4_cast_fu_549_p1 + r_V_4_fu_543_p2);

assign r_V_6_fu_561_p2 = (rhs_V_5_cast_fu_558_p1 + r_V_5_reg_804);

assign r_V_7_fu_569_p2 = (rhs_V_6_cast_fu_566_p1 + r_V_6_fu_561_p2);

assign r_V_8_fu_582_p2 = (rhs_V_7_cast_fu_579_p1 + lhs_V_10_cast_fu_575_p1);

assign r_V_9_fu_591_p2 = (rhs_V_8_cast_fu_588_p1 + r_V_8_fu_582_p2);

assign r_V_fu_509_p2 = (rhs_V_cast_fu_505_p1 + lhs_V_cast_fu_501_p1);

assign rhs_V_10_cast_fu_605_p1 = bit_cnt_V_load_11_reg_774_pp0_iter3_reg;

assign rhs_V_11_cast_fu_614_p1 = bit_cnt_V_load_12_reg_779_pp0_iter3_reg;

assign rhs_V_12_cast_fu_623_p1 = bit_cnt_V_load_13_reg_784_pp0_iter3_reg;

assign rhs_V_13_cast_fu_632_p1 = bit_cnt_V_load_14_reg_789_pp0_iter4_reg;

assign rhs_V_14_cast_fu_640_p1 = bit_cnt_V_load_15_reg_794_pp0_iter4_reg;

assign rhs_V_1_cast_fu_518_p1 = bit_cnt_V_load_2_reg_729;

assign rhs_V_2_cast_fu_527_p1 = bit_cnt_V_load_3_reg_734;

assign rhs_V_3_cast_fu_540_p1 = bit_cnt_V_load_4_reg_739;

assign rhs_V_4_cast_fu_549_p1 = bit_cnt_V_load_5_reg_744;

assign rhs_V_5_cast_fu_558_p1 = bit_cnt_V_load_6_reg_749_pp0_iter2_reg;

assign rhs_V_6_cast_fu_566_p1 = bit_cnt_V_load_7_reg_754_pp0_iter2_reg;

assign rhs_V_7_cast_fu_579_p1 = bit_cnt_V_load_8_reg_759_pp0_iter2_reg;

assign rhs_V_8_cast_fu_588_p1 = bit_cnt_V_load_9_reg_764_pp0_iter2_reg;

assign rhs_V_9_cast_fu_597_p1 = bit_cnt_V_load_10_reg_769_pp0_iter3_reg;

assign rhs_V_cast_fu_505_p1 = bit_cnt_V_q1;

assign tmp_10_fu_436_p1 = p_Result_10_fu_426_p4;

assign tmp_11_fu_451_p1 = p_Result_11_fu_441_p4;

assign tmp_12_fu_466_p1 = p_Result_12_fu_456_p4;

assign tmp_13_fu_481_p1 = p_Result_13_fu_471_p4;

assign tmp_14_fu_496_p1 = p_Result_14_fu_486_p4;

assign tmp_15_fu_267_p1 = r_V_16_fu_261_p2[7:0];

assign tmp_1_fu_391_p1 = p_Result_8_fu_381_p4;

assign tmp_2_fu_406_p1 = p_Result_9_fu_396_p4;

assign tmp_3_fu_421_p1 = p_Result_s_fu_411_p4;

assign tmp_4_fu_301_p1 = p_Result_2_fu_291_p4;

assign tmp_5_fu_316_p1 = p_Result_3_fu_306_p4;

assign tmp_6_fu_331_p1 = p_Result_4_fu_321_p4;

assign tmp_7_fu_346_p1 = p_Result_5_fu_336_p4;

assign tmp_8_fu_361_p1 = p_Result_6_fu_351_p4;

assign tmp_9_fu_376_p1 = p_Result_7_fu_366_p4;

assign tmp_fu_271_p1 = tmp_15_fu_267_p1;

assign tmp_s_fu_286_p1 = p_Result_1_fu_276_p4;

endmodule //stats_num_diff