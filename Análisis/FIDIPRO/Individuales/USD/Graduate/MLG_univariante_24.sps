﻿* Encoding: UTF-8.

DATASET ACTIVATE ConjuntoDatos1.
UNIANOVA Productividad BY Tarea1 DevAppr
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /SAVE=PRED RESID
  /PLOT=PROFILE(Tarea1*DevAppr DevAppr*Tarea1 Tarea1 DevAppr)
  /EMMEANS=TABLES(OVERALL) 
  /EMMEANS=TABLES(Tarea1) 
  /EMMEANS=TABLES(DevAppr) 
  /EMMEANS=TABLES(Tarea1*DevAppr)
  /EMMEANS=TABLES(DevAppr*Tarea1)
  /PRINT=DESCRIPTIVE HOMOGENEITY
  /CRITERIA=ALPHA(.05)
  /DESIGN=Tarea1 DevAppr Tarea1*DevAppr.

EXAMINE VARIABLES=RES_1
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.


UNIANOVA Log_Prod BY Tarea1 DevAppr
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /SAVE=PRED RESID
  /PLOT=PROFILE(Tarea1*DevAppr DevAppr*Tarea1 Tarea1 DevAppr)
  /EMMEANS=TABLES(OVERALL) 
  /EMMEANS=TABLES(Tarea1) 
  /EMMEANS=TABLES(DevAppr) 
  /EMMEANS=TABLES(Tarea1*DevAppr)
  /EMMEANS=TABLES(DevAppr*Tarea1)
  /PRINT=DESCRIPTIVE HOMOGENEITY
  /CRITERIA=ALPHA(.05)
  /DESIGN=Tarea1 DevAppr Tarea1*DevAppr.

EXAMINE VARIABLES=RES_2
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.


UNIANOVA SQRT_Prod BY Tarea1 DevAppr
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /SAVE=PRED RESID
  /PLOT=PROFILE(Tarea1*DevAppr DevAppr*Tarea1 Tarea1 DevAppr)
  /EMMEANS=TABLES(OVERALL) 
  /EMMEANS=TABLES(Tarea1) 
  /EMMEANS=TABLES(DevAppr) 
  /EMMEANS=TABLES(Tarea1*DevAppr)
  /EMMEANS=TABLES(DevAppr*Tarea1)
  /PRINT=DESCRIPTIVE HOMOGENEITY
  /CRITERIA=ALPHA(.05)
  /DESIGN=Tarea1 DevAppr Tarea1*DevAppr.

EXAMINE VARIABLES=RES_3
  /PLOT NPPLOT
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

