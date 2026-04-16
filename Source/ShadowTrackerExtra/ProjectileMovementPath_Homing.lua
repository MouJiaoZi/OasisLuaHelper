---@meta

---@class UProjectileMovementPath_Homing: UProjectileMovementPathBase
---@field InitialSpeed FFloatGetter
---@field ProjectileGravityScale FFloatGetter
---@field Acceleration FFloatGetter
---@field MaxSpeed FFloatGetter
local UProjectileMovementPath_Homing = {}

---@param Pawn APawn
function UProjectileMovementPath_Homing:OnTargetChange(Pawn) end

function UProjectileMovementPath_Homing:OnRep_ProjectileGravityScale() end

---@param InProjectileGravityScale number
function UProjectileMovementPath_Homing:SetProjectileGravityScale(InProjectileGravityScale) end

---@return number
function UProjectileMovementPath_Homing:GetProjectileGravityScale() end
