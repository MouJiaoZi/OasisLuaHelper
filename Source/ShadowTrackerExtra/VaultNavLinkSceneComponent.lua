---@meta

---纯组件实现的攀爬NavLink组件，具有AVaultNavLinkProxy的完整功能，继承自UCustomNavLinkSceneComponentBase
---@class UVaultNavLinkSceneComponent: UCustomNavLinkSceneComponentBase
---@field LeftHighPoint FVector
---@field RightHighPoint FVector
---@field LeftMaxEmptyAreaDis number
---@field RightMaxEmptyAreaDis number
---@field CharacterTypeList ULuaArrayHelper<ESTECharacterType>
---@field VaultNavLinkCharacterTypesFlag number
---@field RelativeLocationByRelativeActor FVector
---@field RelativeRotationByRelativeActor FRotator
local UVaultNavLinkSceneComponent = {}

---@param ThisComp UNavLinkSceneComponent
---@param MovingActor AActor
---@param DestinationPoint FVector
function UVaultNavLinkSceneComponent:OnMySmartLinkReached(ThisComp, MovingActor, DestinationPoint) end
