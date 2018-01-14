## ---- message=FALSE, warning=FALSE---------------------------------------
library(plotly)
library(ggplot2)
library(pkmngor)
p <- ggplot(pkmn, aes(x=stats.baseAttack, y=stats.baseSqrtDefTimesStam, text=pokemonId)) + 
  geom_point(aes(col=type)) + 
  xlab("Base attack stat") + 
  ylab("Defensive bulk") +
  scale_color_manual(values=types$color) 
p <- ggplotly(p, width=720, height=720, tooltip=c("text","x","y"))
p

