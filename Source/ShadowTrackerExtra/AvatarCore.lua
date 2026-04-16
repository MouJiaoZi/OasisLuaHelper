---@meta

---@class EAvatarSlotVarType
---@field Bool number @Bool
---@field Int number @Int
---@field Float number @Float
EAvatarSlotVarType = {}


---HOT_UPDATE_PROTECT *****************************************
---@class FStaticSwitchPermutationKey
---@field ParamValuePairStrSet ULuaSetHelper<string>
FStaticSwitchPermutationKey = {}


---@class FStaticSwitchRawMatInfo
---@field PermutationKey FStaticSwitchPermutationKey
---@field RawMatRef UMaterialInterface
---@field RawMatParentRef UMaterialInterface
FStaticSwitchRawMatInfo = {}


---@class FStaticSwitchPermutationMatInfo
---@field PermutationKey FStaticSwitchPermutationKey
---@field PermutationMatRef UMaterialInterface
FStaticSwitchPermutationMatInfo = {}


---@class FStaticSwitchPermutationRefCollection
---@field StaticSwitchPermutationMatRefList ULuaArrayHelper<UMaterialInterface>
---@field StaticSwitchPermutationMatInfoList ULuaArrayHelper<FStaticSwitchPermutationMatInfo>
FStaticSwitchPermutationRefCollection = {}


---@class FAvatarSlotEventData
---@field NotifyEventName string
---@field bNeedClean boolean
FAvatarSlotEventData = {}


---@class FAvatarSlotVarData
---@field NotifyVarName string
---@field VarType EAvatarSlotVarType
---@field BoolValue boolean
---@field IntValue number
---@field FloatValue number
---@field bNeedClean boolean
---@field AnimInstWeakPtr UAnimInstance
FAvatarSlotVarData = {}


---@class FSlotEventArray
---@field Events ULuaArrayHelper<FAvatarSlotEventData>
FSlotEventArray = {}


---@class FSlotVarArrayInfo
---@field bIncludeAllSlots boolean
---@field VarsAndValues ULuaArrayHelper<FAvatarSlotVarData>
FSlotVarArrayInfo = {}
