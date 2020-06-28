;
;  XETTER 3
;     for X1/turbo
;
; Mar. 8, 1990
;      by K.Kuromusha
;

 START $D000

 JP   GAMEN
 JP   HAICHI
 JP   MBLOCK

GAMEN2
 LD   E,39
GAMEN3
 OUT  (C),D
 INC  C
 DEC  E
 JP   NZ,GAMEN3
 RET

GAMEN
 LD   BC,$2000
 LD   D,$27
 LD   A,$24
GAMEN1
 OUT  (C),D
 INC  C
 JP   NZ,GAMEN1
 INC  B
 CP   B
 JP   NZ,GAMEN1
 LD   D,"!"
 LD   BC,$3000
 CALL GAMEN2
 LD   BC,$3079
 CALL GAMEN2
 LD   BC,$33C1
 CALL GAMEN2
 LD   BC,$3027
 LD   E,24
GAMEN4
 OUT  (C),D
 INC  BC
 OUT  (C),D
 LD   A,39
 ADD  A,C
 LD   C,A
 JP   NC,GAMEN5
 INC  B
GAMEN5
 DEC  E
 JP   NZ,GAMEN4
 LD   BC,$3029
 LD   HL,GDATA1
 LD   E,67
GAMEN6
 LD   D,(HL)
 OUT  (C),D
 INC  HL
 INC  C
 DEC  E
 JP   NZ,GAMEN6
 RET

GDATA1
 DEFM  "HI-SCORE       0!SCENE    ! XETTER *+ !"
 DEFM "!   SCORE       0!TIME     !"

HAICHI
 LD   A,(HL)
 LD   BC,$5D00
HAICHI1
 INC  B
 INC  B
 INC  B
 DEC  A
 JP   NZ,HAICHI1
 XOR  A
 LD   E,50
 LD   HL,BPOS
HAICHI2
 LD   (HL),A
 INC  HL
 DEC  E
 JP   NZ,HAICHI2
 EXX
 LD   BC,$30A1
 EXX
 LD   E,20
HAICHI3
 LD   D,38
HAICHI4
 IN   A,(C)
 INC  BC
 SUB  "1"
 JP   C,SPACE
 JP   Z,JACKER
 DEC  A
 JP   Z,RANDER
 DEC  A
 JP   Z,BLOCK
 DEC  A
 JP   Z,DOT
 DEC  A
 JP   NZ,XETTER
 LD   A,$21
HAICHI5
 EXX
 OUT  (C),A
 INC  BC
 EXX
 DEC  D
 JP   NZ,HAICHI4
 EXX
 INC  BC
 INC  BC
 EXX
 DEC  E
 JP   NZ,HAICHI3
 RET

HAICHI6
 INC  HL
 INC  HL
 DEC  A
 JP   NZ,HAICHI6
 LD   A,39
 SUB  D
 LD   (HL),A
 INC  HL
 LD   A,24
 SUB  E
 LD   (HL),A
 RET

JACKER
 LD   A,(JNUM)
 INC  A
 LD   (JNUM),A
 LD   HL,JPOS-2
 CALL HAICHI6
 LD   A,$22
 JP   HAICHI5

RANDER
 LD   A,(RNUM)
 INC  A
 LD   (RNUM),A
 LD   HL,RPOS-2
 CALL HAICHI6
 LD   A,$23
 JP   HAICHI5

BLOCK
 LD   A,(BNUM)
 INC  A
 LD   (BNUM),A
 LD   HL,BPOS-2
 CALL HAICHI6
 LD   A,$25
 JP   HAICHI5

DOT
 LD   A,(SNUM)
 INC  A
 LD   (SNUM),A
 LD   A,$24
 JP   HAICHI5

XETTER
 LD   A,$3F
 JP   HAICHI5

SPACE
 LD   A,$20
 JP   HAICHI5

BPOS  DEFS 30
JPOS  DEFS 8
RPOS  DEFS 8
BNUM  DEFS 1
JNUM  DEFS 1
RNUM  DEFS 1
SNUM  DEFS 1

