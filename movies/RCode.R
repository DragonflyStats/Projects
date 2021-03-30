MovieData <- read.csv("C:/Users/kilbi/OneDrive/Documents/MOVIES/data/movie_metadata.csv")

MovieData <- MovieData %>% select( -contains("actor"))

MovieData <- MovieData %>% select( -contains("facebook_likes"))

MovieData <- MovieData %>% filter(duration>60) %>% filter( !is.na(title_year)) %>% 
  filter(num_voted_users>100) %>%
  mutate(tag_link = movie_imdb_link) %>% 
  mutate(tag_link= gsub("\\?ref_=fn_tt_tt_1","keywords?ref_=tt_ql_stry_4",tag_link)) %>%
  mutate(imdb_key = movie_imdb_link) %>% 
  mutate(imdb_key= gsub("\\?ref_=fn_tt_tt_1","",imdb_key)) %>% 
  mutate(movie_title = str_sub(movie_title,1,nchar(movie_title)-2)) %>%
  filter( plot_keywords != "")




Tag_Data =data.frame()

for (i in 4000:nrow(MovieData)){

  Title <- MovieData$movie_title[i]
  Link <- MovieData$imdb_key[i]
  thisfile <- MovieData$tag_link[i]
  
  
  thisfile_Data <- read_html(thisfile, skip = 0, remove.empty = TRUE)
  Start_point <- grep("plot keyword",thisfile_Data)+1
  End_point <- grep("See also",thisfile_Data)-1
  
  thisfile_Data <- thisfile_Data[Start_point:End_point]
  
  thisfile_Data <- setdiff(thisfile_Data,c("Yes","No","Is this relevant?","Relevant?"))
  thisfile_Data <- thisfile_Data[ -(grep("found this relevant",thisfile_Data))]  
  
  
  if( length(thisfile_Data)>0){
  this_tag_DF <- data.frame(Title,Link,Tags=thisfile_Data )
  
  Tag_Data <- Tag_Data %>% bind_rows(this_tag_DF)
  }
}

write.csv(Tag_Data,"Tag_Data_8.csv")
