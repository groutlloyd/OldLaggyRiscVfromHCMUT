`timescale 1ns/1ps

module test_bench ();

	reg CLOCK_50;
	reg rst;

	// 50MHz
	initial begin
		CLOCK_50 = 0;
		forever #5 CLOCK_50 = ~CLOCK_50;
	end

	initial begin
		rst = 1;
		#6 rst = 0;
		#120000 $stop;
	end

	toplevel risc_v (
		.clock(CLOCK_50),
		.reset(rst)
	);

endmodule // test_bench