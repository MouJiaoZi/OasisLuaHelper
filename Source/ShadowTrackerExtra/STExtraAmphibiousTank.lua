---@meta

---@class ASTExtraAmphibiousTank: ASTExtraTankVehicle
---@field InWaterSfxLoop FSTExtraVehicleSfxLoop
---@field WaterEngineSfxLoop FSTExtraVehicleSfxLoop
---@field WaterEffectSpeedThreshold number
---@field VehicleWaterEffect string
---@field bEnableMovingEffect boolean
---@field MovingEffectName string
---@field ExhaustEffectNameRight string
---@field BoostExhaustEffectRight string
local ASTExtraAmphibiousTank = {}

function ASTExtraAmphibiousTank:OnUpdateEffects() end
