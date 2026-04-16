---@meta

---攀爬的NavLink。后续会迁移到纯组件的实现AVaultNavLinkProxy，所以新的NavLink类型不要再继承使用这个类
---@class AVaultNavLinkProxy: ACustomNavLinkBase
---@field LeftHighPoint FVector
---@field RightHighPoint FVector
---@field LeftMaxEmptyAreaDis number
---@field RightMaxEmptyAreaDis number
---@field CharacterTypeList ULuaArrayHelper<ESTECharacterType>
---@field VaultNavLinkCharacterTypesFlag number
---@field RelativeLocation FVector
---@field RelativeRotation FRotator
local AVaultNavLinkProxy = {}

---@param MovingActor AActor
---@param DestinationPoint FVector
function AVaultNavLinkProxy:OnMySmartLinkReached(MovingActor, DestinationPoint) end
