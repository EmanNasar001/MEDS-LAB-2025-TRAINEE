module sqrt_integer (
    input  logic [31:0] x,
    output logic [31:0] result
);

    function automatic logic [31:0] sqrt(input logic [31:0] x);
        logic [31:0] left, right, mid, solution;
        
        if (x < 2) begin
            return x;
        end

        left = 0;
        right = x;
        solution = 0;

        while (left <= right) begin
            mid = (left + right) >> 1;  // Division by 2

            if (mid * mid > x) begin
                right = mid - 1;
            end else if (mid * mid < x) begin
                solution = mid;
                left = mid + 1;
            end else begin
                return mid;
            end
        end

        return solution;
    endfunction

    assign result = sqrt(x);

endmodule
