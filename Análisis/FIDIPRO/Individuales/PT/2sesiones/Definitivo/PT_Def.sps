* Encoding: UTF-8.
/**********************************************************************************/
/*****************************Modelo efectos aleatorio*****************************/
/**********************************************************************************/

MIXED Productividad BY Sujeto Tarea1 DevAppr
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea1 Tarea1*DevAppr | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /RANDOM= INTERCEPT | SUBJECT(Sujeto)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
 /EMMEANS=TABLES(Tarea1) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea1*DevAppr)
  /EMMEANS=TABLES(DevAppr*Tarea1)
  /EMMEANS=TABLES(Tarea1*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea1*DevAppr) COMPARE(Tarea1) ADJ(BONFERRONI) .

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

MIXED Productividad BY Sujeto Tarea1 DevAppr
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea1 Tarea1*DevAppr | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(ID)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
 /EMMEANS=TABLES(Tarea1) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea1*DevAppr)
  /EMMEANS=TABLES(Tarea1*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea1*DevAppr) COMPARE(Tarea1) ADJ(BONFERRONI) .

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

MIXED Productividad BY Sujeto Tarea1 DevAppr
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea1 Tarea1*DevAppr | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(CS)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
 /EMMEANS=TABLES(Tarea1) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea1*DevAppr)
  /EMMEANS=TABLES(Tarea1*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea1*DevAppr) COMPARE(Tarea1) ADJ(BONFERRONI) .

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

MIXED Productividad BY Sujeto Tarea1 DevAppr
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea1 Tarea1*DevAppr | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(DIAG)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
 /EMMEANS=TABLES(Tarea1) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea1*DevAppr)
  /EMMEANS=TABLES(DevAppr*Tarea1)
  /EMMEANS=TABLES(Tarea1*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea1*DevAppr) COMPARE(Tarea1) ADJ(BONFERRONI) .
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

MIXED Productividad BY Sujeto Tarea1 DevAppr
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea1 Tarea1*DevAppr | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(UN)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
 /EMMEANS=TABLES(Tarea1) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea1*DevAppr)
  /EMMEANS=TABLES(Tarea1*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea1*DevAppr) COMPARE(Tarea1) ADJ(BONFERRONI) .

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

MIXED Productividad BY Sujeto Tarea1 DevAppr
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=DevAppr Tarea1 Tarea1*DevAppr | SSTYPE(3)
  /METHOD=ML
  /PRINT=G  SOLUTION TESTCOV
  /REPEATED=DevAppr | SUBJECT(Sujeto) COVTYPE(AR1)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(DevAppr) COMPARE ADJ(BONFERRONI)
 /EMMEANS=TABLES(Tarea1) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea1*DevAppr)
  /EMMEANS=TABLES(DevAppr*Tarea1)
  /EMMEANS=TABLES(Tarea1*DevAppr) COMPARE(DevAppr) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Tarea1*DevAppr) COMPARE(Tarea1) ADJ(BONFERRONI) .

EXAMINE VARIABLES=RESID_6 
  /PLOT NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

