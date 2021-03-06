##%######################################################%##
#                                                          #
####     �bungsaufgabe 1: Multivariate Regression       ####
#                                                          #
##%######################################################%##

# Packages laden

#install.packages("devtools")
#devtools::install_github("Espanta/lubripack")
lubripack::lubripack("tidyverse","labelled","haven","car", "texreg")


##%######################################################%##
####     N�tzliche Funktion zum Variablen suchen:       ####
##%######################################################%##

# var_names findet Variablennamen -- ben�tigt "labelled" und "tidyverse" package!
var_names <- function(data, keyword = "") {
  keyword <- ifelse(keyword %in% "all", "", keyword) 
  #if 'all' turn into void, else copy keyword
  lablist <-  data %>% 
    var_label() %>% # extract variable labels
    bind_rows() %>% # binding list elements as dataframe
    t() # transpose dataframe
  name_pos <- stringr::str_detect(tolower(lablist[, 1]), tolower(keyword)) 
  # get position of string
  if(any(name_pos)){ #if the string is found
    dat <-data.frame(var_codes=names(lablist[name_pos, ]),
                     var_names=lablist[name_pos, ],
                     row.names = NULL, stringsAsFactors = F)
    #colnames(dat) <- "var_names"
    cat(paste0("####---- Nice! You found ", nrow(dat) , " variables! ----#### \n \n "))
    return(dat)
  } else{
    cat("Variable Name not found. Try again, Stupid!")
  }
}

##%######################################################%##
#                                                          #
####                     Aufgabe 2                      ####
#                                                          #
##%######################################################%##


# Bevor Sie die Analysen durchf�hren, suchen Sie im Codebuch 
# (o. Variablenliste)  Ihres Datensatzes (ALLBUS 2014) die
# folgenden Variablen heraus: Alter, Geschlecht, Schulabschluss
# und individuelles Nettoeinkommen in der Fassung 
# "Offene Angaben+Listeangaben".

#   Kodieren Sie dann diese Variablen wie folgt:
#   
#   -	Alter: Startwert auf 0 setzen; 18=0, 48=30
#   
#   -	Schulabschluss- bzw. Schuldbildung: 5 Auspr�gungen; 
#   0=kein Schulabschluss, 1=HS, 2=RS, 3=FHR, 4=Abi;
#   Rest=-1 bzw. Missing
#   
#   -	Geschlecht: 0=weiblich; 1=m�nnlich


## 1. Schritt: Working Directory setzen



## 2. Schritt: Datensatz einladen (mit haven und Funktion read_spss)



## 3. Schritt: relevante Variablen identifizieren (mit var_names)



## 4. Schritt: Jetzt w�hlen wir die Variablen und erstellen ein Subset! (mit select)


## 5. Schritt: Als n�chstes benennen wir die Variablen um! (mit rename)



## 6. Schritt: Als n�chstes Rekodieren wir die Variablen (mit ifelse oder Recode)


  
#ODER mit dem Recode() Befehl aus dem car pacakge
  
#######################
## BONUS BONUS BONUS ##
#######################

# Benutze die Pipe um alle Operationen hintereinander durchzuf�hren! #


##%######################################################%##
#                                                          #
####                     Aufgabe 3                      ####
#                                                          #
##%######################################################%##


# Berechnen Sie folgende (sequentielle) Regressionsmodelle:
#  
#  -	Modell a: Einkommen auf Alter;
#  
#  -	Modell b: Einkommen auf Bildung;
#  
#  -	Modell c: Einkommen auf Geschlecht;
#  
#  -	Modell ab: Einkommen auf Alter und Bildug;
#  
#  -	Modell abc: Einkommen auf Alter, Bildung und Geschlecht.





#mit texreg package Modelle visualisieren (screenreg):


#wenn man standartisierte Variablen w�nscht, einfach vorher alle Variablen standartisieren!
#dazu benutzen wir mutate_all und scale!



#Modelle anzeigen



