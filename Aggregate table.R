install.packages("readr")
library(readr)
csv_url <- "https://www.cdc.gov/nchs/data-visualization/teen-births/index.htm"
teen_births_data <- read_csv(csv_url)
install.packages("dplyr")
library(dplyr)
teen_births_data <- read_csv("/Users/TippiFang/Downloads/Teen_Births.csv")

colnames(teen_births_data)

teen_births_data <- teen_births_data %>%
  rename(
    StateRate = `State Rate`
  )

aggregate_table <- teen_births_data %>%
  group_by(State, Year) %>%
  summarise(
    AverageStateRate = round(mean(StateRate, na.rm = TRUE), 2),
    TotalStateBirths = sum(`State Births`, na.rm = TRUE) 
  ) %>%
  arrange(State, Year)

us_birth_rate_yearly <- teen_births_data %>%
  group_by(Year) %>%
  summarise(
    AverageUSBirthRate = round(mean(USBirthRate, na.rm = TRUE), 2)
  ) %>%
  arrange(Year)

us_birth_rate_yearly <- teen_births_data %>%
  group_by(Year) %>%
  summarise(
    AverageUSBirthRate = round(mean(USBirthRate, na.rm = TRUE), 2),
    TotalUSBirths = sum(`U.S. Births`, na.rm = TRUE) 
  ) %>%
  arrange(Year)

##One of these two tables is the annual average teen birth rate and the total 
## number of teen births in each state, while the other is a more 
## summarized table that contains the average teen birth rate and the
##total number of teen births in the United States for each year.
## The state table can help us more clearly see the annual data of teen birth in 
##different states, facilitate us to make a clearer comparison,and reveal
## the possible reasons behind the data changes, such as which state may implement
## relevant policies and which state does not. 
## The US birth table reveals the overall data of this country. 
##Through the comparison between different years, we can guess 
##whether the United States has taken actions control this behavior and whether
##the teenagers' sexual awareness has increased.