library(tidyverse)
EventDetails <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/events/EventDetails.csv")
EventDetails <- EventDetails %>% arrange(End,Event)

PastEvents <- EventDetails %>% filter(End < Sys.Date()) %>% pull(Event)
ListedEvents <- EventDetails  %>% pull(Event)

myData <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/events/AttendeeNumbers.csv")
dim(myData)

PastEventsData <- myData %>% filter(Event %in% PastEvents)
myData <- myData %>% filter(!(Event %in% PastEvents)) 


dim(PastEventsData)
dim(myData)

write.csv(PastEventsData, "PastEvents-Updates.csv",row.names=FALSE)
write.csv(myData, "AttendeeNumbers.csv",row.names=FALSE)
write.csv(EventDetails, "EventDetails.csv",row.names=FALSE)


########################################


LostList <- c("AI Champions Online - Supply Chain",
              "AI for Sustainable Development Goals",
              "Free Training on Microsoft Azure AI-900 Fundamentals Certification (USA)",
              "Free Training on Microsoft Azure DP-900 Fundamentals Certification (USA)",
"The Drug Hunters - Christmas Special",
"6th Annual Oligonucleotide & Precision Therapeutics Congress 2021")









######################################


myData <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/events/AttendeeNumbers.csv")
myData <- myData %>% arrange(Event,Date,Attendees) %>% mutate(Date=as.Date(Date))
myData <- myData %>% filter(!(Event %in% LostList ))
myData <- myData %>% arrange(Event,Date,Attendees) %>% distinct()
#myData <- myData %>% filter(nchar(Event)<=150)
myData <- myData %>% filter(Attendees>=10)
Update <- myData %>% arrange(Event,desc(Date)) %>%
  group_by(Event) %>%
  slice(1) %>%
  arrange(Date)
AllEvents <- Update %>% pull(Event)
Update <- Update %>% filter(Date != Sys.Date())
write.csv(myData, "AttendeeNumbers.csv",row.names=FALSE)
write.csv(Update, "AttendeeUpdate.csv",row.names=FALSE)
table(myData$Date)
table(Update$Date)

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
FeedOutput <- FeedOutput %>% filter(Col3 >= 10)
FeedOutput <- FeedOutput %>% filter(Col1 %in% AllEvents)
dim(FeedOutput)
write.csv(FeedOutput,"FeedOutput.csv",row.names = FALSE) 
