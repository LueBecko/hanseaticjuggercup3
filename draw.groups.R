library(readr)

participation <- read_csv("participation.csv")

library(tidyverse)

set.seed(24092017)

participation$group <- NA
# set home teams as fixed
participation$group[participation$TeamName == 'Blutgrätsche'] <- 1
participation$group[participation$TeamName == 'Wadenbeisser'] <- 2

participation$group[sample(which(is.na(participation$group)), 6, FALSE)] <- 1
participation$group[is.na(participation$group)] <- 2

View(participation)
