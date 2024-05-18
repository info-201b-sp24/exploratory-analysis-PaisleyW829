```{r}
library(ggplot2)
library(tidyverse)
library(dplyr)
```

```{r}
BR <- read_csv("U.S._and_State_Trends_on_Teen_Births.csv")
```

```{r}
ggplot(BR, aes(x = Year, y = `State Rate`, color = State)) +
  geom_line() +
  labs(title = "Trends in Teenage Pregnancy Rates by State", x = "Year", y = "Teenage Pregnancy Rate") +
  theme_minimal()
```

-  We believe this line plot would be an ideal for visualizing the trends in teenage pregnancy rates by state over time, due to its ability to clearly show changes through connected data points for each state. By incorporating different colors for each state, the plot facilitates easy comparisons, allowing observers to quickly discern which states have higher or lower rates and how these rates evolve relative to each other. This visualization is particularly valuable for identifying trends, fluctuations, and the impacts of different state policies or healthcare access on teenage pregnancy rates. 
