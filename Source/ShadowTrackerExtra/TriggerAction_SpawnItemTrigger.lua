---@meta

---通过某种事件触发生成物品，传入生成物品的位置。例如一个触发盒子触发生怪
---@class UTriggerAction_SpawnItemTrigger: UTriggerAction, ITriggerAction_IDIPInterface
---@field SpawnItemCfg FSpawnItemCfg
---@field UseCfgLocation boolean
---@field CfgLocation FVector
---@field UseCfgRot boolean
---@field CfgRotator FRotator
local UTriggerAction_SpawnItemTrigger = {}
