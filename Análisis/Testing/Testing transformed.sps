* Encoding: UTF-8.

DATASET ACTIVATE ConjuntoDatos1.

/*111111111111111111******************************************************************************************************************************************/
/***************************************************************************NULO********************************************************************************/
/****************************************************************************************************************************************************************/

/****************************************************************************************************************************************************************/
/***************************************************************************Tecnica*****************************************************************************/
/***************************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
  ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)    
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, 
  ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)    
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)    
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject) COVTYPE(CS)
  /SAVE=RESID.


************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/**********************************************************************************************************************************************************************/
/***************************************************************************Periodo***********************************************************************************/
/*********************************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject) COVTYPE(CS)
  /SAVE=RESID.


************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_6 RESID_7 RESID_8 RESID_9 RESID_10
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/************************************************************************************************************************************************************************/
/***************************************************************************Programa**********************************************************************************/
/************************************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_11 RESID_12 RESID_13 RESID_14 RESID_15
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/*222222222222222222******************************************************************************************************************************************/
/***************************************************************************BASE*********************************************************************************/
/****************************************************************************************************************************************************************/

/****************************************************************************************************************************************************************/
/***************************************************************************Tecnica*****************************************************************************/
/***************************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***********************************************************************************************************************************************************************/
/***************************************************************************Periodo************************************************************************************/
/**********************************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_6 RESID_7 RESID_8 RESID_9 RESID_10
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***********************************************************************************************************************************************************************/
/***************************************************************************Programa**********************************************************************************/
/**********************************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0, ABSOLUTE) LCONVERGE(0, 
  ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE)
  /FIXED=Program Technique Period Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_11 RESID_12 RESID_13 RESID_14 RESID_15
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/*333333333333333333***************************************************************************************************************************************/
/************************************************************TODAS LAS VARIABLES****************************************************************************/
/*************************************************************************************************************************************************************/

/************************************************************************************************************************************************************/
/***************************************************************************Tecnica*************************************************************************/
/***********************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***********************************************************************************************************************************************************************/
/***************************************************************************Periodo************************************************************************************/
/**********************************************************************************************************************************************************************/


************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_6 RESID_7 RESID_8 RESID_9 RESID_10
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***********************************************************************************************************************************************************************/
/***************************************************************************Programa**********************************************************************************/
/**********************************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period DOTSEM TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs DOTSEM TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_11 RESID_12 RESID_13 RESID_14 RESID_15
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.


/*333333333333333333************************************************************************************************************************************/
/************************************************************TODAS LAS VARIABLES: Sin DOTSEM************************************************************/
/*********************************************************************************************************************************************************/

/********************************************************************************************************************************************************/
/***************************************************************************Tecnica*********************************************************************/
/*******************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***********************************************************************************************************************************************************************/
/***************************************************************************Periodo************************************************************************************/
/**********************************************************************************************************************************************************************/


************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_6 RESID_7 RESID_8 RESID_9 RESID_10
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***********************************************************************************************************************************************************************/
/***************************************************************************Programa**********************************************************************************/
/**********************************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_11 RESID_12 RESID_13 RESID_14 RESID_15
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.



/*444444444444444444******************************************************************************************************************************************/
/*****************************************************************************RANDOM**************************************************************************/
/***************************************************************************************************************************************************************/

/**************************************************************************************************************************************************************/
/***************************************************************************Tecnica***************************************************************************/
/*************************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***********************************************************************************************************************************************************************/
/***************************************************************************Periodo************************************************************************************/
/**********************************************************************************************************************************************************************/


************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_6 RESID_7 RESID_8 RESID_9 RESID_10
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***********************************************************************************************************************************************************************/
/***************************************************************************Programa**********************************************************************************/
/**********************************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_11 RESID_12 RESID_13 RESID_14 RESID_15
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/*555555555555555555****************************************************************************************************************************************/
/********************************************************ITERACCIONES: Sin Random Una por  una***************************************************************/
/*************************************************************************************************************************************************************/

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*Exp_Abs | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*Exp_Abs | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*Exp_Abs Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*Exp_Abs Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.


/*555555555555555555****************************************************************************************************************************************/
/********************************************************ITERACCIONES: Con Random Una por  una**************************************************************/
/*************************************************************************************************************************************************************/

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*Exp_Abs | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*Exp_Abs | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*Exp_Abs Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*Exp_Abs Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.


/*666666666666666666****************************************************************************************************************************************/
/**************************************************************ITERACCIONES FInales **************************************************************************/
/*************************************************************************************************************************************************************/

/**************************************************************************************************************************************************************/
/***************************************************************************Tecnica***************************************************************************/
/*************************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Technique | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_1 RESID_2 RESID_3 RESID_4 RESID_5
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***********************************************************************************************************************************************************************/
/***************************************************************************Periodo************************************************************************************/
/**********************************************************************************************************************************************************************/


************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_6 RESID_7 RESID_8 RESID_9 RESID_10
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

/***********************************************************************************************************************************************************************/
/***************************************************************************Programa**********************************************************************************/
/**********************************************************************************************************************************************************************/

************************************ SCALED IDENTITY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(ID)
  /SAVE=RESID.

************************************ DIAGONAL

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID.

************************************ AR(1)

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(AR1)
  /SAVE=RESID.

************************************ COMPOUND SYMMETRY

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(CS)
  /SAVE=RESID.

************************************ UNSTRUCTURED

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Program | SUBJECT(Subject*Experiment) COVTYPE(UN)
  /SAVE=RESID.

EXAMINE VARIABLES=RESID_11 RESID_12 RESID_13 RESID_14 RESID_15
  /PLOT NPPLOT
  /STATISTICS NONE
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.


/*777777777777777777****************************************************************************************************************************************/
/**************************************************************ITERACCIONES FInales **************************************************************************/
/*************************************************************************************************************************************************************/

MIXED Effectiveness_trans BY Program Technique Period TPD WITH Exp_Relative Exp_Abs
  /CRITERIA=CIN(95) MXITER(100) MXSTEP(10) SCORING(1) SINGULAR(0.000000000001) HCONVERGE(0,
    ABSOLUTE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0.000001, ABSOLUTE) 
  /FIXED=Program Technique Period Exp_Relative Exp_Abs TPD Program*Technique Technique*Exp_Relative Technique*TPD | SSTYPE(3)
  /METHOD=ML
  /RANDOM=INTERCEPT Technique | SUBJECT(Experiment) COVTYPE(ID)
  /RANDOM=INTERCEPT | SUBJECT(Experiment*Subject) COVTYPE(ID)
  /REPEATED=Period | SUBJECT(Subject*Experiment) COVTYPE(DIAG)
  /SAVE=RESID
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(Program) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Technique) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Period) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(TPD) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Program*Technique) COMPARE(Program) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Technique*Program) COMPARE(Technique) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Technique*TPD) COMPARE(TPD) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(TPD*Technique) COMPARE(Technique) ADJ(BONFERRONI).

EXAMINE VARIABLES=RESID_1
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.
