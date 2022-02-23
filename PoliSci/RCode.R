library(dplyr)
library(magrittr)
library(readr)

myData <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/PoliSci/Facebook.csv")
myData <- myData %>% arrange(Name,Date) %>% distinct()

Update <- myData %>% arrange(Name,desc(Date)) %>% 
          group_by(Name) %>% 
          slice(1) %>%
          arrange(Date)

Update %>% View()

write.csv(myData, "Facebook.csv",row.names=FALSE)
table(Update$Date)
