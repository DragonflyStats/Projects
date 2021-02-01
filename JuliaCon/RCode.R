library(tidyverse)

Youtube <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/JuliaCon/Youtube.csv")

Youtube %>% group_by(Year) %>% summarize(
Views =sum(Views),
WatchTime_Hours = sum(WatchTime_Hours),
Subscribers= sum(Subscribers)
)

ggplot(data=Youtube,  aes(Year, y=WatchTime_Hours, group=Quarter)) + 
  geom_bar(aes(fill=Quarter), stat="identity", 
           position="dodge") + theme_bw()

ggplot(data=Youtube,  aes(Year, y=Subscribers, group=Quarter)) + 
  geom_bar(aes(fill=Quarter), stat="identity", 
           position="dodge") + theme_bw()


ggplot(data=Youtube,  aes(Year, y=Views, group=Quarter)) + 
  geom_bar(aes(fill=Quarter), stat="identity", 
           position="dodge") + theme_bw()
