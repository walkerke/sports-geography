library(nbastatR)
library(tidyverse)

wolves <- get_teams_seasons_shots(teams = "Minnesota Timberwolves")

tj <- filter(wolves, namePlayer == "Tyus Jones")

write_csv(tj, "tyus_jones.csv")
