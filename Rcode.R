library(readr)
library(dplyr)
library(magrittr)

myData <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/currsci.csv")
myData <- myData %>% filter( !is.na(Test))


 myData %>% group_by(Test) %>% summarize(meanTemp =mean(Temperature))
 
 myData %>% group_by(Test) %>% summarize(meanTemp =mean(Attenuator))
