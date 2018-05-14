library(nbastatR)
library(tidyverse)

teams <- get_nba_teams() %>%
  filter(idConference != 0, 
         !nameTeam %in% c("team Stephen", "TEAM Lebron"))

nba <- get_teams_seasons_shots(teams = teams$nameTeam)

teamlist <- gsub("Los Angeles Clippers", "LA Clippers", teams$nameTeam)

walk(teamlist, function(x) {
  
  team <- filter(nba, nameTeam == x)
  
  out <- sprintf("data/nba/%s.csv", x)
  
  write_csv(team, out)
})



