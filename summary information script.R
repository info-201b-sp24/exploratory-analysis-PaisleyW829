library(dplyr)
library(tidyverse)

generate_summary_info <- function(my_dataframe) {
  summary_info <- list()
  
##Number of observations
  summary_info$num_observations <- nrow(my_dataframe)
  
  4680
  
##Number of variables
  summary_info$num_variables <- ncol(my_dataframe)
  
  8
  
##Maximum value of the 'State Rate' column
  summary_info$max_state_rate <- max(as.numeric(my_dataframe$`State Rate`), na.rm = TRUE)
  
  133.7
  
##Minimum value of the 'State Rate' column
  summary_info$min_state_rate <- min(as.numeric(my_dataframe$`State Rate`), na.rm = TRUE)
  
  1.7
  
##Mean of the 'State Rate' column
  summary_info$mean_state_rate <- mean(as.numeric(my_dataframe$`State Rate`), na.rm = TRUE)
  
  42.3073931623931
  
##Median of the 'State Rate' column
  summary_info$median_state_rate <- median(as.numeric(my_dataframe$`State Rate`), na.rm = TRUE)
  
  37.2
  
##Year with the highest 'State Rate'
  summary_info$year_max_state_rate <- my_dataframe %>%
    filter(as.numeric(`State Rate`) == max(as.numeric(`State Rate`), na.rm = TRUE)) %>%
    select(Year) %>%
    pull(Year)
  
  return(summary_info)
}

1993

file_path <- file.choose()
print(paste("Selected file path:", file_path))

my_dataframe <- read_csv(file_path)
print("Data loaded successfully.")

print(head(my_dataframe))

summary_values <- generate_summary_info(my_dataframe)



print(paste("Number of observations:", summary_values$num_observations))
print(paste("Number of variables:", summary_values$num_variables))
print(paste("Maximum State Rate:", summary_values$max_state_rate))
print(paste("Minimum State Rate:", summary_values$min_state_rate))
print(paste("Mean of State Rate:", summary_values$mean_state_rate))
print(paste("Median State Rate:", summary_values$median_state_rate))
print(paste("Year with the highest State Rate:", summary_values$year_max_state_rate))
