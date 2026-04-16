---@meta

---@class AAIWayPointPathSelectorBase: AActor
---@field Name string
local AAIWayPointPathSelectorBase = {}

---@return FVector
function AAIWayPointPathSelectorBase:GetBornLocation() end

---@param WayPoints ULuaArrayHelper<AActor>
function AAIWayPointPathSelectorBase:GetAIWayPoints(WayPoints) end
