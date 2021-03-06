C     COPYRIGHT       NONE.  THIS CODE IS IN THE PUBLIC DOMAIN.
C     FILENAME        GEMINICATCHUPANDRENDEZVOUSPROGRAM/ERRANG.F
C     PURPOSE         THIS IS PART OF THE ORIGINAL 1965 SIMULATION
C                     PROGRAM FOR THE GEMINI 7/6 MISSION
C                     CATCH-UP AND RENDEZVOUS FLIGHT PHASES.
C                     THIS PARTICULAR FILE CONTAINS ONLY THE
C                     ERRANG SUBROUTINE (ERROR ANGLE SUBROUTINE).
C     WEBSITE         WWW.IBIBLIO.ORG/APOLLO
C     HISTORY         2010-08-14 RSB  BEGAN TRANSCRIBING FROM
C                                     THE SCANNED PDF REPORT.
C
C     REFER TO MAIN.F FOR MORE-DETAILED INTRODUCTORY COMMENTS.
C
C     FROM PAGE 164 OF THE REPORT 
      SUBROUTINE ERRANG (CUDPHS,CUDPSS,CUDTHS,CDPHSC,CDPSSC,CDTHSC)
1     IF(ABSF(CUDPHS)-20./57.2957795)  3, 3, 4
3     CDPHSC=CUDPHS
      GO TO 7
4     IF (CUDPHS)  5, 6, 6
5     CDPHSC=-20./57.2957795
      GO TO 7
6     CDPHSC=20./57.2957795
7     IF (ABSF(CUDPSS)-20./57.2957795)   8,  8,  9
8     CDPSSC=CUDPSS
      GO TO 12
9     IF (CUDPSS)  10, 11, 11
10    CDPSSC=-20./57.2957795
      GO TO 12
11    CDPSSC=20./57.2957795
12    IF (ABSF(CUDTHS)-20./57.2957795)  13, 14, 14
13    CDTHSC=CUDTHS
      GO TO 2
14    IF (CUDTHS)  15, 16, 16
15    CDTHSC=-20./57.2957795
      GO TO 2
16    CDTHSC=20./57.2957795
2     RETURN
      END(1,1,0,0,0,0,1,1,0,0,0,0,0,0,0)
