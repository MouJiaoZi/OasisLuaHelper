---@meta

---@class FUGCWeaponAttachmentID2SlotDataTableRow
---@field SlotID number
---@field AllowTag FGameplayTag
---@field SlotName FGameplayTag
FUGCWeaponAttachmentID2SlotDataTableRow = {}


---@class FUGCWeaponAttachmentSlotData
---@field SlotName string
---@field AllowTypes ULuaArrayHelper<string>
---@field AllowTags ULuaArrayHelper<string>
FUGCWeaponAttachmentSlotData = {}


---@class FUGCWeaponAttachmentTableRow
---@field KeyID number
---@field Muzzle_a ULuaArrayHelper<number>
---@field Upper_a ULuaArrayHelper<number>
---@field Stock_a ULuaArrayHelper<number>
---@field Magazine_a ULuaArrayHelper<number>
---@field Lower_a ULuaArrayHelper<number>
---@field UpperSide_a ULuaArrayHelper<number>
---@field Bullet_a ULuaArrayHelper<number>
---@field ProposeBulletNum number
---@field SlotDatas ULuaArrayHelper<FUGCWeaponAttachmentSlotData>
FUGCWeaponAttachmentTableRow = {}
