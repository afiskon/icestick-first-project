`timescale 1ns / 1ps

module hello_sim();
    logic clck_t;
    logic [3:0] sw_t;
    logic [3:0] led_t;

    hello hello_t(clck_t, sw_t, led_t);

    initial begin
        clck_t <= 0;
        sw_t <= 4'b0000; #1; clck_t <= 1; #1; clck_t <= 0; #1;
        $display("%b", led_t);
        
        sw_t <= 4'b0001; #1; clck_t <= 1; #1; clck_t <= 0; #1;
        $display("%b", led_t);
    end

    initial begin 
        $dumpfile("hello.vcd"); 
        $dumpvars; 
    end 

endmodule
