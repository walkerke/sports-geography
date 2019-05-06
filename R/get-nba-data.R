library(tidyverse)

<<<<<<< HEAD
library(nbastatR)

=======
>>>>>>> 81499ccdd9a2f239e832c23a7bd274be71a66332
teams <- nba_teams() %>%
  filter(idConference != 0, 
         !nameTeam %in% c("team Stephen", "TEAM Lebron"))

<<<<<<< HEAD
nba <- teams_shots(teams = teams$nameTeam, seasons = 2019)
=======
nba <- teams_shots(teams = teams$nameTeam)
>>>>>>> 81499ccdd9a2f239e832c23a7bd274be71a66332

teamlist <- gsub("Los Angeles Clippers", "LA Clippers", teams$nameTeam)

walk(teamlist, function(x) {
  
  team <- filter(nba, nameTeam == x)
  
  out <- sprintf("data/nba/%s.csv", x)
  
  write_csv(team, out)
})


bucks <- read_csv("data/nba/Milwaukee Bucks.csv")