MBLOCK
 PUSH HL
 XOR  A
 LD   (BSTAT),A
 LD   A,(BNUM)
 OR   A
 JP   Z,MBLOCK4
 LD   HL,BPOS
MBLOCK1
 INC  HL
 CALL MBLOCK2
 INC  HL
 DEC  A
 JP   NZ,MBLOCK1
MBLOCK4
 LD   A,(BSTAT)
 POP  HL
 LD   (HL),A
 RET

MBLOCK2
 EX   AF,AF'
 PUSH HL
 LD   A,(HL)
 DEC  HL
 LD   L,(HL)
 LD   H,$30
 LD   BC,40
MBLOCK3
 ADD  HL,BC
 DEC  A
 JP   NZ,MBLOCK3
 LD   D,H
 LD   E,L
 ADD  HL,BC
 LD   B,H
 LD   C,L
 IN   A,(C)
 SUB  " "
 JP   Z,MBSPACE
 DEC  A
 JP   Z,MBRET
 DEC  A
 JP   Z,MBJACKER
 DEC  A
 JP   Z,MBRANDER
 DEC  A
 JP   Z,MBRET
 DEC  A
 JP   Z,MBRET
 LD   A,(BSTAT)
 OR   1
 LD   (BSTAT),A
MBSPACE
 LD   A,"%"
 OUT  (C),A
 LD   B,D
 LD   C,E
 LD   A," "
 OUT  (C),A
 POP  HL
 LD   A,(HL)
 INC  A
 LD   (HL),A
 EX   AF,AF'
 RET

MBRET
 POP  HL
 EX   AF,AF'
 RET

MBJACKER
 LD   A,(BSTAT)
 OR   2
 LD   (BSTAT),A
 JP   MBSPACE

MBRANDER
 LD   A,(BSTAT)
 OR   4
 LD   (BSTAT),A
 JP   MBSPACE

BSTAT DEFS 1

BMOVE
 LD   A,(HL)
 OR   A
 RET  Z
 EX   AF,AF'
 LD   A,(BNUM)
 OR   A
 RET  Z
 LD   D,A
 LD   HL,BPOS+1
BMOVE1
 PUSH HL
 LD   E,(HL)
 DEC  HL
 LD   L,(HL)
 LD   H,$30
 LD   BC,40
BMOVE2
 ADD  HL,BC
 DEC  E
 JP   NZ,BMOVE2
 LD   B,H
 LD   C,L
 IN   A,(C)
 CP   "%"
 JP   NZ,BMOVE3
 POP  HL
 INC  HL
 INC  HL
 DEC  D
 JP   NZ,BMOVE1
 RET

BMOVE3
 POP  HL
 DEC  HL
 EX   AF,AF'
 DEC  A
 JP   Z,BMOVE4
 DEC  BC
 LD   A,"%"
 OUT  (C),A
 LD   A,(HL)
 DEC  A
 LD   (HL),A
 RET

BMOVE4
 INC  BC
 LD   A,"%"
 OUT  (C),A
 LD   A,(HL)
 INC  A
 LD   (HL),A
 RET

OK
 XOR  A
 LD   (OKD),A
 LD   HL,JPOS-1
OK1
 INC  HL
 INC  HL
 DEC  E
 JP   NZ,OK1
 LD   A,(HL)
 DEC  HL
 LD   L,(HL)
 LD   H,$30
 LD   BC,40
 DEC  A
OK2
 ADD  HL,BC
 DEC  A
 JP   NZ,OK2
 LD   B,H
 LD   C,L
 IN   A,(C)
 CP   " "
 JP   NZ,OK3
 LD   A,1
 LD   (OKD),A
 JP   OK4
OK3
 CP   "0"
 JP   C,OK4
 LD   A,$10
 LD   (OKD),A
OK4
 LD   HL,39
 ADD  HL,BC
 LD   B,H
 LD   C,L
 IN   A,(C)
 CP   " "
 JP   NZ,OK5
 LD   A,(OKD)
 OR   2
 LD   (OKD),A
 JP   OK6
