---@meta

---@class ELobbyAircraftHatchLevelSequenceType
---@field LobbyAircraftHatchLevelSeq_Default number @默认值
---@field LobbyAircraftHatchLevelSeq_One number @一人
---@field LobbyAircraftHatchLevelSeq_Two number @两人
---@field LobbyAircraftHatchLevelSeq_Three number @三人
---@field LobbyAircraftHatchLevelSeq_Four number @四人
---@field LobbyAircraftHatchLevelSeq_Max number @最大值
ELobbyAircraftHatchLevelSequenceType = {}


---大厅机舱的LevelSequence数据
---@class FLobbyAircraftHatchLevelSequenceData
---@field LevelSequencePtr ULevelSequence
---@field ItemShowActorSocketName string
---@field LobbyPlayerSocketName string
---@field LevelSequenceStopPosition number
---@field SocketNameToIdleAnimAssetMap ULuaMapHelper<string, UAnimationAsset>
---@field bActivateAllParticleWhenStopped boolean
---@field bActivateParticleInConfigWhenStopped boolean
---@field ActivateParticleSocketNames ULuaArrayHelper<string>
---@field FullCameraBindingName string
---@field HalfCameraBindingName string
FLobbyAircraftHatchLevelSequenceData = {}


---机舱动画配置
---@class UAircraftHatchHandle: UBattleItemHandleBase
---@field LobbyStaticMesh UStaticMesh
---@field LobbySkMesh USkeletalMesh
---@field LobbyTeammateActorClass AActor
---@field LobbyAnchorActorClass AActor
---@field LobbyAnchorActorOffsetTrans FTransform
---@field LobbyLevelSequenceDataMap ULuaMapHelper<ELobbyAircraftHatchLevelSequenceType, FLobbyAircraftHatchLevelSequenceData>
---@field bAsyncLoadAnimationAsset boolean
local UAircraftHatchHandle = {}
