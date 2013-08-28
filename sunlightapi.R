#Sunlight Foundation 
#API Link: politicalpartytime.org/api/ 
#Documentation: http://sunlightlabs.github.io/partytime-docs/

library(RJSONIO)
library(plyr)
library(RCurl)
library(rjson)

#set directory
setwd(".../politicalAPI") #change to your working directory

# Initialize a data frame
hdwd <- data.frame()

#sequence for loop
foo <- seq(0, 2850, by=50)

#enter API key
key <- '...' #enter key here in strings

#base URL
base.url <- 'http://politicalpartytime.org/api/v1/lawmaker/?format=json&apikey='

# loop offset
for (i in 1:58 ) {
  final.url <- paste(base.url,key,'&limit=50&offset=',foo[i], sep = "")
  data<- fromJSON(paste(readLines(final.url), collapse=""))            
  hdwd <- rbind(hdwd, ldply(data$objects, 
                            function(x) c(x$affiliate, 
                                          x$crp_id, x$district, x$id, x$name, x$party, x$resource_uri, 
                                          x$state, x$title)))
}
colnames(hdwd) <- c('affiliate', 'crp_id', 'district', 'id', 'name','party', 'resource_uri','state','title')

# save to CSV
write.csv(hdwd, file='sunlight_candidates.csv', row.names=FALSE)
