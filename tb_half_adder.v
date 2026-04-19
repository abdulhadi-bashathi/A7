module tb_full_adder;
    reg a;
    reg b;
    wire s;
    wire c;

    // Instantiate DUT
    half_adder h1 (
        .a(a),
        .b(b),
        .s(s),
	.c(c)
    );

    initial begin
        // VCD file for waveform viewing
        $dumpfile("wave.vcd");
        $dumpvars(0, h1); // dump all signals in testbench and DUT

        // Monitor signals in console
        $monitor("Time=%0t | a=%b b=%b | s=%b c=%b",
                  $time, a, b, s, c);

        // Test vectors
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule
