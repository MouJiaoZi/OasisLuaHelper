---@meta

---@class FMeshAnimGameplayTagData
---@field bIsConfigCorrect boolean
---@field bCanEditAnimTag boolean
---@field bShowDisplayInfo boolean
---@field AnimGameplayTag FGameplayTag
---@field AnimAsset UAnimationAsset
---@field DisplayInfo string
---@field ErrorDisplayInfo string
FMeshAnimGameplayTagData = {}


---@class FMeshAnimListData
---@field AnimDataList ULuaArrayHelper<FMeshAnimGameplayTagData>
FMeshAnimListData = {}


---@class FUGCMeshAnimConfig
---@field RuntimeSubAnimData UGenericCharacterRuntimeSubAnimData
---@field GameplayTagAnimDataListDefault ULuaArrayHelper<FMeshAnimGameplayTagData>
---@field GameplayTagAnimDataListExtend ULuaArrayHelper<FMeshAnimGameplayTagData>
---@field SubAnimParamList ULuaArrayHelper<FGenericCharacterSubAnimParamConfigData>
---@field SerializationDataAnimLength ULuaMapHelper<FGameplayTag, number>
FUGCMeshAnimConfig = {}


---@class UUGCMeshToAnimListDataAsset: UDataAsset
---@field ValidateAnimTags FGameplayTagContainer
---@field MeshToAnimDataList ULuaMapHelper<USkeletalMesh, FUGCMeshAnimConfig>
local UUGCMeshToAnimListDataAsset = {}
