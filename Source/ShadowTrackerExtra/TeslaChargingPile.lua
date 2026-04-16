---@meta

---@class ATeslaChargingPile: AActor
---@field bCachedState boolean
---@field ChargingPercent number
---@field ChargingRadius number
---@field ChargingInterval number
---@field TypeSpecificIDArr ULuaArrayHelper<number>
---@field PosOffset number
---@field objectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field TempHitReses ULuaArrayHelper<FHitResult>
---@field IgnoreActors ULuaArrayHelper<AActor>
local ATeslaChargingPile = {}

---@param bEnable boolean
function ATeslaChargingPile:OnChargingPileStateChanged(bEnable) end

function ATeslaChargingPile:OnRep_InCharging() end
