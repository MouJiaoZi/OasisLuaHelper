---@meta

---@class UAnimNotifyState_ForceBoneRetargetClothIK: UAnimNotifyState
---@field bEnableTickDetect boolean
---@field bLeftHandIK boolean
---@field bRightHandIK boolean
---@field bLeftFootIK boolean
---@field bRightFootIK boolean
---@field ExcludeAvatarIDList ULuaArrayHelper<number>
---@field bLobbyLeftHandIK boolean
---@field bLobbyRightHandIK boolean
---@field bLobbyLeftFootIK boolean
---@field bLobbyRightFootIK boolean
---@field LobbyExcludeAvatarIDList ULuaArrayHelper<number>
---@field ControlledAvatarSlots ULuaArrayHelper<EAvatarSlotType>
---@field bDisableAlwaysForceModeFeatureClothIKFeature boolean
---@field bConsiderExtraPartMesh boolean
---@field TriggerMesh UObject
---@field TriggerAnim UObject
---@field TriggerMeshes ULuaArrayHelper<UObject>
---@field TriggerAnims ULuaArrayHelper<UObject>
local UAnimNotifyState_ForceBoneRetargetClothIK = {}

---@param InTriggerActor AActor
---@param InForceIKStateParam FAnimNotifyForceIKStateParam
function UAnimNotifyState_ForceBoneRetargetClothIK:NotifyBegin_NonAnim_ForceBoneRetargetClothIK(InTriggerActor, InForceIKStateParam) end

---@param InTriggerActor AActor
---@param InForceIKStateParam FAnimNotifyForceIKStateParam
function UAnimNotifyState_ForceBoneRetargetClothIK:NotifyEnd_NonAnim_ForceBoneRetargetClothIK(InTriggerActor, InForceIKStateParam) end

---@param InTriggerActor AActor
---@param InForceIKStateParam FAnimNotifyForceIKStateParam
---@param ControlledAvatarSlots ULuaArrayHelper<EAvatarSlotType>
function UAnimNotifyState_ForceBoneRetargetClothIK:NotifyBegin_NonAnim_ForceBoneRetargetClothIK_WithSlots(InTriggerActor, InForceIKStateParam, ControlledAvatarSlots) end

---@param InTriggerActor AActor
---@param InForceIKStateParam FAnimNotifyForceIKStateParam
---@param ControlledAvatarSlots ULuaArrayHelper<EAvatarSlotType>
function UAnimNotifyState_ForceBoneRetargetClothIK:NotifyEnd_NonAnim_ForceBoneRetargetClothIK_WithSlots(InTriggerActor, InForceIKStateParam, ControlledAvatarSlots) end
