module PRPG(clk, clr, X_out);
input clk;
input clr;
output [3:1] X_out;
reg [3:1] tmp;
initial tmp = 3'b1;
always@ (posedge clk)
    begin
        if (clr)
            tmp<=1;
        else
        begin
            tmp<={tmp[3:1],tmp[3]^tmp[1]};
            /*tmp[3] <= tmp[2];
              tmp[2] <= tmp[1];
              tmp[1] <= tmp[3]^tmp[1];*/
        end
    end
assign  X_out = tmp;
endmodule