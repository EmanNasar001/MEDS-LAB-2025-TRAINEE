module exp_taylor_simple (
    input  logic [7:0] y,          // Integer input y
    output logic [31:0] exp_out    // Integer output (approximation of e^y)
);
    logic [31:0] exp_sum;
    logic [31:0] power;
    logic [31:0] factorial;
    logic [31:0] term;

    always_comb begin
        exp_sum = 0;

        for (int i = 0; i <= 6; i++) begin
            // Calculate y^i
            power = 1;
            for (int p = 0; p < i; p++) begin
                power = power * y;
            end

            // Calculate i!
            factorial = 1;
            for (int f = 2; f <= i; f++) begin
                factorial = factorial * f;
            end

            // Calculate term = y^i / i!
            term = (factorial != 0) ? (power / factorial) : 1;

            // Accumulate the result
            exp_sum = exp_sum + term;
        end

        exp_out = exp_sum;
    end
endmodule
