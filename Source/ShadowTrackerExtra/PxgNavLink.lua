---@meta

---@class APxgNavLink: ANavLinkProxy
local APxgNavLink = {}

---@param MovingActor AActor
---@param DestinationPoint FVector
function APxgNavLink:OnMySmartLinkReached(MovingActor, DestinationPoint) end

---@param StartLocation FVector
---@param DestinationLocation FVector
---@param OutVelocity FVector
---@return boolean
function APxgNavLink:CalculateVelocity(StartLocation, DestinationLocation, OutVelocity) end
