
library(rtweet)
library(gtrendsR)
library(tidyverse)


google_recession_tbl <- gtrends(keyword = "recession", time = "all")


google_recession_tbl$interest_over_time %>%
  as_tibble() %>%
  ggplot(aes(x = date, y = hits)) +
  geom_line() +
  labs(x = NULL, y = NULL,
       title = "Number of hits on Google for the search term 'recession'")


plotly::ggplotly(p)
