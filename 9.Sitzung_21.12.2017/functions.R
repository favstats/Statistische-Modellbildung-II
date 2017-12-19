##### tidy_wide #####

tidy_wide <- function(model) {
  model_wide <- tidy(model) %>% # tidy extrahiert die Parameter
    select(term, estimate) %>%    # wir brauchen nur die logit-koeffs
    spread(term, estimate) %>%    # konvertieren in wide format
    rename(intercept = `(Intercept)`) # umbenennen
  return(model_wide)            # gib model_wide aus
}


##### logit2prob ####

logit2prob <- function(logit) { # logit ist der input
  odds <- exp(logit)          # e hoch logit = odds
  prob <- odds / (1 + odds)   # odds / 1 + odds = Wahrscheinlichkeit
  return(prob)               # gibt Wahrscheinlichkeit zurück
}