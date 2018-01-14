## ------------------------------------------------------------------------
library(DT)
library(pkmngor)
datatable(pkmn, extensions='FixedColumns', options=list(fixedColumns=list(leftColumns=2), scrollX = TRUE))

## ---- message=FALSE, warning=FALSE---------------------------------------
library(dplyr)

## ---- warning=FALSE------------------------------------------------------
pkmn %>% select(pokemonId, encounter.attackProbability) %>% arrange(encounter.attackProbability) %>% head

## ------------------------------------------------------------------------
pkmn %>% select(pokemonId, encounter.attackProbability) %>% arrange(desc(encounter.attackProbability)) %>% head

## ------------------------------------------------------------------------
#[15] "encounter.movementType"              
#[16] "encounter.movementTimerS"            
#[17] "encounter.jumpTimeS"                 
#[18] "encounter.attackTimerS"              
#[19] "encounter.attackProbability"         
#[20] "encounter.dodgeProbability"          
#[21] "encounter.dodgeDurationS"            
#[22] "encounter.dodgeDistance"             
#[24] "encounter.minPokemonActionFrequencyS"
#[25] "encounter.maxPokemonActionFrequencyS"

## ------------------------------------------------------------------------
pkmn %>% select(pokemonId, encounter.baseCaptureRate) %>% arrange(encounter.baseCaptureRate) %>% head(20)

## ------------------------------------------------------------------------
pkmn %>% select(pokemonId, encounter.baseCaptureRate) %>% 
  filter(!is.na(encounter.baseCaptureRate)) %>% arrange(desc(encounter.baseCaptureRate)) %>% head(20)

## ------------------------------------------------------------------------
pkmn %>% filter(pokemonId == "SLAKOTH") %>% select(encounter.baseCaptureRate) # 0.4

## ------------------------------------------------------------------------
pkmn %>% filter(quickMoves.V1 == "FURY_CUTTER_FAST" | quickMoves.V2 == "FURY_CUTTER_FAST") %>% select(pokemonId)

