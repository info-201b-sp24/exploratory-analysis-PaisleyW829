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