OK5
 CP   "0"
 JP   C,OK6
 LD   A,(OKD)
 OR   $20
 LD   (OKD),A
OK6
 INC  BC
 INC  BC
 IN   A,(C)
 CP   " "
 JP   NZ,OK7
 LD   A,(OKD)
 OR   4
 LD   (OKD),A
 JP   OK8
OK7
 CP   "0"
 JP   C,OK8
 LD   A,(OKD)
 OR   $40
 LD   (OKD),A
OK8
 LD   HL,39
 ADD  HL,BC
 LD   B,H
 LD   C,L
 IN   A,(C)
 CP   " "
 JP   NZ,OK9
 LD   A,(OKD)
 OR   8
 LD   (OKD),A
 JP   OK10
OK9
 CP   "0"
 JP   C,OK10
 LD   A,(OKD)
 OR   $80
 LD   (OKD),A
OK10
 LD   A,(OKD)
 RET

OKD   DEFS 1

PRINT
 LD   HL,DPRT+1
 LD   D,(HL)
 DEC  HL
 LD   L,(HL)
 LD   H,$30
 LD   BC,40
PRINT1
 ADD  HL,BC
 DEC  D
 JP   NZ,PRINT1
 LD   B,H
 LD   C,L
 OUT  (C),A
 RET

MJACKER
 LD   A,(JNUM)
 OR   A
 RET  Z
 PUSH HL
 EXX
 LD   E,A
 EXX
MJACKER1
 EXX
 LD   D,A
 EX   AF,AF'
 LD   A,E
 SUB  D
 INC  A
 EXX
 LD   E,A
 LD   D,A
 CALL OK
 OR   A
 JP   Z,MJACKER8
 PUSH AF
 LD   HL,JPOS-2
MJACKER3
 INC  HL
 INC  HL
 DEC  D
 JP   NZ,MJACKER3
 PUSH HL
 LD   E,(HL)
 INC  HL
 LD   D,(HL)
 LD   (DPRT),DE
 LD   A," "
 CALL PRINT
 POP  HL
 POP  AF
 CP   $10
 JP   C,MJACKER2
 EXX
 POP  HL
 LD   (HL),1
 PUSH HL
 EXX
 CP   $80
 JP   C,MJACKER4
MJD
 INC  HL
 LD   A,(HL)
 INC  A
 LD   (HL),A
 DEC  HL
 JP   MJACKER5
MJACKER4
 CP   $40
 JP   C,MJACKER6
MJR
 LD   A,(HL)
 INC  A
 LD   (HL),A
 JP   MJACKER5
MJACKER6
 CP   $20
 JP   C,MJACKER7
MJL
 LD   A,(HL)
 DEC  A
 LD   (HL),A
 JP   MJACKER5
MJACKER7
 INC  HL
 LD   A,(HL)
 DEC  A
 LD   (HL),A
 DEC  HL
MJACKER5
 LD   E,(HL)
 INC  HL
 LD   D,(HL)
 LD   (DPRT),DE
 LD   A,$22
 CALL PRINT
MJACKER8
 EX   AF,AF'
 DEC  A
 JP   NZ,MJACKER1
 POP  HL
 RET

MJACKER2
 LD   D,A
 LD   A,(MJX)
 LD   E,A
 LD   A,(HL)
 CP   E
 JP   Z,MJACKER10
 LD   A,D
 JP   C,MJACKER9
 AND  2
 JP   Z,MJACKER10
 JP   MJL
MJACKER9
 AND  4
 JP   NZ,MJR
MJACKER10
 LD   A,(MJX+1)
 LD   E,A
 INC  HL
 LD   A,(HL)
 DEC  HL
 CP   E
 LD   A,D
 JP   C,MJACKER11
 AND  1
 JP   NZ,MJACKER7
 JP   MJACKER12
MJACKER11
 AND  8
 JP   NZ,MJD
MJACKER12
 LD   B,8
MJACKER13
 CALL RND
 CP   $40
 JP   C,MJACKER14
 CP   $80
 JP   C,MJACKER15
 CP   $C0
 JP   C,MJACKER16
 LD   A,D
 AND  1
 JP   NZ,MJACKER7
 JP   MJACKER17
