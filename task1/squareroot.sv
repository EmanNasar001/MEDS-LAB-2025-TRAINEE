module sqrt_integer;
module sqrt_integer;
    int x = 9;
    int result;
initial begin
        result = sqrt(x);
        $display("sqrt(%0d) = %0d", x, result);
    end

    function int sqrt(input int x);
        int left, right, mid, solution;
        
        if (x < 0) begin
            $display("Sqrt of negative values is not allowed");
            return -1;
        end
        
        if (x < 2) begin
            return x;
        end

        left = 0;
        right = x;
        solution = 0;

        while (left <= right) begin
            mid = (left + right) / 2;

            if (mid * mid > x) begin
                right = mid - 1;
            end
            else if (mid * mid < x) begin
                solution = mid;
                left = mid + 1;
            end
            else begin
                return mid;
            end
        end

        return solution;
    endfunction
endmodule