library(baseballr)
library(tidyverse)

df <- daily_batter_bref("2018-03-01", "2018-05-28") %>%
  filter(G > 19)

woba <- woba_plus(df) %>%
  select(Name, Team, OBP, wOBA)


df2 <- daily_pitcher_bref("2018-03-01", "2018-05-28") %>%
  filter(IP > 29)


fip <- fip_plus(df2) %>%
  select(Name, Team, ERA, FIP)