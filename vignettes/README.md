# pkmngor

## For Pokémon GO trainers 

Interactive visualisations of selected data from the GAME_MASTER file.  Currently these include

[Base stats for each Pokémon, by type](inst/doc/basestats.html)

[Base capture and flee rates](inst/doc/capture.html)

The source code is provided as an example for developers interested in
creating similar graphs.

## For developers

Provides an R interface to the Pokémon GO GAME_MASTER data. 

[Examples of exploring and extracting data](inst/doc/explore.html)

To install the R package, run

```{r}
library(devtools)
install_github("chjackson/pkmngor")
```

[Github repository for package sources](https://chjackson.github.com/pkmngor)
