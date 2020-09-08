* Encoding: UTF-8.
/*111111111111111111***********************************************************************************************************************************************/
/*****************************************************************MODELO NULO***************************************************************************************/
/**************************************************************************************************************************************************************************/

/***************************************************************************************************************************************************************************/
/******************************************************************************DEV***************************************************************************************/
/**************************************************************************************************************************************************************************/

MIXED Productividad BY Sujeto DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Periodo Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Periodo Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Periodo Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Periodo Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Periodo Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5 RESID_6
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***************************************************************************************************************************************************************************/
/***************************************************************************TAREA***************************************************************************************/
/**************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Sujeto) COVTYPE(AR1)
  /SAVE=RESID.


EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***************************************************************************************************************************************************************************/
/***************************************************************************SESION**************************************************************************************/
/**************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/*2222222222222222222*******************************************************************************************************************************************/
/************************************************************************************************************************************************************************/
/***************************************************************************BASE**************************************************************************************/
/************************************************************************************************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************************************************************************************************************/
/***************************************************************************Tarea**************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_6 RESID_7 RESID_8 RESID_9 RESID_10
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************************************************************************************************************/
/***************************************************************************Session************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_11 RESID_12 RESID_13 RESID_14 RESID_15
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.


/*333333333333333333*********************************************************************************************************************************************/
/************************************************************************************************************************************************************************/
/************************************************************TODAS LAS VARIABLES******************************************************************************/
/************************************************************************************************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************************************************************************************************************/
/***************************************************************************Tarea**************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_6 RESID_7 RESID_8 RESID_9 RESID_10
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************************************************************************************************************/
/***************************************************************************Session************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_11 RESID_12 RESID_13 RESID_14 RESID_15
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.


/*444444444444444444********************************************************************************************************************************************/
/************************************************************************************************************************************************************************/
/************************************************************************RANDOM*************************************************************************************/
/************************************************************************************************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************************************************************************************************************/
/***************************************************************************Tarea**************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_6 RESID_7 RESID_8 RESID_9 RESID_10
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************************************************************************************************************/
/***************************************************************************Session************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit Task_Duration TipoSujeto Language Training Trainer Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_11 RESID_12 RESID_13 RESID_14 RESID_15
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.


/*555555555555555555********************************************************************************************************************************************/
/************************************************************************************************************************************************************************/
/**********************************************************INTERACCIONES: Una x una****************************************************************************/
/************************************************************************************************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*Java | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*UnitTesting | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Java | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*UnitTesting | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Language | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Training | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Trainer | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr* Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Java | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*UnitTesting | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Language | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Training | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*Java | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*UnitTesting | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*Language | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*Training | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit DevAppr*Java | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit DevAppr*UnitTesting | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit DevAppr*Language | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit DevAppr*Training | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit DevAppr*Training_Application | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

/*666666666666666666********************************************************************************************************************************************/
/************************************************************************************************************************************************************************/
/**********************************************************INTERACCIONES: FINALES*****************************************************************************/
/************************************************************************************************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************************************************************************************************************/
/***************************************************************************Tarea**************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Tarea | SUBJECT(Experimento*Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_6 RESID_7 RESID_8 RESID_9 RESID_10
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************************************************************************************************************/
/***************************************************************************Session************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(CS)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(UN)
  /SAVE=RESID.

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=Periodo | SUBJECT(Experimento*Sujeto) COVTYPE(AR1)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_11 RESID_12 RESID_13 RESID_14 RESID_15
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.


/*777777777777777777********************************************************************************************************************************************/
/************************************************************************************************************************************************************************/
/************************************************************************Modelo final refinado************************************************************************/
/************************************************************************************************************************************************************************/
/************************************************************************************************************************************************************************/

MIXED Productividad BY DevAppr Tarea Granularity Periodo WITH Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Periodo DevAppr*Tarea Tarea*Granularity DevAppr*Granularity Programing Java UnitTesting JUnit TipoSujeto Language Training Trainer Training_Application Task_Duration
  DevAppr*Programing DevAppr*TipoSujeto DevAppr*Task_Duration DevAppr*Trainer DevAppr*JUnit | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM=INTERCEPT DevAppr | SUBJECT(Experimento) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experimento*Sujeto) COVTYPE(ID)
  /REPEATED=DevAppr | SUBJECT(Experimento*Sujeto) COVTYPE(DIAG)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Periodo) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevAppr*Tarea) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(DevAppr*Tarea) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(DevAppr*Granularity) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(DevAppr*Granularity) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevAppr*TipoSujeto) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(DevAppr*TipoSujeto) COMPARE(TipoSujeto) ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevAppr*Task_Duration) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(DevAppr*Task_Duration) COMPARE(Task_Duration) ADJ(BONFERRONI).


EXAMINE VARIABLES=RESID_1
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.



