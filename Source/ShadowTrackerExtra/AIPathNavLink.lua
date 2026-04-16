---@meta

---@class AAIPathNavLink: APxgNavLink
---@field RelativeLocation FVector
---@field RelativeRotation FRotator
local AAIPathNavLink = {}

---@param MovingActor AActor
---@param DestinationPoint FVector
function AAIPathNavLink:OnMySmartLinkReached(MovingActor, DestinationPoint) end
