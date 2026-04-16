---@meta

---@class ASTExtraAmphibiousVehicle: ASTExtraWheeledVehicle
---@field BoostModifier number
---@field InWaterSfxLoop FSTExtraVehicleSfxLoop
---@field WaterEngineSfxLoop FSTExtraVehicleSfxLoop
---@field InOutSoundCD number
---@field RepUseSyncatClient boolean
---@field WaterEffectSpeedThreshold number
---@field VehicleWaterEffect string
---@field bEnableMovingEffect boolean
---@field MovingEffectName string
---@field DisableBuoyancyDistance number
---@field DisableBuoyancyTickInLowPlatform boolean
---@field DisableBuoyancyPlatformLevel number
local ASTExtraAmphibiousVehicle = {}

---@param WakingComponent UPrimitiveComponent
---@param BoneName string
function ASTExtraAmphibiousVehicle:HandleOnMeshAwake(WakingComponent, BoneName) end

---@return FVector
function ASTExtraAmphibiousVehicle:GetRotationInputDir() end

function ASTExtraAmphibiousVehicle:OnUpdateEffects() end

function ASTExtraAmphibiousVehicle:OnRep_UseSyncatClient() end

---@param InWaterLocation FVector
function ASTExtraAmphibiousVehicle:SendServerIntoWater(InWaterLocation) end
