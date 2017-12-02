`timescale 1ns / 1ps

module hello(
    input logic CLK100MHZ,
    input logic [3:0] sw,
    output logic [3:0] led
);

// iverilog doesn't support `always_ff`
always @(posedge CLK100MHZ)
begin
    if(sw[0] == 0)
    begin
        led <= 4'b0001;
    end
    else
    begin
        led <= 4'b0000;
    end
end

endmodule
