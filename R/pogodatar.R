#' Pokémon GO Game Data.
#'
#' @source \url{https://raw.githubusercontent.com/BrunnerLivio/pokemongo-game-master}
#' @format Data frame with the following columns. Most are directly from the GAME_MASTER file, but the last few were added by the package author.  
#' \describe{
#'  \item{pokemonId}{Name of Pokémon}
#'  \item{modelScale}{}
#'  \item{type}{}
#'  \item{type2}{}
#'  \item{camera.diskRadiusM}{}
#'  \item{camera.cylinderRadiusM}{}
#'  \item{camera.cylinderHeightM}{}
#'  \item{camera.shoulderModeScale}{}
#'  \item{camera.cylinderGroundM}{}
#'  \item{encounter.baseCaptureRate}{}
#'  \item{encounter.baseFleeRate}{}
#'  \item{encounter.collisionRadiusM}{}
#'  \item{encounter.collisionHeightM}{}
#'  \item{encounter.collisionHeadRadiusM}{}
#'  \item{encounter.movementType}{}
#'  \item{encounter.movementTimerS}{}
#'  \item{encounter.jumpTimeS}{}
#'  \item{encounter.attackTimerS}{}
#'  \item{encounter.attackProbability}{}
#'  \item{encounter.dodgeProbability}{}
#'  \item{encounter.dodgeDurationS}{}
#'  \item{encounter.dodgeDistance}{}
#'  \item{encounter.cameraDistance}{}
#'  \item{encounter.minPokemonActionFrequencyS}{}
#'  \item{encounter.maxPokemonActionFrequencyS}{}
#'  \item{encounter.bonusCandyCaptureReward}{}
#'  \item{encounter.bonusStardustCaptureReward}{}
#'  \item{stats.baseStamina}{}
#'  \item{stats.baseAttack}{}
#'  \item{stats.baseDefense}{}
#'  \item{quickMoves.V1}{}
#'  \item{quickMoves.V2}{}
#'  \item{cinematicMoves.V1}{}
#'  \item{cinematicMoves.V2}{}
#'  \item{cinematicMoves.V3}{}
#'  \item{cinematicMoves.V4}{}
#'  \item{cinematicMoves.V5}{}
#'  \item{cinematicMoves.V6}{}
#'  \item{cinematicMoves.V7}{}
#'  \item{cinematicMoves.V8}{}
#'  \item{animationTime.V1}{}
#'  \item{animationTime.V2}{}
#'  \item{animationTime.V3}{}
#'  \item{animationTime.V4}{}
#'  \item{animationTime.V5}{}
#'  \item{animationTime.V6}{}
#'  \item{animationTime.V7}{}
#'  \item{animationTime.V8}{}
#'  \item{evolutionIds.V1}{}
#'  \item{evolutionIds.V2}{}
#'  \item{evolutionIds.V3}{}
#'  \item{evolutionPips}{}
#'  \item{pokedexHeightM}{}
#'  \item{pokedexWeightKg}{}
#'  \item{heightStdDev}{}
#'  \item{weightStdDev}{}
#'  \item{familyId}{}
#'  \item{candyToEvolve}{}
#'  \item{kmBuddyDistance}{}
#'  \item{modelHeight}{}
#'  \item{evolutionBranch.evolution}{}
#'  \item{evolutionBranch.candyCost}{}
#'  \item{evolutionBranch.V3}{}
#'  \item{parentPokemonId}{}
#'  \item{buddySize}{}
#'  \item{rarity}{}
#'  \item{stats.baseDefPlusStam}{Base defense plus stamina.  Added by package author. }
#'  \item{stats.baseSqrtDefTimesStam}{Square root of (defence times stamina), i.e. geometric mean of defence and stamina.  Added by package author}
#'  \item{type_color}{Color used to represent the Pokémon's primary type.  Added by package author, for convenience when making plots. See \code{\link{types}}}
#' }
#' @examples
#' #  See the vignette for examples of exploring and extracting data.
"pkmn"


#' Pokémon types data.
#'
#' @source Colors from \url{https://bulbapedia.bulbagarden.net/wiki/Category:Type_color_templates}
#' @format Data frame with the following columns.  Many more could be added, feel free to suggest.
#' \describe{
#'  \item{types}{Types}
#'  \item{color}{Color conventionally used for the type, in hex format}
#'  }
#'  
"types"
