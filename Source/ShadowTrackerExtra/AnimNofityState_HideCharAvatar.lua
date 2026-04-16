---@meta

---@class UAnimNofityState_HideCharAvatar: UAnimNotifyState
---@field bIgnoreWhenModeAvatarFeatureDisplay boolean
---@field bIgnoreWhenModeAvatarFeatureDisplayStrictly boolean
---@field bHideWholeActor boolean
---@field SkipSlotInLobby ULuaArrayHelper<EAvatarSlotType>
---@field bNotifyEndForceSetOuterVisibility boolean
local UAnimNofityState_HideCharAvatar = {}

---@param InActor AActor
function UAnimNofityState_HideCharAvatar:ReceiveNotifyBeginSetActorConsiderHidden(InActor) end

---@param InActor AActor
function UAnimNofityState_HideCharAvatar:ReceiveNotifyEndSetActorConsiderShow(InActor) end
