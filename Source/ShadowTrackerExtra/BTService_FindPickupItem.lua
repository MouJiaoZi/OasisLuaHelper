---@meta

---@class EAIFindPickupItemType
---@field Nearest number @最近
---@field Random number @随机
EAIFindPickupItemType = {}


---寻找可拾取物
---@class UBTService_FindPickupItem: UBTService
---@field InFindItemIDs ULuaArrayHelper<number>
---@field InFindRadius number
---@field InFindBuildingRadius number
---@field InFindType EAIFindPickupItemType
---@field OutFoundItem any
local UBTService_FindPickupItem = {}
