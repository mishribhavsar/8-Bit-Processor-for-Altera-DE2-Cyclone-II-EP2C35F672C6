// VCD dump for tb_trace_ooo (GTKWave); tags are Z when not valid
`timescale 1ns/1ps
module wave;
    wire        clk       = tb_trace_ooo.clk;
    wire        dispatch  = tb_trace_ooo.dut.d_fire;
    wire [7:0]  disp_pc   = tb_trace_ooo.dut.d_fire ? tb_trace_ooo.dut.fb_pc : 8'bz;
    
    wire [2:0]  disp_tag  = tb_trace_ooo.dut.d_fire ? tb_trace_ooo.dut.tail : 3'bz;
    wire        alu_issue = tb_trace_ooo.dut.alu_issue;
    wire [2:0]  alu_tag   = tb_trace_ooo.dut.alu_issue ? tb_trace_ooo.dut.ra_tag[tb_trace_ooo.dut.ra_sel] : 3'bz;
    wire        md_issue  = tb_trace_ooo.dut.md_issue;
    wire [2:0]  md_tag    = tb_trace_ooo.dut.md_issue ? tb_trace_ooo.dut.rm_tag[tb_trace_ooo.dut.rm_sel] : 3'bz;
    wire        md_busy   = tb_trace_ooo.dut.md_busy;
    wire        cdb_v     = tb_trace_ooo.dut.cdb_v;
    wire [2:0]  cdb_tag   = tb_trace_ooo.dut.cdb_v ? tb_trace_ooo.dut.cdb_tag : 3'bz;
    wire [7:0]  cdb_val   = tb_trace_ooo.dut.cdb_v ? tb_trace_ooo.dut.cdb_val : 8'bz;
    wire        commit    = tb_trace_ooo.dut.c_fire;
    wire [2:0]  commit_tag = tb_trace_ooo.dut.c_fire ? tb_trace_ooo.dut.head : 3'bz;
    wire [3:0]  rob_count = tb_trace_ooo.dut.count;
    initial begin $dumpfile("mul_loop.vcd"); $dumpvars(1, wave); end
endmodule
