---@meta

---history: 1. 通过离线Cook GroupSpotComponent和SpotComponent到本地文件，运行时通过玩家进入某个Region触发生成物品，无参数。例如生成一般狼人，拾取物品等 2. 重复刷物品, 上飞机后清理重复刷物品缓存. feishen, 20191014
---@class FRepeatSpawnItemCD
---@field Idx number
---@field CurrentSpawnItemCD number
FRepeatSpawnItemCD = {}


---@class UTriggerAction_SpawnItemCooked: UTriggerAction, ITriggerActionSpawnItemInterface, ITriggerAction_SpawnItemInterface, ITriggerAction_IDIPInterface
---@field SpawnItemCfg FSpawnItemCfg
---@field SpotDataSerialize FUAESpotDataSerialize
---@field RepeatSpawnItemCDList ULuaArrayHelper<FRepeatSpawnItemCD>
local UTriggerAction_SpawnItemCooked = {}
