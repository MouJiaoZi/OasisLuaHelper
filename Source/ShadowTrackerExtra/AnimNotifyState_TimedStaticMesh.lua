---@meta

---@class FTimedStaticMesh_DeviceQualityMeshSelectorForLobby
---@field RoleAndQualityLobbySelector FRoleAndQualityLobbySelector
FTimedStaticMesh_DeviceQualityMeshSelectorForLobby = {}


---@class FTimedStaticMesh_DeviceQualityMeshSelector
---@field RoleAndQualitySelector FRoleAndQualitySelector
FTimedStaticMesh_DeviceQualityMeshSelector = {}


---@class FTimedStaticMesh_DeviceLevelMeshSelector
---@field DeviceLevelNumber number
FTimedStaticMesh_DeviceLevelMeshSelector = {}


---@class FTimedStaticMesh_DeviceMeshSelectorCollection
---@field bUseNumberSelector boolean
---@field DeviceLevelMeshSelectorList ULuaArrayHelper<FTimedStaticMesh_DeviceLevelMeshSelector>
---@field LobbyDeviceLevelActorSelectorList ULuaArrayHelper<FTimedStaticMesh_DeviceLevelMeshSelector>
---@field DeviceQualityMeshSelectorList ULuaArrayHelper<FTimedStaticMesh_DeviceQualityMeshSelector>
---@field LobbyDeviceQualityMeshSelectorList ULuaArrayHelper<FTimedStaticMesh_DeviceQualityMeshSelectorForLobby>
FTimedStaticMesh_DeviceMeshSelectorCollection = {}


---@class UAnimNotifyState_TimedStaticMesh: UAnimNotifyState
---@field DeviceMeshSelectorCollection FTimedStaticMesh_DeviceMeshSelectorCollection
---@field SocketName string
---@field TransformOffset FTransform
---@field ComponentTag string
---@field ShouldCastShadow boolean
---@field bShouldForceLODLevel boolean
---@field ForceLODLevel number
---@field bShouldCheckCameraMode boolean
---@field bOnlySpawnInFPP boolean
---@field bShouldDisableWriteDepthForOcclusionHighlight boolean
---@field bUseOverrideMesh boolean
---@field bUseOverrideSocket boolean
---@field bUseOverrideTransformOffset boolean
---@field SpawnedMeshCached ULuaMapHelper<string, UStaticMeshComponent>
local UAnimNotifyState_TimedStaticMesh = {}

---@param InTriggerSkelComp USkeletalMeshComponent
---@return string
function UAnimNotifyState_TimedStaticMesh:GetOverrideSocketName(InTriggerSkelComp) end

---@param InTriggerSkelComp USkeletalMeshComponent
---@return FTransform
function UAnimNotifyState_TimedStaticMesh:GetOverrideTransformOffset(InTriggerSkelComp) end
