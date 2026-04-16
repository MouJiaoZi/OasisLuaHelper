---@meta

---@class ACirleAreaVolume: AActor
---@field AvoidAreaTag ULuaArrayHelper<string>
---@field TryCount number
local ACirleAreaVolume = {}

---@param Origin FVector
---@param Radius number
---@param bTry boolean
---@return FVector
function ACirleAreaVolume:GetRandomPointInArea(Origin, Radius, bTry) end

---@param PlayerPositions ULuaArrayHelper<FVector>
---@param OutWhiteCircle FVector
---@param InWater boolean
function ACirleAreaVolume:CalcDestinyCircle(PlayerPositions, OutWhiteCircle, InWater) end
