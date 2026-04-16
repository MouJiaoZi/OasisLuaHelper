---@meta

---@class FSpawnSpotFileLimitCfg
---@field LogicTag string
---@field Total number
FSpawnSpotFileLimitCfg = {}


---@class UTriggerAction_SpawnItemSpotFile: UTriggerAction, ITriggerAction_SpawnItemInterface, ITriggerAction_IDIPInterface
---@field SpawnItemCfg FSpawnItemCfg
---@field bUseCountLimit boolean
---@field bReloadCookSpot boolean
---@field UseAttachToHoseActor boolean
---@field bActorSpread boolean
---@field SpreadSpeed number
---@field SpreadInterval number
---@field SpawnSpotFileLimitCfgList ULuaArrayHelper<FSpawnSpotFileLimitCfg>
---@field SpotDataSerialize FUAESpotDataSerialize
local UTriggerAction_SpawnItemSpotFile = {}
