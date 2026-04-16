---@meta

---@class UPhysicsSoundEffectComponent: UActorComponent
---@field WalkableFloorAngle number @߱Ƕȡٴһ̫ˣʺϲС
---@field WalkableFloorZ number @߱Ƕȡٴһ̫ˣʺϲС
---@field OnGroundFrameCounter number @ڵ֡
local UPhysicsSoundEffectComponent = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UPhysicsSoundEffectComponent:OnActorHit(SelfActor, OtherActor, NormalImpulse, Hit) end

---Set the max angle in degrees of a walkable surface for the character. Also computes WalkableFloorZ.
---@param InWalkableFloorAngle number
function UPhysicsSoundEffectComponent:SetWalkableFloorAngle(InWalkableFloorAngle) end
