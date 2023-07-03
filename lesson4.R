read1 = read.csv("data\\Resp1.csv",header = T)
head(read1)
str(read1)

winer1 <- read.csv("data\\winequality-red.csv",header = T,sep = ";")
head(winer1)
str(winer1)
summary(winer1)
library(tidyverse)
library(dataxray)
library(correlationfunnel)

winer1 %>%
  make_xray() %>% view_xray()



winer1 %>% binarize() %>% glimpse() %>% correlate(target = quality) %>% plot_correlation_funnel()

library(readxl)
dfb = read_excel("data\\boston1.xls")
head(dfb)
summary(dfb)
library(RCurl)
data1 = read.csv(text = getURL("https://raw.githubusercontent.com/sciruela/Happiness-Salaries/master/data.csv"))

head(data1)
str(data1)