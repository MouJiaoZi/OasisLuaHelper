---@meta

---@class UMeleeAttackDamageStrategy_ClientCalcPeriodicCommon: UMeleeAttackDamageStrategy_CalcPeriodicCommon
---@field DamageValidateData FDamageStrategy_ClientCalcPeriodicCommon_ValidateData
---@field SocketAnimCurveContext FSocketAnimCurveContext
---@field bEnableHitStop boolean
---@field bEnableCameraShake boolean
---@field bEnableStableDamageCheck boolean
local UMeleeAttackDamageStrategy_ClientCalcPeriodicCommon = {}

---@param SocketName string
---@param FrameIndex number
---@return FVector
function UMeleeAttackDamageStrategy_ClientCalcPeriodicCommon:GetDamageSocketLocationByFrameAndSocket(SocketName, FrameIndex) end

---@param RawHitResults ULuaArrayHelper<FHitResult>
---@param ValidHitResults ULuaArrayHelper<FHitResult>
function UMeleeAttackDamageStrategy_ClientCalcPeriodicCommon:OnAutonomousHitAnyThing(RawHitResults, ValidHitResults) end
