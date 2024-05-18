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

#The dataset includes 784 observations across 8 variables. 
#The maximum state rate is 113.8, while the minimum state rate recorded is 4.5.
#This highlights the variation in teen birth rates among different states. 
#The 'State Rate' column, which records the rate of teen births by state, shows a mean value of 37.2,
#indicating the average teen birth rate across all states and years in the dataset. 
#Additionally, the median of state rate is 37.4, 
#which suggest that about half of the observations have a state rate below this value, and half are above.
#The year with the highest recorded state teen birth rate in the dataset is in 1991. 
#These findings provide a comprehensive overview of the teen birth rates across different states 
#in different years, illustrating variations and tendencies of the dataset.