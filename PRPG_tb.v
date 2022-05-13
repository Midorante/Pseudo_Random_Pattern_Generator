module PRPG_tb;
reg clk,clr;    //input
wire [3:1] X_out;   //output
initial begin
    #0;
    forever
    begin
        clk = 1'b0;
        #5 clk = 1'b1;
        #5;
    end
end
initial begin
    #0 clr=1'b1;   //歸零
    #10 clr=1'b0;
    #190 $finish;
end
PRPG PRPG_tb(.clk(clk), .clr(clr), .X_out(X_out));
initial begin
    $dumpfile("PRPG.vcd");
    $dumpvars(0, PRPG_tb);
end
endmodule