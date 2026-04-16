---@meta

---@class UPushableComponent: UActorComponent
---@field bAlwaysUseRepVelocity boolean
---@field ImpactGap number
---@field MaxPushSpeedThreshold number
---@field OverlapComponentSelector FActorComponentSelector
---@field bUseAutoOverlapCheck boolean
---@field OverlapCheckGap number
local UPushableComponent = {}

function UPushableComponent:AutoOverlapCheck() end

---@param OtherActor AActor
---@param ImpactCurve UCurveVector
function UPushableComponent:ServerAddHitVelocity(OtherActor, ImpactCurve) end

---@param ImpactCurve UCurveVector
---@param OtherActor AActor
---@return FVector
function UPushableComponent:CalculBounceAddVelocity(ImpactCurve, OtherActor) end

---@param OverlapActor AActor
---@return boolean
function UPushableComponent:FilterOverlapActor(OverlapActor) end

---@param AddedVelocity FVector
---@param bOverrideXY boolean
---@param bOverrideZ boolean
---@return boolean
function UPushableComponent:AddVelocity(AddedVelocity, bOverrideXY, bOverrideZ) end

---@param AddedVelocity FVector
function UPushableComponent:ServerAddVelocity(AddedVelocity) end

---@param NewVelocity FVector
function UPushableComponent:PostNetReceiveVelocity(NewVelocity) end

---@param NewVelocity FVector
function UPushableComponent:OnRepLaunchVeocity(NewVelocity) end

---@param Hit FHitResult
function UPushableComponent:OnProjectileMovementStop(Hit) end

---@param Component UActorComponent
---@param bReset boolean
function UPushableComponent:OnProjectileMovementActivate(Component, bReset) end
