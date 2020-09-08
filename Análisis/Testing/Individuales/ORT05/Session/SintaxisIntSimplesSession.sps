* Encoding: UTF-8.

/*Solo Interacciones Simples*/
/*****************************Modelo efectos aleatorio*****************************/
/**********************************************************************************/

MIXED Effectiveness BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM= INTERCEPT | SUBJECT(Sujeto)
  /SAVE=RESID .

EXAMINE VARIABLES= RESID_1 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/*************************************************************************************/
/*****************************Modelo: Identidad Escalada*****************************/
/************************************************************************************/

MIXED Effectiveness BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Technique | SUBJECT(Sujeto) COVTYPE(ID)
  /SAVE=RESID .

EXAMINE VARIABLES= RESID_2 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***************************************************************************************/
/*****************************Modelo: Simetría Compuesta*****************************/
/*************************************************************************************/

MIXED Effectiveness BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Technique | SUBJECT(Sujeto) COVTYPE(CS)
  /SAVE=RESID .

EXAMINE VARIABLES= RESID_3 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***************************************************************************/
/*****************************Modelo: Diagonal*****************************/
/***************************************************************************/

MIXED Effectiveness BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session  | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Technique | SUBJECT(Sujeto) COVTYPE(DIAG)
  /SAVE=RESID .

EXAMINE VARIABLES= RESID_4 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/********************************************************************************/
/*****************************Modelo: Sin estructura*****************************/
/********************************************************************************/

MIXED Effectiveness BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Technique | SUBJECT(Sujeto) COVTYPE(UN)
  /SAVE=RESID .

EXAMINE VARIABLES= RESID_5 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************/
/*****************************Modelo: AR(1)*****************************/
/***********************************************************************/

MIXED Effectiveness BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Technique | SUBJECT(Sujeto) COVTYPE(AR1)
  /SAVE=RESID .

EXAMINE VARIABLES= RESID_6 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.


/*Interacciones Simples: Eff Transformada*/
/*****************************Modelo efectos aleatorio*****************************/
/**********************************************************************************/

MIXED Eff BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM= INTERCEPT | SUBJECT(Sujeto)
  /SAVE=RESID .

EXAMINE VARIABLES= RESID_1 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/*************************************************************************************/
/*****************************Modelo: Identidad Escalada*****************************/
/************************************************************************************/

MIXED Eff BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Technique | SUBJECT(Sujeto) COVTYPE(ID)
  /SAVE=RESID .

EXAMINE VARIABLES= RESID_2 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***************************************************************************************/
/*****************************Modelo: Simetría Compuesta*****************************/
/*************************************************************************************/

MIXED Eff BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Technique | SUBJECT(Sujeto) COVTYPE(CS)
  /SAVE=RESID .

EXAMINE VARIABLES= RESID_3 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***************************************************************************/
/*****************************Modelo: Diagonal*****************************/
/***************************************************************************/

MIXED Eff BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session  | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Technique | SUBJECT(Sujeto) COVTYPE(DIAG)
  /SAVE=RESID .

EXAMINE VARIABLES= RESID_4 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/********************************************************************************/
/*****************************Modelo: Sin estructura*****************************/
/********************************************************************************/

MIXED Eff BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Technique | SUBJECT(Sujeto) COVTYPE(UN)
  /SAVE=RESID .

EXAMINE VARIABLES= RESID_5 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************/
/*****************************Modelo: AR(1)*****************************/
/***********************************************************************/

MIXED Eff BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Technique | SUBJECT(Sujeto) COVTYPE(AR1)
  /SAVE=RESID .

EXAMINE VARIABLES= RESID_6 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.


MIXED Eff BY Sujeto Program Technique Group Session
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Group Session Technique*Program Technique*Session | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM= INTERCEPT | SUBJECT(Sujeto)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(Program) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Technique) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Group) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Session) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Technique*Program) COMPARE(Technique) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Program*Technique) COMPARE(Program) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Technique*Session) COMPARE(Technique) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Session*Technique) COMPARE(Session) ADJ(BONFERRONI) .
