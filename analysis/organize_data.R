#' ---
#' title: "organize_data.R"
#' author: "Haisu Huang"
#' ---

# This script will read in raw data from the input directory, clean it up to produce 
# the analytical dataset, and then write the analytical data to the output directory. 

#source in any useful functions
source("useful_functions.R")
library(readr)

# creating dataset in R
wdidata <- read_csv("analysis/input/wdidata.csv", 
                    col_names = c("counname", "councode", "time", "timecode",
                                  "pm2.5", "mortrate","lifexpec","co2emmission", 
                                  "gdpcap", "gdpcapgro", "urbanpop", "mortdisease"),
                    skip = 1,
                    na=c("","..","NA"))

junk_stuff <- unique(wdidata$counname)[218:267]

wdidata <- subset(wdidata, 
                  !(wdidata$counname %in% junk_stuff) & 
                    time>2009 & time!=2018,
                  select=c("counname", "councode", "time", "timecode",
                           "pm2.5","lifexpec","co2emmission", 
                           "gdpcap", "gdpcapgro", "urbanpop"))

save(wdidata, file="analysis/output/analytical_data.RData")

