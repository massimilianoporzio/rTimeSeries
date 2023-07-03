#import Boston dataset
library(readxl)
boston1 <- read_excel("data\\boston1.xls")
library(MASS)
data()
data("airquality")
??airquality
#prova sper vedere se push si abilita
aq = na.omit(airquality)
head(aq)
library(dplyr)
airquality %>% 
  summarise(across(everything(),~ sum(is.na(.))))
aq %>% 
  summarise(across(everything(),~ sum(is.na(.))))
nrow(airquality)