MJACKER14
 LD   A,D
 AND  2
 JP   NZ,MJL
 JP   MJACKER17
MJACKER15
 LD   A,D
 AND  4
 JP   NZ,MJR
 JP   MJACKER17
MJACKER16
 LD   A,D
 AND  8
 JP   NZ,MJD
MJACKER17
 DJNZ MJACKER13
 LD   A,D
 CP   8
 JP   NC,MJD
 CP   4
 JP   NC,MJR
 CP   2
 JP   NC,MJL
 JP   MJACKER7

DPRT  DEFS 2
MJX   DEFS 2

MRANDER
 LD   A,(RNUM)
 OR   A
 RET  Z
 PUSH HL
 EXX
 LD   E,A
 EXX
MRANDER1
 EXX
 LD   D,A
 EX   AF,AF'
 LD   A,E
 SUB  D
 INC  A
 EXX
 LD   D,A
 LD   A,4
 ADD  A,D
 LD   E,A
 CALL OK
 OR   A
 JP   Z,MRANDER8
 PUSH AF
 LD   HL,RPOS-2
MRANDER3
 INC  HL
 INC  HL
 DEC  D
 JP   NZ,MRANDER3
 PUSH HL
 LD   E,(HL)
 INC  HL
 LD   D,(HL)
 LD   (DPRT),DE
 LD   A," "
 CALL PRINT
 POP  HL
 POP  AF
 CP   $10
 JP   C,MRANDER2
 EXX
 POP  HL
 LD   (HL),1
 PUSH HL
 EXX
 CP   $80
 JP   C,MRANDER4
MRD
 INC  HL
 LD   A,(HL)
 INC  A
 LD   (HL),A
 DEC  HL
 JP   MRANDER5
MRANDER4
 CP   $40
 JP   C,MRANDER6
MRR
 LD   A,(HL)
 INC  A
 LD   (HL),A
 JP   MRANDER5
MRANDER6
 CP   $20
 JP   C,MRANDER7
MRL
 LD   A,(HL)
 DEC  A
 LD   (HL),A
 JP   MRANDER5
MRANDER7
 INC  HL
 LD   A,(HL)
 DEC  A
 LD   (HL),A
 DEC  HL
MRANDER5
 LD   E,(HL)
 INC  HL
 LD   D,(HL)
 LD   (DPRT),DE
 LD   A,"#"
 CALL PRINT
MRANDER8
 EX   AF,AF'
 DEC  A
 JP   NZ,MRANDER1
 POP  HL
 RET

MRANDER2
 LD   D,A
 LD   A,(MJX)
 LD   B,A
 LD   A,(MJX+1)
 LD   C,A
 INC  HL
 LD   A,(HL)
 DEC  HL
 CP   C
 JP   NZ,MRANDER10
 LD   A,(HL)
 CP   B
 LD   A,D
 JP   C,MRANDER9
 AND  2
 JP   Z,MRANDER10
 JP   MRL
MRANDER9
 AND  4
 JP   NZ,MRR
MRANDER10
 LD   A,(HL)
 CP   B
 JP   NZ,MRANDER12
 INC  HL
 LD   A,(HL)
 DEC  HL
 CP   C
 LD   A,D
 JP   C,MRANDER11
 AND  1
 JP   NZ,MRANDER7
 JP   MRANDER12
MRANDER11
 AND  8
 JP   NZ,MRD
MRANDER12
 LD   B,8
MRANDER13
 CALL RND
 CP   $40
 JP   C,MRANDER14
 CP   $80
 JP   C,MRANDER15
 CP   $C0
 JP   C,MRANDER16
 LD   A,D
 AND  1
 JP   NZ,MRANDER7
 JP   MRANDER17
MRANDER14
 LD   A,D
 AND  2
 JP   NZ,MRL
 JP   MRANDER17
MRANDER15
 LD   A,D
 AND  4
 JP   NZ,MRR
 JP   MRANDER17
MRANDER16
 LD   A,D
 AND  8
 JP   NZ,MRD
