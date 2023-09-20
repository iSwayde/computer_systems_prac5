// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

    @R1
    D=M
    @END
    D;JEQ
    @last
    M=D
    @R2
    D=M
    @last
    M=M+D
    @R1
    A=M
    D=M
    @R0
    M=D
    @R1
    D=M
    @index
    M=D+1
(LOOP)
    @index
    D=M
    @last
    D=M-D
    @END
    D;JEQ

    @R0
    D=M
    @index
    A=M
    D=D-M
    @NEW
    D;JGT
    @INC
    0;JMP

(NEW)
    @index
    A=M
    D=M
    @R0
    M=D
(INC)
    @index
    M=M+1
    @LOOP
    0;JMP

(END)
    @END
    0;JMP