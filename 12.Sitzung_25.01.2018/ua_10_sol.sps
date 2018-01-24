* Encoding: UTF-8.
****************************************************Syntax Übungsaufgabe 10*************************************************************
***********************************************************************************************************************************************
* REML Schätzung.
MIXED stflife
  /METHOD=REML
  /random=intercept | subject(Länder). 

MIXED stflife with Erwerbsstatus
  /fixed=Erwerbsstatus | sstype(3)
  /print= solution
  /method=REML
  /random=intercept | subject(Länder).

* Random Slope (Kovarianz zwischen Länder wird zusätzlich geschätzt).
MIXED stflife with Erwerbsstatus
  /fixed=Erwerbsstatus | sstype(3)
  /method=REML
  /print=solution
  /random=intercept Erwerbsstatus | subject(Länder) covtype(UNR).

* ML Schätzung.
MIXED stflife
  /METHOD=ML
  /random=intercept | subject(Länder). 

MIXED stflife with Erwerbsstatus
  /fixed=Erwerbsstatus | sstype(3)
  /print= solution
  /method=ML
  /random=intercept | subject(Länder).

* Random Slope (Kovarianz zwischen Länder wird zusätzlich geschätzt).
MIXED stflife with Erwerbsstatus
  /fixed=Erwerbsstatus | sstype(3)
  /method=ML
  /print=solution
  /random=intercept Erwerbsstatus | subject(Länder) covtype(UNR).

*Aufgabe 2.
MIXED stflife with Erwerbsstatus
  /fixed=Erwerbsstatus | sstype(3)
  /method=REML
  /print=g solution testcov
  /random=intercept | subject(Länder) covtype(vc).
MIXED stflife with Erwerbsstatus
  /fixed=Erwerbsstatus | sstype(3)
  /method=ML
  /print=g solution testcov
  /random=intercept | subject(Länder) covtype(vc).
 
*Aufgabe 3 (Kovarianz zwischen Länder wird zusätzlich geschätzt).
MIXED stflife with Erwerbsstatus
  /fixed=Erwerbsstatus   | sstype(3)
  /method=REML
  /print=g solution testcov
  /random=intercept Erwerbsstatus | subject(Länder) covtype(UNR).
MIXED stflife with Erwerbsstatus
  /fixed=Erwerbsstatus   | sstype(3)
  /method=ML
  /print=g solution testcov
  /random=intercept Erwerbsstatus | subject(Länder) covtype(UNR).

