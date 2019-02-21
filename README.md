# SingleCycleMIPS
Simulation of the Single Cycle MIPS architecture in Verilog

Note: data.tv and instruction.tv files are copied to data and instruction memory respectively. 

The order of instructions and description is as follows:

```
100011_10111_10001_0000000000000001     //lw $s7 $s1 imme(1) $s1<=address[$s7+imme] loads 8 from datamemery to rs
100011_10111_10010_0000000000000010     //lw $s7 $s2 imme(2) $s2<=address[$s7+imme] loads 3 from datamemery to rs
000000_10001_10010_10000_00000_100000   //add s1 s2 s0  8+3 =11
000000_10001_10010_10000_00000_100010   //sub s1 s2 s0  8-3=5
000000_10001_10010_00000_00000_011010   //div s1 s2     8/3    Hi=2,Lo=2
000000_10001_10010_00000_00000_011000   //mult s1 s2    8*3=24 Hi=0,Lo=24
000000_00000_10010_10000_00100_000000   //sll s2 s0     3<<4   s0=48
011100_10001_10010_00000_00000_000000   //madd s1 s2    aluout0=24,out1=0,Hi=0,Lo=24. MaluOut=Hilo-Alu=48
011100_10001_10010_00000_00000_000100   //msub s1 s2    aluout0=24,out1=0,Hi=0,Lo=48. MaluOut=24
000000_00000_00000_10010_00000_010000   //exchanging values in hi and lo using rt and rs respectively //mfhi move from hi to rd 																				which is s2/rt=0
000000_00000_00000_10001_00000_010010   //mflo move from lo to rd which is s1/rs=24
000000_10001_00000_00000_00000_010001   //mthi move from rs to Hi which is s1=24
000000_10010_00000_10000_00000_010011   //mtlo move from rs to Lo which is s2=0
001000_10001_10010_0000000000100000     //addi rt=rs+imme rs=24,imme=32,rt=56
001101_10001_10010_0001001000100011     //ori  rt=rs|imme rs=24,imme=4643,rt=4667
001111_00000_10010_0000000100000000     //lui rt=upper_imme upper_imme=256, rt=16,777,216
101011_10111_10010_0000000000000011     //to test beq we need rs==rt. we store value of rt in datamem using sw and retrieve using 																				lw to rs //sw store rd which is s2 in localtion rs+3 s2=16777216 
100011_10111_10001_0000000000000011     //lw load value from location rs+3 in s1=16777216
000100_10001_10010_0000000000000010     //beq rs==rt. it will jump 2 instrutions infront
000000_10001_10010_10000_00000_100000 	//2 dummy add instrutions which will be skipped by beq above
000000_10001_10010_10000_00000_100000   
100011_10111_10001_0000000000000000     //jalr to address 92 where jump instruction is present //load address 0 from datamemory
000000_10001_00000_10000_00000_001001   //jalr PC<=rs, rd<=PC,  PC=100
000000_10001_10010_10000_00000_100000 	//2 dummy add instruction which will be skipped by jalr
000000_10001_10010_10000_00000_100000
000010_00000000000000000000011100       //jumps to location 112 which is left shifted value of the imme 26 bit value
000000_10001_10010_10000_00000_100000   //2dummy adds that are skipped by jump
000000_10001_10010_10000_00000_100000
000000_10001_10010_10000_00000_100000   //final add to conclude execution
```
