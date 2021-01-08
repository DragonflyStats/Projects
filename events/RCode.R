
myData <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/events/AttendeeNumbers.csv")
myData <- myData %>% arrange(Event,Date,Attendees) %>% mutate(Date=as.Date(Date))



myData <- myData %>% arrange(Event,Date,Attendees) %>% distinct()
myData <- myData %>% filter(Attendees>=10)
Update <- myData %>% arrange(Event,desc(Date)) %>%
  group_by(Event) %>%
  slice(1) %>%
  arrange(Date)
Update %>% View()
write.csv(myData, "AttendeeNumbers.csv",row.names=FALSE)
table(myData$Date)
head(Update,20)



##############################

Feed <- readLines("feed.txt")
Feed <- Feed[Feed!=""]
Feed <- c(Feed,Feed[1])
BreakPoint <- which(Feed==Feed[1])
Loc1 <- BreakPoint+1
Loc2 <- BreakPoint-1
Loc1 <- Loc1[-length(Loc1)]
Loc2 <- Loc2[-1]
Col1 <- Feed[Loc1]
Col3 <- Feed[Loc2]
Col1 <- gsub(",","",Col1)
Col3 <- gsub(",","",Col3)
Col3 <- gsub("attendees","",Col3)
Col3 <- gsub("attendee","",Col3)
Col3 <- as.numeric(Col3)
ThisTime <- Sys.time()
FeedOutput<- data.frame(Col1,Sys.Date(),ThisTime,Col3)
write.csv(FeedOutput,"FeedOutput.csv",row.names = FALSE) 
