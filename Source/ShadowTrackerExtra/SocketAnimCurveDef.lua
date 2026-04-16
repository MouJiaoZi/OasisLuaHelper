---@meta

---@class EPEMeleeAttackTrackType
---@field None number
---@field OfflineAnimCurve number @离线曲线
---@field RuntimeAnimation number @实时检测
---@field RuntimeAnimCurve number @实时曲线
EPEMeleeAttackTrackType = {}


---@class EPEMeleeAttackRefAnimDataType
---@field None number
---@field TaskCachedCurveData number @Task上缓存的信息
---@field SkillOfflineCurveData number @技能离线数据
EPEMeleeAttackRefAnimDataType = {}


---@class ESocketAnimCurveRefAnimType
---@field None number
---@field ManualAssignMontage number @手动指定Montage
---@field AutoBindSequence number @自动绑定Sequence
ESocketAnimCurveRefAnimType = {}


---@class ESocketAnimCurveTransformType
---@field None number
---@field WorldTransform number @世界坐标
---@field RelativeTransform number @相对坐标
ESocketAnimCurveTransformType = {}


---@class FMontageSocketAnimCurveDataProviderInterface
FMontageSocketAnimCurveDataProviderInterface = {}


---@class FMontageSocketAnimCurveProxyInterface
FMontageSocketAnimCurveProxyInterface = {}


---@class FMontageSocketAnimCurve
---@field SocketName string
---@field MontageAssetRate number
---@field AssetSampleScale number
---@field StartTime number
---@field EndTime number
---@field BoundsMax FVector
---@field BoundsMin FVector
FMontageSocketAnimCurve = {}


---定义动画曲线运动的各种信息
---@class FSocketAnimCurveState
FSocketAnimCurveState = {}


---@class FSocketAnimCurveContext
---@field Character ACharacter
FSocketAnimCurveContext = {}


---@class FSocketAnimCurveSyncData
---@field CurrentTime number
---@field CurrentLocation FVector
---@field CurrentRotation FQuat
FSocketAnimCurveSyncData = {}


---@class FMontageSocketAnimCurveExtractData_OneFrame
---@field Time number
---@field Transform FTransform
FMontageSocketAnimCurveExtractData_OneFrame = {}


---@class FMontageSocketAnimCurveExtractData_OneSocket
---@field SocketName string
---@field StartTime number
---@field EndTime number
---@field BoundsMax FVector
---@field BoundsMin FVector
---@field ExtractSocketData ULuaArrayHelper<FMontageSocketAnimCurveExtractData_OneFrame>
FMontageSocketAnimCurveExtractData_OneSocket = {}


---@class FMontageSocketAnimCurveData
---@field bIsValid boolean
---@field MontagePath FSoftObjectPath
---@field MontageAssetRate number
---@field AssetSampleScale number
---@field SampleRate number
---@field ExtractAnimAssetStartTime number
---@field ExtractAnimAssetEndTime number
---@field ExtractSockets ULuaMapHelper<string, FMontageSocketAnimCurveExtractData_OneSocket>
FMontageSocketAnimCurveData = {}


---@class FMontageSocketAnimCurveData_PersistEffect
---@field AnimsSocketCurveData ULuaMapHelper<string, FMontageSocketAnimCurveData>
FMontageSocketAnimCurveData_PersistEffect = {}


---@class FMontageSocketAnimCurveProxy_PETaskComm
---@field RefAnimType ESocketAnimCurveRefAnimType
---@field RefMontage UAnimMontage
---@field SocketList ULuaArrayHelper<string>
---@field bExportIndependenceDA boolean
---@field SampleInterval number
---@field StartTime number
---@field EndTime number
FMontageSocketAnimCurveProxy_PETaskComm = {}


---@class FMontageSocketAnimCurveGeneralProxy_PETaskComm
---@field Config FMontageSocketAnimCurveProxy_PETaskComm
---@field Context FSocketAnimCurveContext
---@field State FSocketAnimCurveState
FMontageSocketAnimCurveGeneralProxy_PETaskComm = {}


---@class FMontageSocketAnimCurveProxy_PESkillMeleeAttack
---@field RefAnimType ESocketAnimCurveRefAnimType
---@field RefAnimDataType EPEMeleeAttackRefAnimDataType
---@field bExportIndependenceDA boolean
---@field SocketCurveData FMontageSocketAnimCurveData
---@field SampleInterval number
---@field StartTime number
---@field EndTime number
---@field StartClipOffset number
---@field EndClipOffset number
---@field MeleeAttackTrackType EPEMeleeAttackTrackType
FMontageSocketAnimCurveProxy_PESkillMeleeAttack = {}


---@class FSocketAnimCurveExportContext
---@field SocketList ULuaArrayHelper<string>
---@field PlayRate number
---@field SampleInterval number
---@field StartClipOffset number
---@field EndClipOffset number
FSocketAnimCurveExportContext = {}


---@class UMontageSocketAnimCurveDataAsset: UDataAsset, FMontageSocketAnimCurveDataProviderInterface
---@field MontagePath FSoftObjectPath
---@field MontageAssetRate number
---@field AssetSampleScale number
---@field SampleRate number
---@field SocketCurves ULuaMapHelper<string, FMontageSocketAnimCurve>
local UMontageSocketAnimCurveDataAsset = {}


---@class UGlobalMontageSocketAnimCurvesDataAsset: UDataAsset
---@field MontageCurveMap ULuaMapHelper<string, UMontageSocketAnimCurveDataAsset>
local UGlobalMontageSocketAnimCurvesDataAsset = {}
