---@meta

---@class FSTExtraVehicleAttachment
---@field AttachSocket string
---@field VehicleAttachementClass AVehicleAttachmentBase
FSTExtraVehicleAttachment = {}


---@class AVehicleAttachmentBase: AActor, IOwnerRelevancyDependencyInterface, IRegionObjectInterface
---@field bEnableModifyHitDamage boolean
---@field HitSelfModifier number
---@field HitSelfImpactReduce number
---@field HitOthersModifier number
---@field HitOthersImpactRaise number
---@field HitCharacterModifier number
local AVehicleAttachmentBase = {}
