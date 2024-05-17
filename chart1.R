```{r}
library(ggplot2)
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

- For the first research question, we chose to use a line graph, we believe this would be appropriate because it can clearly show changes over time across different states. This will allow us to identify trends and variations in teenage pregnancy rates over approximately the past decade.