module exp_taylor #(
    parameter int TERMS = 500
)(
    input  logic       clk,
    input  logic       rst,
    input  logic       start,
    input  real        x,
    output logic       done,
    output real        result
);

    real term;
    int  i;
    logic calculating;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            result      <= 1.0;
            term        <= 1.0;
            i           <= 1;
            calculating <= 0;
            done        <= 0;
        end else begin
            if (start && !calculating) begin
                result      <= 1.0;
                term        <= 1.0;
                i           <= 1;
                calculating <= 1;
                done        <= 0;
            end else if (calculating) begin
                if (i < TERMS) begin
                    term   <= term * x / i;
                    result <= result + term;
                    i      <= i + 1;
                end else begin
                    calculating <= 0;
                    done        <= 1;
                end
            end
        end
    end

endmodule

