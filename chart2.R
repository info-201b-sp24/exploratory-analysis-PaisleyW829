```{r}
library(ggplot2)
library(tidyverse)
library(dplyr)
```

```{r}
BR <- read_csv("U.S._and_State_Trends_on_Teen_Births.csv")
```

```{r}
ggplot(BR, aes(x = Year, y = `U.S. Birth Rate`)) +
  geom_line() +  # Line plot
  geom_point() + # Add points
  labs(title = "U.S. Birth Rate Over the Years", x = "Year", y = "Birth Rate (per 1,000 people)") +
  theme_minimal()
```

- We decided to choose the line and point plot for visualizing the U.S. birth rate over the years primarily because it could effectively and clearly illustrate the trends over time. Line and point plots are excellent for time series data, allowing clear visualization of changes in the birth rate—whether it's rising, declining, or remaining stable. This type of plot provides a continuous view of data, highlighting relationships and movements over the years, which is crucial for understanding demographic dynamics. It can pinpoint trends, detect volatility, and identify anomalies, offering a comprehensive overview of how external factors might influence birth rates. Thus, a line plot not only displays data succinctly but also facilitates easy interpretation of historical and current patterns in birth rates, making it an invaluable tool for researchers and policymakers.



