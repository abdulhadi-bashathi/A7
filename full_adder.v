module full_adder (
    input  wire a,
    input  wire b,
    input  wire cin,
    output wire s,
    output wire c
);
	wire w1, w2, w3;
    half_adder h1(
	.a(a),
	.b(b),
	.s(w1),
	.c(w2)
);
    half_adder h2(
	.a(cin),
	.b(w1),
	.s(s),
	.c(w3)
);

	assign c = w2 || w3;

endmodule

