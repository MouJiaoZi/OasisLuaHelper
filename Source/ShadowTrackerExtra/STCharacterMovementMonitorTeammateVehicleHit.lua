---@meta

---@class USTCharacterMovementMonitorTeammateVehicleHit: USTCharacterMovementMonitorBase
local USTCharacterMovementMonitorTeammateVehicleHit = {}

---@param LastVehicle ASTExtraVehicleBase
function USTCharacterMovementMonitorTeammateVehicleHit:OnDetachedFromVehicle(LastVehicle) end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function USTCharacterMovementMonitorTeammateVehicleHit:OnActorHitNew(SelfActor, OtherActor, NormalImpulse, Hit) end
