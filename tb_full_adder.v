module tb_full_adder;
    reg a;
    reg b;
    reg cin;
    wire s;
    wire c;

    // Instantiate DUT
    full_adder f1 (
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
	.c(c)
    );

    initial begin
        // VCD file for waveform viewing
        $dumpfile("wave.vcd");
        $dumpvars(0, f1); // dump all signals in testbench and DUT

        // Monitor signals in console
        $monitor("Time=%0t | a=%b b=%b cin=%b | s=%b c=%b",
                  $time, a, b, cin, s, c);

        // Test vectors
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;	
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;	
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;	

        $finish;
    end

endmodule
