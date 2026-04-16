---@meta

---@class UPerformNavLinkSceneComponent: UVaultNavLinkSceneComponent
---@field PerformLinkType EPerformLinkType
local UPerformNavLinkSceneComponent = {}

---@param ThisComp UNavLinkSceneComponent
---@param MovingActor AActor
---@param DestinationPoint FVector
function UPerformNavLinkSceneComponent:OnMySmartLinkReached(ThisComp, MovingActor, DestinationPoint) end
