﻿* Encoding: UTF-8.

GLM ProdTLD ProdTDD1 ProdTDD2
  /WSFACTOR=Prod 3 Polynomial 
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(OVERALL) 
  /EMMEANS=TABLES(Prod) COMPARE ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ OPOWER
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Prod.
