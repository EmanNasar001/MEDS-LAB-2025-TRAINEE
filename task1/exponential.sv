module exp_taylor;
    function int fact(input int z);
        int result = 1;
        for (int i = 2; i <= z; i++) begin
            result *= i;
        end
        return result;
    endfunction

    function real exp(input real y);
        real exp_sum = 0.0;
        int n = 50;
        for (int i = 0; i <= n; i++) begin
            real m = (y ** i) / fact(i);  // Using the built-in power operator
            exp_sum = m + exp_sum;
        end
        return exp_sum;
    endfunction

    initial begin
        real test_val = 2.0;
        real test = exp(test_val);
        $display("exp(%0.2f) ≈ %0.9f", test_val, test);
    end

endmodule
