---@meta

---@class IActorBoundingBoxGetterInterface
IActorBoundingBoxGetterInterface = {}

---@param Actor AActor
---@return FBox
function IActorBoundingBoxGetterInterface:GetActorBoundingBox(Actor) end


---@class IActorLocationGetterInterface
IActorLocationGetterInterface = {}

---@param Actor AActor
---@return FVector
function IActorLocationGetterInterface:GetActorLocation(Actor) end
