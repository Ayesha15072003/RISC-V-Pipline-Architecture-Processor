module reg_file (
    input logic clk,
    input logic rf_en,
    input logic [4:0] rs1,
    input logic [4:0] rs2,
    input logic [4:0] rd,
    input logic [31:0] wdata,
    input logic [6:0] opcode,
    output logic [31:0] rdata1,
    output logic [31:0] rdata2
);
  logic [31:0] reg_mem[32];

  //asynchronous read
  always_comb begin
    rdata1 = reg_mem[rs1];
    rdata2 = reg_mem[rs2];
  end

  //synchronous write
  always_ff @(posedge clk) begin
    if (rf_en) begin
      if (opcode == 7'b0110111 || opcode == 7'b0010111) begin
        // Only modify the upper 20 bits for LUI and AUIPC
        reg_mem[rd] <= {wdata[31:12], reg_mem[rd][11:0]};
      end else begin
        reg_mem[rd] <= wdata;
      end
    end
  end

endmodule
