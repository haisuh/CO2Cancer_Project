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
wdidata <- read_csv("analysis/input/WDI_Data.csv", 
                    col_names = c("counname", "councode", "time", "timecode",
                                  "pm2.5", "mortrate", "mortdisease","lifexpec","co2emmission"),
                    skip = 1)
wdidef <- read_csv2("analysis/input/WDI_Definition and Source.csv")

# saving dataset to output folder
write_csv(wdidata, "analysis/input/WDI_Data.csv")
write_csv(wdidef, "analysis/input/WDI_Definition and Source.csv")
