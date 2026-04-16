---@meta

---@class ECacheType
---@field ECacheType_Particle number @特效
---@field ECacheType_Audio number @音效
---@field ECacheType_Max number @最大值
ECacheType = {}


---@class FAvatarActionEffectsKey
---@field State number
---@field SlotType number
FAvatarActionEffectsKey = {}


---@class FAvatarActionEffectsValue
---@field bIsValid boolean
FAvatarActionEffectsValue = {}


---@class FCacheComponent
---@field bIsActive boolean
FCacheComponent = {}


---@class FWhiteList
---@field IDList ULuaArrayHelper<number>
FWhiteList = {}


---@class FBlackIDList
---@field bIsValid boolean
---@field BlackID number
FBlackIDList = {}


---@class FEffectTransformInVehicle
---@field EffectTransformInVehicle ULuaMapHelper<number, FTransform>
FEffectTransformInVehicle = {}
