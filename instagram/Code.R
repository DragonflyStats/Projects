library(tidyverse)
myData <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/instagram/companies.csv")


myData <- myData %>% arrange(Company,Date)
Update <- myData %>% arrange(Company,desc(Date)) %>%
group_by(Company) %>%
slice(1) %>%
arrange(Date)
Update %>% View()
write.csv(myData, "companies.csv",row.names=FALSE)
table(Update$Date)

