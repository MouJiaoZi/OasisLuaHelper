---@meta

---@class EAvatarResTeamRelationType
---@field None number
---@field Other number
---@field Teammate number
---@field Self number
EAvatarResTeamRelationType = {}


---@class EAvatarResIdType
---@field None number
---@field CharacterAvatarHandle number
---@field CharacterTombBoxHandle number
---@field GlidSkinHandle number
---@field WeaponSkinHandle number
---@field WeaponAttachmentHandle number
---@field VehicleRes number
---@field OtherHandle number
EAvatarResIdType = {}


---@class FAvatarManagermentModClientPaltformType
---@field None number
---@field Android number
---@field IOS number
---@field Harmony number
---@field OtherAndPC number
FAvatarManagermentModClientPaltformType = {}


---@class FAvatarManagermentModClientMemoryType
---@field None number
---@field Low number
---@field Middle number
---@field High number
FAvatarManagermentModClientMemoryType = {}


---@class FAvatarManagermentModRunModeType
---@field None number
---@field Client number
---@field Server number
FAvatarManagermentModRunModeType = {}


---@class FAvatarManagermentMemoryCompareType
---@field Equal number
---@field LessEqual number
---@field ExceedEqual number
---@field Less number
---@field Exceed number
FAvatarManagermentMemoryCompareType = {}


---@class FAvatarManagermentModLaunchOccasionConfigType
---@field SystemInitialize number
---@field OnWorldPlay number
FAvatarManagermentModLaunchOccasionConfigType = {}


---@class FAvatarManagermentModLaunchOccasion
---@field SystemInitialize number
---@field OnWorldPlay_Server number
---@field OnWorldPlay_Client number
FAvatarManagermentModLaunchOccasion = {}


---@class FAvatarManagermentMemoryCompareInfo
---@field CompareCondition FAvatarManagermentMemoryCompareType
---@field MemorySize number
FAvatarManagermentMemoryCompareInfo = {}


---@class FAvatarManagermentModMachineLimitCondition
---@field CompareConditions ULuaArrayHelper<FAvatarManagermentMemoryCompareInfo>
FAvatarManagermentModMachineLimitCondition = {}


---@class FAvatarManagermentModLaunchCondition
---@field SupportPaltformTypes ULuaArrayHelper<FAvatarManagermentModClientPaltformType>
---@field SupportMemoryTypes ULuaArrayHelper<FAvatarManagermentModClientMemoryType>
---@field SupportRunModeTypes FAvatarManagermentModRunModeType
---@field LaunchLimitConditionByMachine ULuaMapHelper<FAvatarManagermentModClientPaltformType, FAvatarManagermentModMachineLimitCondition>
FAvatarManagermentModLaunchCondition = {}


---@class FAvatarPreCreateEntityRequestInfo
---@field needCreateNum number
FAvatarPreCreateEntityRequestInfo = {}
