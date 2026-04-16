---@meta

---@class FUGCSpawnItem
---@field ItemID number
---@field Count number
FUGCSpawnItem = {}


---@class FUGCSpawnItemGroup
---@field ItemList ULuaArrayHelper<FUGCSpawnItem>
---@field Weight number
FUGCSpawnItemGroup = {}


---@class AUGCSpawnItemBaseActor: AActivityBaseActor
---@field ItemGroupList ULuaArrayHelper<FUGCSpawnItemGroup>
local AUGCSpawnItemBaseActor = {}

---@param ItemID number
---@return boolean
function AUGCSpawnItemBaseActor:IsValidItemID(ItemID) end
