library(dplyr)
library(magrittr)

myData <- read.csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/PoliSci/Facebook.csv")
myData <- myData %>% arrange(Name,Date)

Update <- myData %>% arrange(Name,desc(Date)) %>% 
          group_by(Name) %>% 
          slice(1) %>%
          arrange(Date)

write.csv(myData, "Facebook.csv",row.names=FALSE)
