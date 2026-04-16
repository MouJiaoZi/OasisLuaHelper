---@meta

---@class FUGCAISpawnItem
---@field ItemHandleName string
---@field Count number
FUGCAISpawnItem = {}


---@class FUGCAISpawnItemWithID
---@field ItemSpecificID number
---@field Count number
FUGCAISpawnItemWithID = {}


---@class UBTTask_UGC_SpawnItem: UBTTaskNode
---@field SpawnItemList ULuaArrayHelper<FUGCAISpawnItem>
---@field SpawnItemByIDList ULuaArrayHelper<FUGCAISpawnItemWithID>
local UBTTask_UGC_SpawnItem = {}
