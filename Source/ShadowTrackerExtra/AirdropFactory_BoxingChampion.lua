---@meta

---@class FBoxingChampionAirdropBoxConfig
---@field AirdropBoxCount number
---@field MarkActorTemplate AActor
---@field AirDropBoxTemplate AAirDropBoxActor
FBoxingChampionAirdropBoxConfig = {}


---@class UAirdropFactory_BoxingChampion: UAirdropFactory
---@field AirdropHight number
---@field AirdropBoxConfig FBoxingChampionAirdropBoxConfig
---@field AirdropBoxSatelliteCitiesConfig FBoxingChampionAirdropBoxConfig
---@field ControllerList ULuaArrayHelper<ASTExtraPlayerController>
local UAirdropFactory_BoxingChampion = {}
