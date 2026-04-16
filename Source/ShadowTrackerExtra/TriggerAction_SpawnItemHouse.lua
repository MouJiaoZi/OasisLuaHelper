---@meta

---动态房子调用TriggerEvent_SpawnItemHouse事件生成随机物品，传入动态房子AActor指针。例如打开失落宝箱会为它生成一堆围攻的狼人
---@class FWolfSpotData
FWolfSpotData = {}


---@class FWolfSpotDataWithActor
FWolfSpotDataWithActor = {}


---@class UTriggerAction_SpawnItemHouse: UTriggerAction
---@field SpawnItemCfg FSpawnItemCfg
---@field WolfSpotDataWithActorList ULuaArrayHelper<FWolfSpotDataWithActor>
local UTriggerAction_SpawnItemHouse = {}
