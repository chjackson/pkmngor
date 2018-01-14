# Source this file to create the pkmn data frame from the downloaded json 

download.file("https://raw.githubusercontent.com/BrunnerLivio/pokemongo-game-master/master/versions/latest/GAME_MASTER.json", 
              "data-raw/current/GAME_MASTER.json")

tmp <- tempfile()
download.file("https://raw.githubusercontent.com/BrunnerLivio/pokemongo-game-master/master/versions/latest-version.txt", 
              tmp)
version <- scan(tmp,what="character")
