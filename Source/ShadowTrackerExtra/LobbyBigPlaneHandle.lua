---@meta

---@class ELobbyBigPlaneLevelSequenceType
---@field LobbyBigPlaneLevelSeq_Default number @默认值
---@field LobbyBigPlaneLevelSeq_Entrance number @大厅大飞机简单入场
---@field LobbyBigPlaneLevelSeq_GrandEntrance number @大厅大飞机复杂入场
---@field LobbyBigPlaneLevelSeq_AirShow number @大厅大飞机飞行表演
---@field LobbyBigPlaneLevelSeq_Max number @最大值
ELobbyBigPlaneLevelSequenceType = {}


---大飞机用的LevelSequence数据
---@class FLobbyBigPlaneLevelSequenceData
---@field LevelSequencePtr ULevelSequence
---@field ItemShowActorSocketName string
---@field LobbyPlayerSocketName string
---@field TeammatesSocketNames ULuaArrayHelper<string>
FLobbyBigPlaneLevelSequenceData = {}


---大飞机特效数据
---@class FLobbyBigPlaneParticleData
---@field ParticleList ULuaArrayHelper<FSingleParticleInfo>
FLobbyBigPlaneParticleData = {}


---大飞机贴花数据
---@class FLobbyBigPlaneDecalData
---@field DecalSortOrder number
---@field DecalSize FVector
---@field bUseSocketTransform boolean
---@field DecalSocketName string
---@field DecalSocketOffsetTransform FTransform
---@field DecalRelativeTransform FTransform
FLobbyBigPlaneDecalData = {}


---大飞机材质数据
---@class FLobbyBigPlaneMaterialData
---@field SlotName string
---@field LobbyMeshMat UMaterialInterface
---@field LobbyMeshAdvancedMat UMaterialInterface
---@field LobbyLod00MeshMat UMaterialInterface
---@field LobbyLod00MeshAdvancedMat UMaterialInterface
FLobbyBigPlaneMaterialData = {}


---大飞机材质组合数据
---@class FLobbyBigPlaneMaterialGroup
---@field MaterialData ULuaArrayHelper<FLobbyBigPlaneMaterialData>
FLobbyBigPlaneMaterialGroup = {}


---大厅大飞机配置
---@class ULobbyBigPlaneHandle: UBattleItemHandleBase
---@field DeviceQualityGradeToUseLowLevelResource number
---@field DeviceQualityGradeToUseHighLevelResource number
---@field LobbySkMesh USkeletalMesh
---@field LobbySkMeshLod00 USkeletalMesh
---@field DefaultMaterialGroupIndex number
---@field LobbyUseHighQualityMaterials boolean
---@field MaterialGroupData ULuaArrayHelper<FLobbyBigPlaneMaterialGroup>
---@field TeamAssembleMaterial UMaterialInterface
---@field LobbyAnimBPClass UAnimInstance
---@field LobbyIdleAnim UAnimationAsset
---@field LobbyLevelSequenceDataMap ULuaMapHelper<ELobbyBigPlaneLevelSequenceType, FLobbyBigPlaneLevelSequenceData>
---@field LobbyTeammateActorClass AActor
---@field AnchorActorClass AActor
---@field AnchorActorOffsetTrans FTransform
---@field LobbyBigPlaneDecalDataMap ULuaMapHelper<string, FLobbyBigPlaneDecalData>
---@field LobbyBigPlaneParticleDataMap ULuaMapHelper<string, FLobbyBigPlaneParticleData>
---@field bAsyncLoadAnimationAsset boolean
local ULobbyBigPlaneHandle = {}

---@return string
function ULobbyBigPlaneHandle:GetTeamAssembleMaterialPath() end
