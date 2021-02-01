library(tidyverse)

Youtube <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/JuliaCon/Youtube.csv")

Youtube <- Youtube %>% mutate(
  Year = as.factor(Year), 
  Views = Views/1000,
  WatchTime_Hours = WatchTime_Hours/1000)

Youtube %>% group_by(Year) %>% summarize(
Views =sum(Views),
WatchTime_Hours = sum(WatchTime_Hours),
Subscribers= sum(Subscribers)
)

palette_1 <-c("#b890cc","#ad7dc3","#a16bbb","#9558b2")
palette_2 <-c("#7aba6e","#64af56","#4ea33e","#389826")
palette_3 <-c("#dc7d77","#d76760","#d1524a","#cb3c33")


ggplot(data=Youtube,  aes(Year, y=WatchTime_Hours, group=Quarter)) + 
  geom_bar(aes(fill=Quarter), stat="identity", 
           position="dodge") + theme_bw() + 
  scale_fill_manual(values = palette_1) + 
  ylab("Watch Time (1000 Hours)") + ggtitle("Number of Hours Watched") +
  theme(
    plot.title = element_text(color="black", size=14, face="bold"),
    axis.title.x = element_text(color="black", size=12, face="bold"),
    axis.title.y = element_text(color="black", size=12, face="bold")
  )

ggsave("Numbers_of_Hours_Watched.png")

ggplot(data=Youtube,  aes(Year, y=Subscribers, group=Quarter)) + 
  geom_bar(aes(fill=Quarter), stat="identity", 
           position="dodge") + theme_bw()+ 
  scale_fill_manual(values = palette_3) + 
  ylab("Subscribers") + ggtitle("Subscribers")+
  theme(
    plot.title = element_text(color="black", size=14, face="bold"),
    axis.title.x = element_text(color="black", size=12, face="bold"),
    axis.title.y = element_text(color="black", size=12, face="bold")
  )

ggsave("Numbers_of_Subscribers.png")

ggplot(data=Youtube,  aes(Year, y=Views, group=Quarter)) + 
  geom_bar(aes(fill=Quarter), stat="identity", 
           position="dodge") + theme_bw() + 
  scale_fill_manual(values = palette_2) + 
  ylab("Views (1000)") + ggtitle("Number of Views")+
  theme(
    plot.title = element_text(color="black", size=14, face="bold"),
    axis.title.x = element_text(color="black", size=12, face="bold"),
    axis.title.y = element_text(color="black", size=12, face="bold")
  )

ggsave("Numbers_of_Views.png")
