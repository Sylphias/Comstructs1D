#Checkoff 1- ALU

## Setting up
Clone the github repo by running the following command
```
git clone https://github.com/Sylphias/Comstructs1D.git
```
## Installing Mojo IDE
Installing Mojo is simple, just follow the instructions in the documents below under 'Getting Started with Lucid'
https://embeddedmicro.com/tutorials/lucid

## Importing the Project in Mojo IDE
File > Open Project > Comstructs folder location

## Running the Project
If the project fails to compile, Try importing componenents ( We faced some problems with this at first)
Projects > Add Components 

###COMPONENTS REQUIRED:
Counter
Decoder
IOShield

## ALUFN Tables
ALUFN | Operation
----- | ---------
000000 |ADD
000001 |SUB
000010 |MULTIPLY
010000 |ZERO
011100 |B
010101 |INVERT A
010011 |INVERT B
111111 |ONE
011000 |AND
110111 |NAND
011110 |OR
010001 |NOR
010110 |XOR
011001 |NXOR
010100 |NOT A AND B
010010 |A AND NOT B
011101 |NOT A OR B
011011 |A OR NOT B
011010 |A(LDR)
100000 |LEFT SHIFT (SHL)
100001 |RIGHT SHIFT (SHR)
100011 |ARITHMATIC RIGHT SHIFT (SRA)
110011 |COMPARE EQUAL(CMPEQ)
110101 |COMPARE LESS THAN (CMPLT)
110111 |COMPARE LESS THAN EQ(CMPLE)
