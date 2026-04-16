---@meta

---@class AFlowerLanternMgr: AActor
---@field DropItemInfo ULuaMapHelper<string, number>
local AFlowerLanternMgr = {}

---@param PlayerKey string
---@return boolean
function AFlowerLanternMgr:CanDropItem(PlayerKey) end

---@param PlayerKey string
function AFlowerLanternMgr:PlayerDropItem(PlayerKey) end
