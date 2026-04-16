---@meta

---@class UTriggerAction_LostTomb_XBLP: UTriggerAction, ITriggerAction_SpawnItemInterface, ITriggerAction_IDIPInterface
---@field SpawnItemCfg FSpawnItemCfg
---@field SpawnCount number
---@field bCallFailIfGSpotFilterZeroForGM boolean
---@field FailTriggerID number
---@field AroundDistLimitMin number
---@field SpotDataSerialize FUAESpotDataSerialize
local UTriggerAction_LostTomb_XBLP = {}

---@param Tag string
---@param Actor AActor
function UTriggerAction_LostTomb_XBLP:OnSpawnXBLPSupplyBox(Tag, Actor) end
