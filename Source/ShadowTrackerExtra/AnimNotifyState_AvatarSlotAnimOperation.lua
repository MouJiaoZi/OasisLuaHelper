---@meta

---@class FWeaponAvatarAnimOperation
---@field bOnlyOperateByMatchedClothIDs boolean
---@field MatchedClothIDs ULuaArrayHelper<number>
---@field TargetAvatarSlot EWeaponAttachmentSocketType
---@field bDisableBoneSolver boolean
FWeaponAvatarAnimOperation = {}


---@class FCharacterAvatarAnimOperation
---@field bOnlyOperateByMatchedClothIDs boolean
---@field MatchedClothIDs ULuaArrayHelper<number>
---@field TargetAvatarSlot EAvatarSlotType
---@field bDisableBoneSolver boolean
FCharacterAvatarAnimOperation = {}


---@class UAnimNotifyState_AvatarSlotAnimOperation: UAnimNotifyState
---@field bOperatorCharacterAvatar boolean
---@field CharacaterAvatarAnimOperations ULuaArrayHelper<FCharacterAvatarAnimOperation>
---@field bOperatorWeaponAvatar boolean
---@field WeaponAvatarAnimOperations ULuaArrayHelper<FWeaponAvatarAnimOperation>
---@field bOnlyOperateByMatchedClothIDs boolean
---@field MatchedClothIDs ULuaArrayHelper<number>
local UAnimNotifyState_AvatarSlotAnimOperation = {}
