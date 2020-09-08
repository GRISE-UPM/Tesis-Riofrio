* Encoding: UTF-8.
/**********************************************************************************/
/*****************************Modelo efectos aleatorio*****************************/
/**********************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity DevAppr*Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM= INTERCEPT | SUBJECT(Sujeto)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevAppr*Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_1 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/*************************************************************************************/
/*****************************Modelo: Identidad Escalada*****************************/
/************************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity DevAppr*Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(ID)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevAppr*Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_2 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***************************************************************************************/
/*****************************Modelo: Simetría Compuesta*****************************/
/*************************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity DevAppr*Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(CS)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevAppr*Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_3 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***************************************************************************/
/*****************************Modelo: Diagonal*****************************/
/***************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity DevAppr*Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(DIAG)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevAppr*Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_4 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/********************************************************************************/
/*****************************Modelo: Sin estructura*****************************/
/********************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity DevAppr*Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(UN)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevAppr*Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_5 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************/
/*****************************Modelo: AR(1)*****************************/
/***********************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity DevAppr*Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(AR1)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevAppr*Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_6 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.










/**********************************************************************************/
/*****************************Modelo efectos aleatorio*****************************/
/**********************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM= INTERCEPT | SUBJECT(Sujeto)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_1 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/*************************************************************************************/
/*****************************Modelo: Identidad Escalada*****************************/
/************************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(ID)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_2 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***************************************************************************************/
/*****************************Modelo: Simetría Compuesta*****************************/
/*************************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(CS)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_3 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***************************************************************************/
/*****************************Modelo: Diagonal*****************************/
/***************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(DIAG)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_4 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/********************************************************************************/
/*****************************Modelo: Sin estructura*****************************/
/********************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(UN)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_5 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************/
/*****************************Modelo: AR(1)*****************************/
/***********************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(AR1)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_6 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.





/*************************************************************************************/
/*****************************TAREA *****************************/
/************************************************************************************/

/*************************************************************************************/
/*****************************Modelo: Identidad Escalada*****************************/
/************************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Tarea | SUBJECT(Sujeto) COVTYPE(ID)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_1
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***************************************************************************************/
/*****************************Modelo: Simetría Compuesta*****************************/
/*************************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Tarea | SUBJECT(Sujeto) COVTYPE(CS)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_2 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***************************************************************************/
/*****************************Modelo: Diagonal*****************************/
/***************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Tarea | SUBJECT(Sujeto) COVTYPE(DIAG)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_3 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/********************************************************************************/
/*****************************Modelo: Sin estructura*****************************/
/********************************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Tarea | SUBJECT(Sujeto) COVTYPE(UN)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_4
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************/
/*****************************Modelo: AR(1)*****************************/
/***********************************************************************/

MIXED Productividad BY Sujeto Tarea DevAppr Granularity
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea Granularity Tarea*DevAppr Granularity*DevAppr Tarea*Granularity | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=Tarea | SUBJECT(Sujeto) COVTYPE(AR1)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*DevAppr) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Granularity*DevAppr) COMPARE(Granularity) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Tarea) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea*Granularity) COMPARE(Granularity) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_5
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.
