---@meta

---@class EPersistPlayMode
---@field EPlayMode_None number @None
---@field EPlayMode_Local number @主端
---@field EPlayMode_OB number @OB
---@field EPlayMode_Replay number @Replay
EPersistPlayMode = {}


---@class EActivityUIShowMode
---@field EShowMode_OnlyLocal number @只在主端显示
---@field EShowMode_OnlyOB number @只在OB显示
---@field EShowMode_OnlyReplay number @只在Replay显示
---@field EShowMode_LocalAndOB number @主端及OB显示
---@field EShowMode_LocalAndReplay number @主端及Replay显示
---@field EShowMode_OBAndReplay number @OB及Replay显示
---@field EShowMode_All number @全显示
EActivityUIShowMode = {}


---@class FPersistBase
FPersistBase = {}


---@class FSubAnimInfoData
---@field SubInstanceClass UAnimInstance
---@field SlotName string
---@field SubAnimTypes number
FSubAnimInfoData = {}


---@class FPersistSubAnimInfo
---@field SubAnimInfoDataArray ULuaArrayHelper<FSubAnimInfoData>
---@field PrevSubAnimInfoDataArray ULuaArrayHelper<FSubAnimInfoData>
FPersistSubAnimInfo = {}


---@class FPersistMontageInfo
---@field bSetUp boolean
---@field TargetMontage FSoftObjectPath
---@field PlayTime number
FPersistMontageInfo = {}


---@class FPersistViewTargetInfo
---@field bSetUp boolean
---@field BlendTime number
FPersistViewTargetInfo = {}


---@class FPersonPerspectiveInfoData
---@field bFpp boolean
---@field LockTPPReason ELockTPPReason
---@field bValid boolean
FPersonPerspectiveInfoData = {}


---@class FPersistForcePersonPerspectiveInfo
---@field PersonPerspectiveInfoDataArray ULuaArrayHelper<FPersonPerspectiveInfoData>
---@field PrevPersonPerspectiveInfoDataArray ULuaArrayHelper<FPersonPerspectiveInfoData>
---@field CustomCameraTypeName string
---@field CustomPersonTypeName string
---@field bEnableCustomCameraType boolean
FPersistForcePersonPerspectiveInfo = {}


---@class FPersistVisPosUIInfo
---@field bSetUp boolean
---@field HideUIName string
FPersistVisPosUIInfo = {}


---@class FPersistAvatarHideInfo
---@field AvatarID ULuaArrayHelper<EAvatarSlotType>
FPersistAvatarHideInfo = {}


---@class FPersistRTPCKeyValue
---@field RTPCKey string
---@field RTPCValue number
---@field Actor AActor
FPersistRTPCKeyValue = {}


---@class FPersistRTPCValueInfo
---@field RTPCKeyValue ULuaArrayHelper<FPersistRTPCKeyValue>
FPersistRTPCValueInfo = {}


---@class FPersistUIStyleInfo
---@field UserWidgetStyle ULuaArrayHelper<UUserWidgetStyle>
FPersistUIStyleInfo = {}


---@class FActivityUIInfo
---@field UIName string
---@field ShowMode EActivityUIShowMode
---@field bAvailableSlot boolean
---@field ClientCheckParam string
FActivityUIInfo = {}


---@class FPersistActivityUIInfo
---@field UINameAndShowModeArray ULuaArrayHelper<FActivityUIInfo>
---@field OldUINameAndShowModeArray ULuaArrayHelper<FActivityUIInfo>
FPersistActivityUIInfo = {}
