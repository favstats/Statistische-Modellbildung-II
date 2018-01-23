* Encoding: UTF-8.
****************************************************Syntax Übungsaufgabe 10*************************************************************
***********************************************************************************************************************************************
* REML Schätzung.
MIXED impcntr
  /METHOD=REML
  /random=intercept | subject(Länder). 

MIXED impcntr with lrscale
  /fixed=lrscale | sstype(3)
  /print= solution
  /method=REML
  /random=intercept | subject(Länder).

* Random Slope (Kovarianz zwischen Länder wird zusätzlich geschätzt).
MIXED impcntr with lrscale
  /fixed=lrscale | sstype(3)
  /method=REML
  /print=solution
  /random=intercept lrscale | subject(Länder) covtype(UNR).

* ML Schätzung.
MIXED impcntr
  /METHOD=ML
  /random=intercept | subject(Länder). 

MIXED impcntr with lrscale
  /fixed=lrscale | sstype(3)
  /print= solution
  /method=ML
  /random=intercept | subject(Länder).

* Random Slope (Kovarianz zwischen Länder wird zusätzlich geschätzt).
MIXED impcntr with lrscale
  /fixed=lrscale | sstype(3)
  /method=ML
  /print=solution
  /random=intercept lrscale | subject(Länder) covtype(UNR).