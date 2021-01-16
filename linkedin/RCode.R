
myData <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/linkedin/tags.csv")
myData <- myData %>% arrange(Tag,Date)
Update <- myData %>% arrange(Tag,desc(Date)) %>%
group_by(Tag) %>%
slice(1) %>%
arrange(Date)
Update %>% View()
write.csv(myData, "tags.csv",row.names=FALSE)

table(Update$Date)
head(Update,20)
