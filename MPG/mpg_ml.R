#setup
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
#install.packages('dplyr')
library(dplyr)

#import data
player <- read.csv('player_data 38.csv',stringsAsFactors=FALSE)
game <- read.csv('game_data.csv',stringsAsFactors=FALSE)

# overview
head(player)
team_player <- unique(player$Team) %>% sort()
team_player

head(game)
team_game <- unique(game$Team)%>% sort()
team_game

#rename teams as in player
temp
replace <- function(A,B) {
  game$Team[game$Team == A] <- B
  return(game)
}

# ITERATIVELY RUN COLUMN OPERATION 
game <- lapply(game, function(df) {
  df$Team <- ifelse(df$x > 0, 1, df$x)
  return(df)
})


game <- replace('AS Monaco','Monaco')

