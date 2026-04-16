---@meta

---@class AJumpNavLink: ANavLinkProxy
---@field MaxHorizonSpeed number
---@field MaxJumpHeight number
local AJumpNavLink = {}

---@param MovingActor AActor
---@param DestinationPoint FVector
function AJumpNavLink:OnMySmartLinkReached(MovingActor, DestinationPoint) end

---@param StartLocation FVector
---@param DestinationLocation FVector
---@param OutVelocity FVector
---@return boolean
function AJumpNavLink:CalculateVelocity(StartLocation, DestinationLocation, OutVelocity) end
