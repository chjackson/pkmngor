## ---- message=FALSE, warning=FALSE---------------------------------------
library(plotly)
library(ggplot2)
library(pkmngor)
library(dplyr)
flee_vals <- sort(unique(pkmn$encounter.baseFleeRate))
cap_vals <- sort(unique(pkmn$encounter.baseCaptureRate))
cap_labs <- as.character(cap_vals)
cap_labs[c(1,2,4,6)] <- ""
p <- ggplot(pkmn, aes(x=encounter.baseCaptureRate, y=encounter.baseFleeRate, text=pokemonId)) +   geom_jitter(aes(col=type), width=0.015, height=0.002) +
  scale_y_continuous(breaks=flee_vals, limits=c(0,0.22)) + 
  scale_x_continuous(breaks=cap_vals, labels=cap_labs) + 
  annotate(geom="text", x=0.5, y=0.005, label="Excluded ABRA: baseCaptureRate=0.5, baseFleeRate=0.9") + 
  scale_color_manual(values=types$color)
ggplotly(p, tooltip=c("text", "x", "y"), width=720, height=720)

