# Source this file to create the pkmn data frame from the downloaded json 

library(jsonlite)
library(tidyverse)

gm <- fromJSON("data-raw/current/GAME_MASTER.json")  # flatten = TRUE ? 
timestampMs <- gm$timestampMs
gm <- gm$itemTemplates
pkmn <- gm$pokemonSettings

pad <- function(x){
  maxlen <- max(sapply(x,length))
  xpad <- lapply(x, function(x)c(x, rep(NA, maxlen - length(x))))
  res <- as.data.frame(do.call("rbind", xpad), stringsAsFactors = FALSE)
  res
}

listids <- which(sapply(pkmn, is.list) & !sapply(pkmn, is.data.frame))
pkmn[,listids] <- lapply(pkmn[,listids], pad)

pkmn <- do.call("cbind", pkmn) %>% 
  as.tbl %>% 
  filter(!is.na(pokemonId)) %>%
  mutate(pokemonId = as.character(pokemonId), 
         stats.baseDefPlusStam = stats.baseDefense + stats.baseStamina,
         stats.baseSqrtDefTimesStam = sqrt(stats.baseDefense*stats.baseStamina),
         type = sub("POKEMON_TYPE_" , "", type),
         type2 = sub("POKEMON_TYPE_" , "", type2)) 

types <- c("GRASS"="78C850", "FIRE"="F08030", "WATER"="6890F0", "BUG"="A8B820", "NORMAL"="A8A878", 
           "POISON"="A040A0", "ELECTRIC"="F8D030","GROUND"="E0C068", "FAIRY"="EE99AC", 
           "FIGHTING"="C03028", "PSYCHIC"="A040A0", "ROCK"="B8A038", "GHOST"="705898", "ICE"="98D8D8", 
           "DRAGON"="7038F8", "DARK"="705848", "STEEL"="B8B8D0", "FLYING"="A890F0")
# from https://bulbapedia.bulbagarden.net/wiki/Category:Type_color_templates
# there are also dark and light versions of colours
types <- data.frame(type = names(types), 
                    color = paste0("#", types), 
                    stringsAsFactors = FALSE)

pkmn <- pkmn %>% 
  inner_join(types) %>%
  mutate(type = factor(type, levels=types$type)) # types in pokedex order

## add Pokedex ids, from https://github.com/veekun/pokedex/blob/master/pokedex/data/csv/pokemon.csv
#pokedex <- read.csv("data-raw/pokemon.csv", as.is=TRUE) %>% 
#  mutate(identifier = toupper(identifier)) %>% 
#  select(id, pokemonId = identifier)
# don't bother with this, as some names don't match. 
# pkmn <- pkmn %>% inner_join(pokedex) %>% arrange(id)
# Seems row numbers naturally match pokedex IDs, as all included, even unreleased ones.

save(pkmn, file="data/pkmn.rda")
save(types, file="data/types.rda")
