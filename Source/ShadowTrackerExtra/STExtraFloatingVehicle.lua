---@meta

---@class ASTExtraFloatingVehicle: ASTExtraVehicleBase
---@field BoostModifier number
---@field DisableBuoyancyDistance number
---@field DisableBuoyancyTickInLowPlatform boolean
---@field DisableBuoyancyPlatformLevel number
---@field VehicleWaveEffect string
---@field VehicleWaterEffect string
---@field bShouldTurnOnUseSyncAtClientOnLand boolean
---@field IgnoreDampingVelocityThreshold number
---@field IgnoreDampingVelocityXYThreshold number
---@field IgnoreDampingTimeThreshold number
---@field OpenIgnoreBuoyancyCalc boolean
---@field RepUseSyncAtClient boolean
---@field VehicleCheckTLogTime number
---@field TLogCheckRoll number
---@field UseCPPTickEffectParam boolean
---@field ShowWaterEffect_CPP boolean
---@field StopWaterEffectDelay_CPP number
---@field StopWaterEffectTimer_CPP number
---@field WaterEffectSpeedThreshold number
---@field RepMaxAcceleration number
local ASTExtraFloatingVehicle = {}

---@param WakingComponent UPrimitiveComponent
---@param BoneName string
function ASTExtraFloatingVehicle:HandleOnMeshAwake(WakingComponent, BoneName) end

---@return FVector
function ASTExtraFloatingVehicle:GetRotationInputDir() end

function ASTExtraFloatingVehicle:ApplyConfigDataAfterChangeAvatar() end

function ASTExtraFloatingVehicle:OnUpdateEffects() end

---@param NewValue boolean
function ASTExtraFloatingVehicle:SetRepUseSyncAtClient(NewValue) end

function ASTExtraFloatingVehicle:OnRep_UseSyncAtClient() end

---@param FuelPercent number
---@param bEngineOn boolean
---@param bInHouse boolean
---@param SpawnByRegonActive boolean
function ASTExtraFloatingVehicle:InitVehicle(FuelPercent, bEngineOn, bInHouse, SpawnByRegonActive) end

function ASTExtraFloatingVehicle:CreateVehicleCheckTLogTimer() end

function ASTExtraFloatingVehicle:VehicleCheckTLogFunc() end

---@param DeltaTime number
function ASTExtraFloatingVehicle:TickShowWaterEffectParam(DeltaTime) end

---@param WaterEffectName string
---@param WaveEffectName string
function ASTExtraFloatingVehicle:UpdateWaterAndWaveEffect(WaterEffectName, WaveEffectName) end

function ASTExtraFloatingVehicle:OnRep_RepMaxAcceleration() end

---@param InScale number
function ASTExtraFloatingVehicle:ModifyFloatVehicleMaxAccelerationScale(InScale) end
