---@meta

---@class UProjectileMovementPath_Normal: UProjectileMovementPathBase
---@field bUseGravityScaleScaleCurve boolean
---@field ProjectileGravityScale FFloatGetter
---@field bSpeedScaleCurve boolean
---@field InitialSpeed FFloatGetter
---@field MaxSpeed FFloatGetter
---@field bSpeedCurveFlag boolean
---@field bGravityScaleCurveFlag boolean
local UProjectileMovementPath_Normal = {}

---@param InProjectileGravityScale number
function UProjectileMovementPath_Normal:SetProjectileGravityScale(InProjectileGravityScale) end

---@return number
function UProjectileMovementPath_Normal:GetProjectileGravityScale() end

function UProjectileMovementPath_Normal:OnRep_ProjectileGravityScale() end

---@return number
function UProjectileMovementPath_Normal:GetMaxSpeed() end

function UProjectileMovementPath_Normal:OnRep_MaxSpeed() end

function UProjectileMovementPath_Normal:ApplyCurve() end
