* Encoding: UTF-8.
*Datenaufbereitung aus vorheriger Woche'.

*Alter.
compute alter0= v84-18.
variable labels alter0 "Alter mit 18 als Nullpunkt".
*frequencies alter0.
FREQUENCIES VARIABLES=alter0
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN SKEWNESS KURTOSIS.

*Bildung.
Recode v86 (1=0) (2=1) (3=2) (4=3) (5=4) (else=SYSMIS) into bildung_rec.
variable labels bildung_rec "Abschluss umkodiert".
value labels bildung_rec 0"Kein Schulabschluss" 1"Hauptschule" 2"Realschule" 3"Fachhochschulreife" 4"Abi".
*frequencies bildung_rec.
FREQUENCIES VARIABLES=bildung_rec
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN SKEWNESS KURTOSIS.

*Geschlecht.
Recode v81 (2=0) (1=1) (else=copy) into geschl_rec.
variable labels geschl_rec "Geschlecht mit w=0".
value labels geschl_rec 0"weiblich" 1"männlich".
*frequencies geschl_rec.
FREQUENCIES VARIABLES=geschl_rec
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN SKEWNESS KURTOSIS.

*Einkommen.
COMPUTE einkommen = v419.
*frequencies einkommen.
FREQUENCIES VARIABLES=einkommen 
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN SKEWNESS KURTOSIS.

**Aufgabe 2**
*Erstellen Sie aus der Bildungsvariablen „eine“ Dummyvariable. 
*Führen Sie eine Regression von Einkommen auf Alter, Bildung 
und Geschlecht durch:

* - 0   OHNE ABSCHLUSS
- 1   VOLKS-,HAUPTSCHULE
- 2   MITTLERE REIFE
- 3   FACHHOCHSCHULREIFE
- 4   HOCHSCHULREIFE.


   
 **Aufgabe 4**
*Erstellen Sie eine Interaktionsvariable zwischen Geschlecht 
und Alter und reduzieren Sie vor den folgenden Regressionsanalysen 
den Datensatz, um die Fälle, bei denen die Geburtenentscheidungen 
keine besondere Bedeutung mehr für die Gehaltsentwicklung haben 
sollten (Alter unter 46 Jahren -> SELE IF Alter_0 < 28). 
*Modell 1 enthält dann Alter und Geschlecht, in Modell 2 kommt die 
Interaktionsvariable hinzu.


