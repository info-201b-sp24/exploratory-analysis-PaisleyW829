```{r}
library(ggplot2)
library(tidyverse)
library(dplyr)
```

```{r}
BR <- read_csv("U.S._and_State_Trends_on_Teen_Births.csv")
```

```{r}
average_rates <- BR %>%
  group_by(State) %>%
  summarise(AverageRate = mean(`State Rate`, na.rm = TRUE))
```

```{r}
ggplot(average_rates, aes(x = reorder(State, -AverageRate), y = AverageRate, fill = State)) +
  geom_bar(stat = "identity") + # Using identity to use the actual values
  labs(title = "Average Teenage Pregnancy Rates by State", x = "State", y = "Average Pregnancy Rate") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))
```

- We've chose a bar chart to do this visualization for the average teen birth rates per state because it is particularly effective for comparing categorical data. Each bar represents a state, allowing for straightforward comparisons of their average rates. This visualization is excellent for assessing and comparing the magnitude of teen birth rates across different states at a glance. The orientation and length of the bars make it easy to identify which states have higher or lower averages, highlighting areas that might require more focused interventions or further study. By using distinct colors for each state and rotating the x-axis labels, the chart ensures clarity and readability, enhancing the viewer's ability to digest and interpret the data efficiently. 