* Encoding: UTF-8.

GLM Prod_ITL Prod_TDD BY Grupo
  /WSFACTOR=DevelopmentApproach 2 Polynomial 
  /MEASURE=Productivity 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(DevelopmentApproach Grupo Grupo*DevelopmentApproach DevelopmentApproach*Grupo) 
    TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(OVERALL) 
  /EMMEANS=TABLES(Grupo) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevelopmentApproach) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevelopmentApproach*Grupo) COMPARE(Grupo) ADJ(BONFERRONI)
  /EMMEANS=TABLES(Grupo*DevelopmentApproach) COMPARE(DevelopmentApproach) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE HOMOGENEITY 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=DevelopmentApproach 
  /DESIGN=Grupo.


GLM Prod_ITL Prod_TDD BY Gran
  /WSFACTOR=DevelopmentApproach 2 Polynomial 
  /MEASURE=Productivity 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(DevelopmentApproach Gran Gran*DevelopmentApproach DevelopmentApproach*Gran) 
    TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(OVERALL) 
  /EMMEANS=TABLES(Gran) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevelopmentApproach) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(DevelopmentApproach*Gran) COMPARE(Gran) ADJ(BONFERRONI)
  /EMMEANS=TABLES(Gran*DevelopmentApproach) COMPARE(DevelopmentApproach) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE HOMOGENEITY 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=DevelopmentApproach 
  /DESIGN=Gran.


GLM Prod_ITL Prod_TDD BY Granularity Tarea
  /WSFACTOR=EnfoqueDes 2 Polynomial 
  /MEASURE=Prod 
  /METHOD=SSTYPE(3)
  /POSTHOC=Granularity Tarea(TUKEY) 
  /PLOT=PROFILE(Granularity*Tarea Granularity*EnfoqueDes Tarea*EnfoqueDes) TYPE=LINE ERRORBAR=NO 
    MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(OVERALL) 
  /EMMEANS=TABLES(Granularity) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(EnfoqueDes) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity*Tarea)  COMPARE (Granularity) ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*Granularity)  COMPARE (Tarea) ADJ(BONFERRONI)
  /EMMEANS=TABLES(Granularity*EnfoqueDes) COMPARE (Granularity) ADJ(BONFERRONI)
  /EMMEANS=TABLES(EnfoqueDes*Granularity) COMPARE (EnfoqueDes) ADJ(BONFERRONI)
  /EMMEANS=TABLES(Tarea*EnfoqueDes)  COMPARE (EnfoqueDes) ADJ(BONFERRONI)
  /EMMEANS=TABLES(EnfoqueDes*Tarea) COMPARE (Tarea) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE HOMOGENEITY
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=EnfoqueDes 
  /DESIGN=Granularity Tarea Granularity*Tarea.
