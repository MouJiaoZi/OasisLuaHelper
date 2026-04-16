---@meta

---抛体轨迹基类
---@class UProjectileMovementPathBase: UProjectileEffectBase
---@field FilterContainer FProjectileFilterContainer
---@field PenetrateImpactInterval FFloatGetter
---@field bRotationFollowsVelocity boolean
local UProjectileMovementPathBase = {}

function UProjectileMovementPathBase:Begin() end

function UProjectileMovementPathBase:StartLaunch() end

---@param DeltaSeconds number
function UProjectileMovementPathBase:Tick(DeltaSeconds) end

function UProjectileMovementPathBase:End() end

---@param ImpactResult FHitResult
function UProjectileMovementPathBase:OnImpact(ImpactResult) end

---@param ImpactResult FHitResult
function UProjectileMovementPathBase:PreOnImpact(ImpactResult) end

---@param CurTarget APawn
---@return boolean
function UProjectileMovementPathBase:CheckTargetIsValid(CurTarget) end

---@param InProjectile APESkillProjectileBase
function UProjectileMovementPathBase:PostNetReceiveLocationAndRotation(InProjectile) end

---@param InProjectile APESkillProjectileBase
---@param NewVelocity FVector
function UProjectileMovementPathBase:PostNetReceiveVelocity(InProjectile, NewVelocity) end

---Event
---动作发射时调用的参数
---生效范围：SC
---@param Params FProjectileParams @发射参数
function UProjectileMovementPathBase:ApplyParamsBP(Params) end

---@param ImpactResult FHitResult
---@param bClientServerSync boolean
---@return EProjectileMoveType
function UProjectileMovementPathBase:GetMoveTypeByHitResult(ImpactResult, bClientServerSync) end

---@param ImpactResult FHitResult
---@return boolean
function UProjectileMovementPathBase:CheckHitOnGroundWithoutNavSys(ImpactResult) end

---@param NewDirection FVector
function UProjectileMovementPathBase:SetDirection(NewDirection) end

---@param NewSpeed number
function UProjectileMovementPathBase:SetSpeed(NewSpeed) end

---@param Velocity FVector
function UProjectileMovementPathBase:SetVelocity(Velocity) end

---@param NewGravityScale number
function UProjectileMovementPathBase:SetGravityScale(NewGravityScale) end

---@param NewMaxSpeed number
function UProjectileMovementPathBase:SetMaxSpeed(NewMaxSpeed) end

---@return FVector
function UProjectileMovementPathBase:GetVelocity() end

---@param InSpeed number
function UProjectileMovementPathBase:LocalSetSpeed(InSpeed) end

---@param InMaxSpeed number
function UProjectileMovementPathBase:LocalSetMaxSpeed(InMaxSpeed) end

---@param NewDirection FVector
function UProjectileMovementPathBase:LocalSetDirection(NewDirection) end
