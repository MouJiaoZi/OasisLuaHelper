---@meta

---@class FAnimNotifyTimedActorLodInfo
---@field LowLevel_ActorTemplate AActor
---@field MidLevel_ActorTemplate AActor
---@field HighLevel_ActorTemplate AActor
FAnimNotifyTimedActorLodInfo = {}


---@class FTimedActor_DeviceQualityActorSelectorForLobby
---@field RoleAndQualityLobbySelector FRoleAndQualityLobbySelector
---@field ActorTemplate AActor
FTimedActor_DeviceQualityActorSelectorForLobby = {}


---@class FTimedActor_DeviceQualityActorSelector
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field ActorTemplate AActor
FTimedActor_DeviceQualityActorSelector = {}


---@class FTimedActor_DeviceLevelActorSelector
---@field DeviceLevelNumber number
---@field ActorTemplate AActor
FTimedActor_DeviceLevelActorSelector = {}


---@class FTimedActor_DeviceActorSelectorCollection
---@field bUseNumberSelector boolean
---@field DeviceLevelActorSelectorList ULuaArrayHelper<FTimedActor_DeviceLevelActorSelector>
---@field LobbyDeviceLevelActorSelectorList ULuaArrayHelper<FTimedActor_DeviceLevelActorSelector>
---@field DeviceQualityActorSelectorList ULuaArrayHelper<FTimedActor_DeviceQualityActorSelector>
---@field LobbyDeviceQualityActorSelectorList ULuaArrayHelper<FTimedActor_DeviceQualityActorSelectorForLobby>
FTimedActor_DeviceActorSelectorCollection = {}


---@class UAnimNotifyState_TimedActor: UAnimNotifyState
---@field bIgnoreWhenModeAvatarFeatureDisplay boolean
---@field bIgnoreWhenModeAvatarFeatureDisplayStrictly boolean
---@field ActorTemplate AActor
---@field SocketName string
---@field bIgnoreMeshVisibility boolean
---@field bCheckInNewFPPMode boolean
---@field bCheckInOldFPPAnimMode boolean
---@field bGenerateMag boolean
---@field TransformOffset FTransform
---@field LocationRule EAttachmentRule
---@field RotationRule EAttachmentRule
---@field ScaleRule EAttachmentRule
---@field ActorTag string
---@field bUseAnimLengthToActorLife boolean
---@field bUseForLobbyInspect boolean
---@field bPreciselyAlignedActorAnim boolean
---@field SequencePlayerTag string
---@field bAlignSequenceBySeqTag boolean
---@field bUseActorLodInfo boolean
---@field ActorTemplateLodInfo FAnimNotifyTimedActorLodInfo
---@field DeviceActorSelectorCollection FTimedActor_DeviceActorSelectorCollection
---@field TimedActorTag string
---@field SpawnedActorCached ULuaMapHelper<string, AActor>
local UAnimNotifyState_TimedActor = {}

---@param MeshComp USkeletalMeshComponent
---@return boolean
function UAnimNotifyState_TimedActor:ValidateParameters(MeshComp) end
