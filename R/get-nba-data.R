library(tidyverse)
library(nbastatR)

library(nbastatR)

teams <- nba_teams() %>%
  filter(idConference != 0, 
         !nameTeam %in% c("team Stephen", "TEAM Lebron"))

nba <- teams_shots(teams = teams$nameTeam, seasons = 2019)

teamlist <- gsub("Los Angeles Clippers", "LA Clippers", teams$nameTeam)

walk(teamlist, function(x) {
  
  team <- filter(nba, nameTeam == x)
  
  out <- sprintf("data/nba/%s.csv", x)
  
  write_csv(team, out)
})


bucks <- read_csv("data/nba/Milwaukee Bucks.csv")