MRANDER17
 DJNZ MRANDER13
 LD   A,D
 CP   8
 JP   NC,MRD
 CP   4
 JP   NC,MRR
 CP   2
 JP   NC,MRL
 JP   MRANDER7

RND
 PUSH HL
 PUSH DE
 LD   E,(HL)
 INC  HL
 LD   D,(HL)
 LD   HL,(RNDD)
 ADD  HL,DE
 LD   A,H
 ADD  A,L
 ADD  A,H
 LD   L,A
 LD   DE,$36
 ADD  HL,DE
 LD   (RNDD),HL
 LD   A,L
 POP  DE
 POP  HL
 RET

RNDD  DEFS 2

MXOK
 LD   HL,MJX+1
 LD   A,(HL)
 DEC  HL
 LD   L,(HL)
 LD   H,$30
 LD   BC,40
MXOK1
 ADD  HL,BC
 DEC  A
 JP   NZ,MXOK1
 LD   D,H
 LD   E,L
 RET

XSTAT DEFS 1
XSTA1 DEFS 1

MXETTER
 LD   A,(HL)
 OR   A
 RET  Z
 LD   (HL),0
 PUSH HL
 CP   2
 JP   Z,MXETTER1
 CP   4
 JP   Z,MXETTER2
 CP   6
 JP   Z,MXETTER3
 CP   8
 JP   Z,MXETTER4
 POP  HL
 RET
MXETTER1
 LD   (XSTAT),A
 CALL MXOK
 ADD  HL,BC
 JP   MXETTER5
MXETTER2
 DEC  A
 LD   (XSTAT),A
 CALL MXOK
 DEC  HL
 JP   MXETTER5
MXETTER3
 LD   A,4
 LD   (XSTAT),A
 CALL MXOK
 INC  HL
 JP   MXETTER5
MXETTER4
 LD   A,1
 LD   (XSTAT),A
 CALL MXOK
 SBC  HL,BC
MXETTER5
 XOR  A
 LD   (XSTA1),A
 LD   B,H
 LD   C,L
 IN   A,(C)
 CP   "!"
 JP   Z,MXETTER6
 CP   " "
 JP   Z,MXETTER8
 CP   "$"
 JP   C,MXETTER7
 JP   NZ,MXBLOCK
 POP  HL
 LD   (HL),2
 PUSH HL
 JP   MXETTER8
MXETTER7
 POP  HL
 LD   (HL),1
 PUSH HL
MXETTER8
 LD   A,(XSTAT)
 DEC  A
 JP   Z,MXETTER9
 DEC  A
 JP   Z,MXETTER10
 DEC  A
 JP   Z,MXETTER11
 LD   A,(MJX)
 INC  A
 LD   (MJX),A
 JP   MXETTER12
MXETTER9
 LD   A,(MJX+1)
 DEC  A
 LD   (MJX+1),A
 JP   MXETTER12
MXETTER10
 LD   A,(MJX+1)
 INC  A
 LD   (MJX+1),A
 JP   MXETTER12
MXETTER11
 LD   A,(MJX)
 DEC  A
 LD   (MJX),A
MXETTER12
 LD   A,(XSTAT)
 ADD  A,$3B
 OUT  (C),A
 LD   B,D
 LD   C,E
 LD   A," "
 OUT  (C),A
 LD   HL,XSTA1
 CALL BMOVE
MXETTER6
 POP  HL
 RET

MXBLOCK
 LD   A,(XSTAT)
 CP   3
 JP   C,MXETTER6
 JP   NZ,MXBLOCK1
 DEC  BC
 IN   A,(C)
 CP   " "
 JP   NZ,MXETTER6
 INC  BC
 LD   A,$FF
 LD   (XSTA1),A
 JP   MXETTER8
MXBLOCK1
 INC  BC
 IN   A,(C)
 CP   " "
 JP   NZ,MXETTER6
 DEC  BC
 LD   A,1
 LD   (XSTA1),A
 JP   MXETTER8

 DEFM "*** K.Kuromusha Original  No.16 ***"

