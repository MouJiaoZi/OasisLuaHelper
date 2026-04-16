---@meta

---@class APerformNavLinkProxy: AVaultNavLinkProxy
---@field PerformLinkType EPerformLinkType
local APerformNavLinkProxy = {}

---@param MovingActor AActor
---@param DestinationPoint FVector
function APerformNavLinkProxy:OnMySmartLinkReached(MovingActor, DestinationPoint) end
