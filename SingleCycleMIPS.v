`timescale 1ns / 1ps

module D_ff(
    input clk,
    input reset,
    input regWrite,
    input d,
    input decOut,
    output reg q
    );
always @ (negedge clk)
begin
    if(reset==1)
        q=0;
    else
    if(regWrite == 1 && decOut==1)
    begin
        q=d;  
    end
end  

endmodule

module register32bit(input clk,input reset, input regWrite,input decOut,input [31:0] writeData,output
[31:0] outBus);

    D_ff dff0(clk,reset,regWrite,writeData[0],decOut,outBus[0]);
    D_ff dff1(clk,reset,regWrite,writeData[1],decOut,outBus[1]);
    D_ff dff2(clk,reset,regWrite,writeData[2],decOut,outBus[2]);
    D_ff dff3(clk,reset,regWrite,writeData[3],decOut,outBus[3]);
    D_ff dff4(clk,reset,regWrite,writeData[4],decOut,outBus[4]);
    D_ff dff5(clk,reset,regWrite,writeData[5],decOut,outBus[5]);
    D_ff dff6(clk,reset,regWrite,writeData[6],decOut,outBus[6]);
    D_ff dff7(clk,reset,regWrite,writeData[7],decOut,outBus[7]);
    D_ff dff8(clk,reset,regWrite,writeData[8],decOut,outBus[8]);
    D_ff dff9(clk,reset,regWrite,writeData[9],decOut,outBus[9]);
    D_ff dff10(clk,reset,regWrite,writeData[10],decOut,outBus[10]);
    D_ff dff11(clk,reset,regWrite,writeData[11],decOut,outBus[11]);
    D_ff dff12(clk,reset,regWrite,writeData[12],decOut,outBus[12]);
    D_ff dff13(clk,reset,regWrite,writeData[13],decOut,outBus[13]);
    D_ff dff14(clk,reset,regWrite,writeData[14],decOut,outBus[14]);
    D_ff dff15(clk,reset,regWrite,writeData[15],decOut,outBus[15]);
    D_ff dff16(clk,reset,regWrite,writeData[16],decOut,outBus[16]);
    D_ff dff17(clk,reset,regWrite,writeData[17],decOut,outBus[17]);
    D_ff dff18(clk,reset,regWrite,writeData[18],decOut,outBus[18]);
    D_ff dff19(clk,reset,regWrite,writeData[19],decOut,outBus[19]);
    D_ff dff20(clk,reset,regWrite,writeData[20],decOut,outBus[20]);
    D_ff dff21(clk,reset,regWrite,writeData[21],decOut,outBus[21]);
    D_ff dff22(clk,reset,regWrite,writeData[22],decOut,outBus[22]);
    D_ff dff23(clk,reset,regWrite,writeData[23],decOut,outBus[23]);
    D_ff dff24(clk,reset,regWrite,writeData[24],decOut,outBus[24]);
    D_ff dff25(clk,reset,regWrite,writeData[25],decOut,outBus[25]);
    D_ff dff26(clk,reset,regWrite,writeData[26],decOut,outBus[26]);
    D_ff dff27(clk,reset,regWrite,writeData[27],decOut,outBus[27]);
    D_ff dff28(clk,reset,regWrite,writeData[28],decOut,outBus[28]);
    D_ff dff29(clk,reset,regWrite,writeData[29],decOut,outBus[29]);
    D_ff dff30(clk,reset,regWrite,writeData[30],decOut,outBus[30]);
    D_ff dff31(clk,reset,regWrite,writeData[31],decOut,outBus[31]);

endmodule

module registerSet( input clk, input reset, input regWrite, input [31:0] decOut, input [31:0]
writeData, output [31:0] outR0,output [31:0] outR1,output [31:0] outR2,output [31:0] outR3,output
[31:0] outR4,output [31:0] outR5,output [31:0] outR6,output [31:0] outR7, output [31:0] outR8,output
[31:0] outR9,output [31:0] outR10,output [31:0] outR11,output [31:0] outR12,output [31:0]
outR13,output [31:0] outR14,output [31:0] outR15,output [31:0] outR16,output [31:0] outR17,output
[31:0] outR18,output [31:0] outR19,output [31:0] outR20,output [31:0] outR21,output [31:0]
outR22,output [31:0] outR23,output [31:0] outR24,output [31:0] outR25,output [31:0] outR26,output
[31:0] outR27,output [31:0] outR28,output [31:0] outR29,output [31:0] outR30,output [31:0] outR31);


    register32bit reg0(clk,reset,regWrite,decOut[0],writeData[31:0],outR0[31:0]);
    register32bit reg1(clk,reset,regWrite,decOut[1],writeData[31:0],outR1[31:0]);
    register32bit reg2(clk,reset,regWrite,decOut[2],writeData[31:0],outR2[31:0]);
    register32bit reg3(clk,reset,regWrite,decOut[3],writeData[31:0],outR3[31:0]);
    register32bit reg4(clk,reset,regWrite,decOut[4],writeData[31:0],outR4[31:0]);
    register32bit reg5(clk,reset,regWrite,decOut[5],writeData[31:0],outR5[31:0]);
    register32bit reg6(clk,reset,regWrite,decOut[6],writeData[31:0],outR6[31:0]);
    register32bit reg7(clk,reset,regWrite,decOut[7],writeData[31:0],outR7[31:0]);
    register32bit reg8(clk,reset,regWrite,decOut[8],writeData[31:0],outR8[31:0]);
    register32bit reg9(clk,reset,regWrite,decOut[9],writeData[31:0],outR9[31:0]);
    register32bit reg10(clk,reset,regWrite,decOut[10],writeData[31:0],outR10[31:0]);
    register32bit reg11(clk,reset,regWrite,decOut[11],writeData[31:0],outR11[31:0]);
    register32bit reg12(clk,reset,regWrite,decOut[12],writeData[31:0],outR12[31:0]);
    register32bit reg13(clk,reset,regWrite,decOut[13],writeData[31:0],outR13[31:0]);
    register32bit reg14(clk,reset,regWrite,decOut[14],writeData[31:0],outR14[31:0]);
    register32bit reg15(clk,reset,regWrite,decOut[15],writeData[31:0],outR15[31:0]);
    register32bit reg16(clk,reset,regWrite,decOut[16],writeData[31:0],outR16[31:0]);
    register32bit reg17(clk,reset,regWrite,decOut[17],writeData[31:0],outR17[31:0]);
    register32bit reg18(clk,reset,regWrite,decOut[18],writeData[31:0],outR18[31:0]);
    register32bit reg19(clk,reset,regWrite,decOut[19],writeData[31:0],outR19[31:0]);
    register32bit reg20(clk,reset,regWrite,decOut[20],writeData[31:0],outR20[31:0]);
    register32bit reg21(clk,reset,regWrite,decOut[21],writeData[31:0],outR21[31:0]);
    register32bit reg22(clk,reset,regWrite,decOut[22],writeData[31:0],outR22[31:0]);
    register32bit reg23(clk,reset,regWrite,decOut[23],writeData[31:0],outR23[31:0]);
    register32bit reg24(clk,reset,regWrite,decOut[24],writeData[31:0],outR24[31:0]);
    register32bit reg25(clk,reset,regWrite,decOut[25],writeData[31:0],outR25[31:0]);
    register32bit reg26(clk,reset,regWrite,decOut[26],writeData[31:0],outR26[31:0]);
    register32bit reg27(clk,reset,regWrite,decOut[27],writeData[31:0],outR27[31:0]);
    register32bit reg28(clk,reset,regWrite,decOut[28],writeData[31:0],outR28[31:0]);
    register32bit reg29(clk,reset,regWrite,decOut[29],writeData[31:0],outR29[31:0]);
    register32bit reg30(clk,reset,regWrite,decOut[30],writeData[31:0],outR30[31:0]);
    register32bit reg31(clk,reset,regWrite,decOut[31],writeData[31:0],outR31[31:0]);

endmodule

module decoder(input [4:0] destReg, output reg [31:0] decOut);
   always @(destReg)
         case (destReg)
            5'b00000  : decOut <= 32'b00000000000000000000000000000001;
            5'b00001  : decOut <= 32'b00000000000000000000000000000010;
            5'b00010  : decOut <= 32'b00000000000000000000000000000100;
            5'b00011  : decOut <= 32'b00000000000000000000000000001000;
            5'b00100  : decOut <= 32'b00000000000000000000000000010000;
            5'b00101  : decOut <= 32'b00000000000000000000000000100000;
            5'b00110  : decOut <= 32'b00000000000000000000000001000000;
            5'b00111  : decOut <= 32'b00000000000000000000000010000000;
            5'b01000  : decOut <= 32'b00000000000000000000000100000000;
            5'b01001  : decOut <= 32'b00000000000000000000001000000000;
            5'b01010  : decOut <= 32'b00000000000000000000010000000000;
            5'b01011  : decOut <= 32'b00000000000000000000100000000000;
            5'b01100  : decOut <= 32'b00000000000000000001000000000000;
            5'b01101  : decOut <= 32'b00000000000000000010000000000000;
            5'b01110  : decOut <= 32'b00000000000000000100000000000000;
            5'b01111  : decOut <= 32'b00000000000000001000000000000000;   
            5'b10000  : decOut <= 32'b00000000000000010000000000000000;
            5'b10001  : decOut <= 32'b00000000000000100000000000000000;
            5'b10010  : decOut <= 32'b00000000000001000000000000000000;
            5'b10011  : decOut <= 32'b00000000000010000000000000000000;
            5'b10100  : decOut <= 32'b00000000000100000000000000000000;
            5'b10101  : decOut <= 32'b00000000001000000000000000000000;
            5'b10110  : decOut <= 32'b00000000010000000000000000000000;
            5'b10111  : decOut <= 32'b00000000100000000000000000000000;
            5'b11000  : decOut <= 32'b00000001000000000000000000000000;
            5'b11001  : decOut <= 32'b00000010000000000000000000000000;
            5'b11010  : decOut <= 32'b00000100000000000000000000000000;
            5'b11011  : decOut <= 32'b00001000000000000000000000000000;
            5'b11100  : decOut <= 32'b00010000000000000000000000000000;
            5'b11101  : decOut <= 32'b00100000000000000000000000000000;
            5'b11110  : decOut <= 32'b01000000000000000000000000000000;
            5'b11111  : decOut <= 32'b10000000000000000000000000000000;

            default : decOut <= 32'd0000000000000000000000000000000;
         endcase

endmodule

module Mux32to1(input [31:0] outR0,input [31:0] outR1,input [31:0] outR2,input [31:0]
outR3,input [31:0] outR4,input [31:0] outR5,input [31:0] outR6,input [31:0] outR7, input [31:0]
outR8,input [31:0] outR9,input [31:0] outR10,input [31:0] outR11,input [31:0] outR12,input [31:0]
outR13,input [31:0] outR14,input [31:0] outR15,input [31:0] outR16,input [31:0] outR17,input [31:0]
outR18,input [31:0] outR19,input [31:0] outR20,input [31:0] outR21,input [31:0] outR22,input [31:0]
outR23,input [31:0] outR24,input [31:0] outR25,input [31:0] outR26,input [31:0] outR27,input [31:0]
outR28,input [31:0] outR29,input [31:0] outR30,input [31:0] outR31,input [4:0] Sel,output reg [31:0]
outBus);

   always @(Sel, outR0, outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,
   outR15,outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31)
    case (Sel)
    
        
        5'b00000: outBus = outR0;
        5'b00001: outBus = outR1;
        5'b00010: outBus = outR2;
        5'b00011: outBus = outR3;
        5'b00100: outBus = outR4;
        5'b00101: outBus = outR5;
        5'b00110: outBus = outR6;
        5'b00111: outBus = outR7;
        5'b01000: outBus = outR8;
        5'b01001: outBus = outR9;
        5'b01010: outBus = outR10;
        5'b01011: outBus = outR11;
        5'b01100: outBus = outR12;
        5'b01101: outBus = outR13;
        5'b01110: outBus = outR14;
        5'b01111: outBus = outR15;
        5'b10000: outBus = outR16;
        5'b10001: outBus = outR17;
        5'b10010: outBus = outR18;
        5'b10011: outBus = outR19;
        5'b10100: outBus = outR20;
        5'b10101: outBus = outR21;
        5'b10110: outBus = outR22;
        5'b10111: outBus = outR23;
        5'b11000: outBus = outR24;
        5'b11001: outBus = outR25;
        5'b11010: outBus = outR26;
        5'b11011: outBus = outR27;
        5'b11100: outBus = outR28;
        5'b11101: outBus = outR29;
        5'b11110: outBus = outR30;
        5'b11111: outBus = outR31;
    endcase
endmodule

module RegFile(
    input clk,
    input reset,
    input regWrite,
    input [4:0] srcRegA,
    input [4:0] srcRegB,
    input [4:0] destReg,
    input [31:0] writeData,
    output [31:0] outBusA,
    output [31:0] outBusB
    );
    wire [31:0] outR0, outR1, outR2, outR3, outR4, outR5, outR6, outR7, outR8, outR9, outR10, outR11, outR12, outR13, outR14, outR15, outR16, outR17,
    outR18, outR19, outR20, outR21, outR22, outR23, outR24, outR25, outR26, outR27, outR28, outR29, outR30, outR31;

    wire [31:0] decOut;


    decoder deco(destReg,decOut[31:0]);

    registerSet RegSet(clk,reset,regWrite,decOut,writeData,outR0[31:0],outR1[31:0],outR2[31:0],outR3[31:0],outR4[31:0],outR5[31:0],outR6[31:0],
    outR7[31:0],outR8[31:0],outR9[31:0],outR10[31:0],outR11[31:0],outR12[31:0],outR13[31:0],outR14[31:0],outR15[31:0],outR16[31:0],outR17[31:0],
    outR18[31:0],outR19[31:0],outR20[31:0],outR21[31:0],outR22[31:0],outR23[31:0],outR24[31:0],outR25[31:0],outR26[31:0],outR27[31:0],
    outR28[31:0],outR29[31:0],outR30[31:0],outR31[31:0]);

    Mux32to1 Mux_A(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,outR16,outR17,outR18,
    outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,srcRegA,outBusA[31:0]);

    Mux32to1 Mux_B(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,outR16,outR17,outR18,
    outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,srcRegB,outBusB[31:0]);

endmodule

module Adder(input [31:0] inputA,input [31:0] inputB,output reg [31:0] ALUOut);

always@(inputA or inputB)
	begin
		ALUOut<=inputA+inputB;
	end

endmodule

module InstructionMem(
    input [31:0] address,
    output reg [31:0] instruction
);
reg [31:0] memory [0:255];
initial begin 
    $readmemb("instructions.tv", memory);
end
always @(address) 
begin
    instruction<=memory[address[31:2]];
end
endmodule


module controlUnit(
    input [5:0] opCode,
    input [5:0] funcField,
    output reg aluSrcA,
    output reg [1:0] aluSrcB,
    output reg [3:0] aluCtrl,
    output reg memRd,
    output reg memWr,
    output reg [1:0] hiSel,
    output reg [1:0] loSel,
    output reg hiWr,
    output reg loWr,
    output reg maluOp,
    output reg [2:0] memtoReg,
    output reg regDst,
    output reg regWr,
    output reg branch,
    output reg jump,
    output reg jalr
);
always @(opCode or funcField)
begin
    if(opCode == 6'd0)//SPECIAL
    begin
        case(funcField)
        6'b100000://add
            begin
                aluSrcA = 1'd0;
                aluSrcB = 2'd0;
                aluCtrl = 4'd0;
                memRd = 1'd0;
                memWr = 1'd0;
                hiSel = 2'dx;
                loSel = 2'dx;
                hiWr = 1'd0;
                loWr = 1'd0;
                maluOp = 1'dx;
                memtoReg = 3'd0;
                regDst = 1'd1;
                regWr = 1'd1;
                branch = 1'd0;
                jump = 1'd0;
                jalr = 1'd0;
            end
        6'b100010://sub
            begin
                aluSrcA = 1'd0;
                aluSrcB = 2'd0;
                aluCtrl = 4'd1;
                memRd = 1'd0;
                memWr = 1'd0;
                hiSel = 2'dx;
                loSel = 2'dx;
                hiWr = 1'd0;
                loWr = 1'd0;
                maluOp = 1'dx;
                memtoReg = 3'd0;
                regDst = 1'd1;
                regWr = 1'd1;
                branch = 1'd0;
                jump = 1'd0;
                jalr = 1'd0;
            end
        6'b011000://mult
            begin
                aluSrcA = 1'd0;
                aluSrcB = 2'd0;
                aluCtrl = 4'd2;
                memRd = 1'd0;
                memWr = 1'd0;
                hiSel = 2'd0;
                loSel = 2'd0;
                hiWr = 1'd1;
                loWr = 1'd1;
                maluOp = 1'dx;
                memtoReg = 3'dx;
                regDst = 1'dx;
                regWr = 1'd0;
                branch = 1'd0;
                jump = 1'd0;
                jalr = 1'd0;
            end
        6'b011010://div
            begin
                aluSrcA = 1'd0;
                aluSrcB = 2'd0;
                aluCtrl = 4'd3;
                memRd = 1'd0;
                memWr = 1'd0;
                hiSel = 2'd0;
                loSel = 2'd0;
                hiWr = 1'd1;
                loWr = 1'd1;
                maluOp = 1'dx;
                memtoReg = 3'dx;
                regDst = 1'dx;
                regWr = 1'd0;
                branch = 1'd0;
                jump = 1'd0;
                jalr = 1'd0;
            end
        6'b000000://sll
        begin
            aluSrcA = 1'd1;
            aluSrcB = 2'd0;
            aluCtrl = 4'd4;
            memRd = 1'd0;
            memWr = 1'd0;
            hiSel = 2'dx;
            loSel = 2'dx;
            hiWr = 1'd0;
            loWr = 1'd0;
            maluOp = 1'dx;
            memtoReg = 3'd0;
            regDst = 1'd1;
            regWr = 1'd1;
            branch = 1'd0;
            jump = 1'd0;
            jalr = 1'd0;
        end
        6'b010000://mfhi
        begin
            aluSrcA = 1'dx;
            aluSrcB = 2'dx;
            aluCtrl = 4'dx;
            memRd = 1'd0;
            memWr = 1'd0;
            hiSel = 2'dx;
            loSel = 2'dx;
            hiWr = 1'd0;
            loWr = 1'd0;
            maluOp = 1'dx;
            memtoReg = 3'd2;
            regDst = 1'd1;
            regWr = 1'd1;
            branch = 1'd0;
            jump = 1'd0;
            jalr = 1'd0;
        end
        6'b010010://mflo
        begin
            aluSrcA = 1'dx;
            aluSrcB = 2'dx;
            aluCtrl = 4'dx;
            memRd = 1'd0;
            memWr = 1'd0;
            hiSel = 2'dx;
            loSel = 2'dx;
            hiWr = 1'd0;
            loWr = 1'd0;
            maluOp = 1'dx;
            memtoReg = 3'd3;
            regDst = 1'd1;
            regWr = 1'd1;
            branch = 1'd0;
            jump = 1'd0;
            jalr = 1'd0;
        end
        6'b010001://mthi
        begin
            aluSrcA = 1'dx;
            aluSrcB = 2'dx;
            aluCtrl = 4'dx;
            memRd = 1'd0;
            memWr = 1'd0;
            hiSel = 2'd1;
            loSel = 2'dx;
            hiWr = 1'd1;
            loWr = 1'd0;
            maluOp = 1'dx;
            memtoReg = 3'dx;
            regDst = 1'dx;
            regWr = 1'd0;
            branch = 1'd0;
            jump = 1'd0;
            jalr = 1'd0;
        end
        6'b010011://mtlo
        begin
            aluSrcA = 1'dx;
            aluSrcB = 2'dx;
            aluCtrl = 4'dx;
            memRd = 1'd0;
            memWr = 1'd0;
            hiSel = 2'dx;
            loSel = 2'd1;
            hiWr = 1'd0;
            loWr = 1'd1;
            maluOp = 1'dx;
            memtoReg = 3'dx;
            regDst = 1'dx;
            regWr = 1'd0;
            branch = 1'd0;
            jump = 1'd0;
            jalr = 1'd0;
        end
        6'b001001://jalr
        begin
            aluSrcA = 1'dx;
            aluSrcB = 2'dx;
            aluCtrl = 4'dx;
            memRd = 1'd0;
            memWr = 1'd0;
            hiSel = 2'dx;
            loSel = 2'dx;
            hiWr = 1'd0;
            loWr = 1'd0;
            maluOp = 1'dx;
            memtoReg = 3'd5;
            regDst = 1'd1;
            regWr = 1'd1;
            branch = 1'd0;
            jump = 1'd0;
            jalr = 1'd1;
        end
		endcase
    end
    else if(opCode==6'b011100)//SPECIAL2
    begin
        case(funcField)
        6'b000000://madd
            begin
                aluSrcA = 1'd0;
                aluSrcB = 2'd0;
                aluCtrl = 4'd2;
                memRd = 1'd0;
                memWr = 1'd0;
                hiSel = 2'd2;
                loSel = 2'd2;
                hiWr = 1'd1;
                loWr = 1'd1;
                maluOp = 1'd0;//add
                memtoReg = 3'dx;
                regDst = 1'dx;
                regWr = 1'd0;
                branch = 1'd0;
                jump = 1'd0;
                jalr = 1'd0;
            end
        6'b000100://msub
        begin
            aluSrcA = 1'd0;
            aluSrcB = 2'd0;
            aluCtrl = 4'd2;
            memRd = 1'd0;
            memWr = 1'd0;
            hiSel = 2'd2;
            loSel = 2'd2;
            hiWr = 1'd1;
            loWr = 1'd1;
            maluOp = 1'd1;//sub
            memtoReg = 3'dx;
            regDst = 1'dx;
            regWr = 1'd0;
            branch = 1'd0;
            jump = 1'd0;
            jalr = 1'd0;
        end
        endcase
    end
    else if(opCode==6'b001000)//addi
    begin
        aluSrcA = 1'd0;
        aluSrcB = 2'd1;
        aluCtrl = 4'd0;
        memRd = 1'd0;
        memWr = 1'd0;
        hiSel = 2'dx;
        loSel = 2'dx;
        hiWr = 1'd0;
        loWr = 1'd0;
        maluOp = 1'dx;
        memtoReg = 3'd0;
        regDst = 1'd0;
        regWr = 1'd1;
        branch = 1'd0;
        jump = 1'd0;
        jalr = 1'd0;
    end
    else if(opCode==6'b001101)//ori
    begin
        aluSrcA = 1'd0;
        aluSrcB = 2'd2;
        aluCtrl = 4'd5;
        memRd = 1'd0;
        memWr = 1'd0;
        hiSel = 2'dx;
        loSel = 2'dx;
        hiWr = 1'd0;
        loWr = 1'd0;
        maluOp = 1'dx;
        memtoReg = 3'd0;
        regDst = 1'd0;
        regWr = 1'd1;
        branch = 1'd0;
        jump = 1'd0;
        jalr = 1'd0;
    end
    else if(opCode==6'b001111)//lui
    begin
        aluSrcA = 1'dx;
        aluSrcB = 2'dx;
        aluCtrl = 4'dx;
        memRd = 1'd0;
        memWr = 1'd0;
        hiSel = 2'dx;
        loSel = 2'dx;
        hiWr = 1'd0;
        loWr = 1'd0;
        maluOp = 1'dx;
        memtoReg = 3'd4;
        regDst = 1'd0;
        regWr = 1'd1;
        branch = 1'd0;
        jump = 1'd0;
        jalr = 1'd0;
    end
    else if(opCode==6'b101011)//sw
    begin
        aluSrcA = 1'd0;
        aluSrcB = 2'd1;
        aluCtrl = 4'd0;
        memRd = 1'd0;
        memWr = 1'd1;
        hiSel = 2'dx;
        loSel = 2'dx;
        hiWr = 1'd0;
        loWr = 1'd0;
        maluOp = 1'dx;
        memtoReg = 3'dx;
        regDst = 1'dx;
        regWr = 1'd0;
        branch = 1'd0;
        jump = 1'd0;
        jalr = 1'd0;
    end
    else if(opCode==6'b000010)//jump
    begin
        aluSrcA = 1'dx;
        aluSrcB = 2'dx;
        aluCtrl = 4'dx;
        memRd = 1'd0;
        memWr = 1'd0;
        hiSel = 2'dx;
        loSel = 2'dx;
        hiWr = 1'd0;
        loWr = 1'd0;
        maluOp = 1'dx;
        memtoReg = 3'dx;
        regDst = 1'dx;
        regWr = 1'd0;
        branch = 1'd0;
        jump = 1'd1;
        jalr = 1'd0;
    end
    else if(opCode==6'b000100)//beq
    begin
        aluSrcA = 1'd0;
        aluSrcB = 2'd0;
        aluCtrl = 4'd1;
        memRd = 1'd0;
        memWr = 1'd0;
        hiSel = 2'dx;
        loSel = 2'dx;
        hiWr = 1'd0;
        loWr = 1'd0;
        maluOp = 1'dx;
        memtoReg = 3'dx;
        regDst = 1'dx;
        regWr = 1'd0;
        branch = 1'd1;
        jump = 1'd0;
        jalr = 1'd0;
    end
    else
    begin//lw
        aluSrcA = 1'd0;
        aluSrcB = 2'd1;
        aluCtrl = 4'd0;
        memRd = 1'd1;
        memWr = 1'd0;
        hiSel = 2'dx;
        loSel = 2'dx;
        hiWr = 1'd0;
        loWr = 1'd0;
        maluOp = 1'dx;
        memtoReg = 3'd1;
        regDst = 1'd0;
        regWr = 1'd1;
        branch = 1'd0;
        jump = 1'd0;
        jalr = 1'd0;
	end
end
endmodule

module RegMux2to1(input [4:0] outR0,input [4:0] outR1,input Sel,output reg [4:0] outBus);

always @ (Sel,outR0, outR1)
begin
case(Sel)
1'b0:outBus=outR0;
1'b1:outBus=outR1;
endcase
end
endmodule

module Mux2to1(input [31:0] outR0,input [31:0] outR1,input Sel,output reg [31:0] outBus);

always @ (Sel,outR0, outR1)
begin
case(Sel)
1'b0:outBus=outR0;
1'b1:outBus=outR1;
endcase
end
endmodule

module Mux4to1(input [31:0] outR0,input [31:0] outR1, input [31:0] outR2,input [31:0] outR3,input [1:0]Sel,output reg [31:0] outBus);

always @ (Sel,outR0, outR1,outR2,outR3)
begin
case(Sel)
2'b00:outBus=outR0;
2'b01:outBus=outR1;
2'b10:outBus=outR2;
2'b11:outBus=outR3;
endcase
end
endmodule

module ALU(
    input [31:0] A,B,
    input [3:0] ALUSel,
    output reg [31:0] ALUOut0,
    output reg [31:0] ALUOut1,
    output reg zeroSig
);
reg [63:0]ALUResult;
always @(A or B or ALUSel)
begin
    case(ALUSel)
    4'd0: //Addition
        ALUResult = A + B;
    4'd1: // Subtraction
        ALUResult = A - B ;
    4'd2: // Multiplication
        ALUResult = A * B;
    4'd3: // Division
        begin
		ALUResult[31:0] = A / B;
        ALUResult[63:32] = A % B;
		  end
    4'd4: // Sll
        ALUResult = B << A;
    4'd5: // logical or
        ALUResult = A | B;
    endcase
	 
	assign ALUOut0 = ALUResult[31:0];
	assign ALUOut1 = ALUResult[63:32];
	if(ALUOut0==32'd0)
	begin
		zeroSig = 1'b1;
	end
	else
	begin
		zeroSig = 1'b0;
	end
end

endmodule

module DataMem(
    input clk,
    input memRd,
    input memWr,
    input [31:0] address,
    input [31:0] writeData, 
    output reg [31:0] readData
);
reg [31:0] memory [0:255];
initial begin 
    $readmemb("data.tv", memory);
end
always @(*)
begin
    if(memWr == 1)
        memory[address[31:0]]=writeData;
end
always @(*) 
begin
    if(memRd == 1)
        readData<=memory[address[31:0]];
end

endmodule

module Mux8to1(input [31:0] outR0,input [31:0] outR1, input [31:0] outR2,input [31:0] outR3,input [31:0] outR4,input [31:0] outR5,
input [31:0] outR6,input [31:0] outR7,input [2:0]Sel,output reg [31:0] outBus);

always @ (Sel,outR0, outR1,outR2,outR3,outR4,outR5,outR6,outR7)
begin
case(Sel)
3'd0:outBus=outR0;
3'd1:outBus=outR1;
3'd2:outBus=outR2;
3'd3:outBus=outR3;
3'd4:outBus=outR4;
3'd5:outBus=outR5;
3'd6:outBus=outR6;
3'd7:outBus=outR7;

endcase
end
endmodule

module Adder64(
	input [63:0] inputA,inputB,
	input AluCtrl,
	output reg [63:0] ALUOut
    );
always @(inputA or inputB or AluCtrl)
begin
	case(AluCtrl)
		0:ALUOut<=inputA+inputB;
		1:ALUOut<=inputA-inputB;
	endcase
end
endmodule

module ANDGate(input a,input b,output reg c);
	always@(a,b)
		begin
			c<=a&b;  
		end
endmodule 

module SingleCycleMIPS(
    input clk,
    input reset
    );

reg [31:0] dummy = 32'd0;
reg PCWr = 1'd1;
reg decOut = 1'd1;
reg [31:0] PCincr = 32'd4;
wire [31:0] PCnext;
wire [31:0] PCValue;
wire [31:0] instruction;
wire [4:0]destReg;
wire aluSrcA,memRd,memWr,hiWr,loWr,maluOp,regDst,regWr,branch,jump,jalr;
wire [1:0] aluSrcB,hiSel,loSel;
wire [2:0] memtoReg;
wire [3:0] aluCtrl;  
wire [31:0] RegWriteData;
wire [31:0] RegRs,RegRt;
wire [31:0] SextImm, ZextImm,ZextShamt;
wire [31:0] AluInA,AluInB;
wire [31:0] AluOut0, AluOut1;
wire AluZeroSig;
wire [31:0] DMreadData;
wire [31:0] HiInput,LoInput,HiOutput,LoOutput;
wire [63:0] AluOut64, HiLo64;
wire [63:0] MAluOut;
wire [31:0] UpImme;
wire BEQCtrl;
wire [31:0] branch_target_address;
wire [31:0] BEQAddrOut;
wire [31:0] BEQMuxOut;
wire [31:0] jumpAddr,jumpMuxOut,jalrMuxOut;

register32bit PC(clk,reset,PCWr,decOut,jalrMuxOut,PCValue); //PC 
Adder PCAdder(PCValue,PCincr,PCnext);  //PC =PC+4
InstructionMem IM(PCValue,instruction); //Fetches instruction

assign SextImm=$signed(instruction[15:0]); //check for errors  here
assign branch_target_address= SextImm<<2;
assign ZextImm={16'd0,instruction[15:0]};
assign ZextShamt={27'd0,instruction[10:6]}; 
assign AluOut64 = {AluOut1,AluOut0};
assign HiLo64 = {HiOutput,LoOutput};
assign UpImme = {instruction[15:0],16'd0};
assign jumpAddr = {PCnext[31:28],instruction[25:0]<<2};

controlUnit CU(instruction[31:26],instruction[5:0],aluSrcA,aluSrcB,aluCtrl,memRd,memWr,hiSel,loSel,hiWr,loWr,maluOp,memtoReg,regDst,regWr,branch,jump,jalr); //control unit
RegMux2to1 RegDst(instruction[20:16],instruction[15:11],regDst,destReg); //select destination registor 
RegFile RegisterFile(clk,reset,regWr,instruction[25:21],instruction[20:16],destReg,RegWriteData,RegRs,RegRt); //fetching operands  from  regfile
Mux2to1 AluSrcA(RegRs,ZextShamt,aluSrcA,AluInA);
Mux4to1 AluSrcB(RegRt,SextImm,ZextImm,dummy,aluSrcB,AluInB);
ALU AluMain(AluInA,AluInB,aluCtrl,AluOut0,AluOut1,AluZeroSig);
DataMem DM(clk,memRd,memWr,AluOut0,RegRt,DMreadData);
Mux8to1 MemtoReg(AluOut0,DMreadData,HiOutput,LoOutput,UpImme,PCnext,dummy,dummy,memtoReg,RegWriteData);
Mux4to1 HiSel(AluOut1,RegRs,MAluOut[63:32],dummy,hiSel,HiInput);
Mux4to1 LoSel(AluOut0,RegRs,MAluOut[31:0],dummy,loSel,LoInput);
register32bit Hi(clk,reset,hiWr,decOut,HiInput,HiOutput);
register32bit Lo(clk,reset,loWr,decOut,LoInput,LoOutput);
Adder64 MAlu(HiLo64,AluOut64,maluOp,MAluOut);
ANDGate beqGate(branch,AluZeroSig,BEQCtrl);
Adder BEQAdder(PCnext,branch_target_address,BEQAddrOut);
Mux2to1 BEQMux(PCnext,BEQAddrOut,BEQCtrl,BEQMuxOut);
Mux2to1 jumpMux(BEQMuxOut,jumpAddr,jump,jumpMuxOut);
Mux2to1 jalrMux(jumpMuxOut,RegRs,jalr,jalrMuxOut);

endmodule
