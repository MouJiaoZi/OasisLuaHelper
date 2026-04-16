---@meta

---@class FPlayMontageAvatarInfo
---@field AvatarSlot EAvatarSlotType
---@field AvatarMontage UAnimationAsset
---@field MontageBeginTime number
FPlayMontageAvatarInfo = {}


---@class UAnimNotify_LobbySwitchAvatar: UAnimNotify
---@field AvatarSuitID number
---@field AvatarIDList ULuaArrayHelper<number>
---@field PlayMontageAvatarList ULuaArrayHelper<FPlayMontageAvatarInfo>
---@field ExtraPartAnimData ULuaMapHelper<EAvatarSlotType, FExtraPartGenderWithAnimAssetArray>
local UAnimNotify_LobbySwitchAvatar = {}

---@param MeshComp USkeletalMeshComponent
function UAnimNotify_LobbySwitchAvatar:PlayExtraPartAnim(MeshComp) end
