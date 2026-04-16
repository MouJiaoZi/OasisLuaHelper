---@meta

---@class EGenericCharacterSubAnimParamType
---@field FloatType number
---@field IntType number
---@field BoolType number
---@field VectorType number
EGenericCharacterSubAnimParamType = {}


---@class FGenericCharacterSubAnimRelatedAssetConfig
---@field AnimTag FGameplayTag
---@field AssetClass UAnimationAsset
---@field IsMontageAsset boolean
---@field GroupAndSlotName string
---@field AnimDisplayInfo string
FGenericCharacterSubAnimRelatedAssetConfig = {}


---@class FGenericCharacterSubAnimRelatedParamConfig
---@field ParamTag FGameplayTag
---@field DisplayInfo string
---@field ParamType EGenericCharacterSubAnimParamType
---@field FloatParam number
---@field IntParam number
---@field BoolParam boolean
---@field VectorParam FVector
FGenericCharacterSubAnimRelatedParamConfig = {}


---@class USTExtraGenericCharacterSubAnimInstanceBase: USTExtraGenericCharacterAnimInstanceBase
---@field SubAnimDisplayInfo string
---@field RelatedAnimAssetConfig ULuaArrayHelper<FGenericCharacterSubAnimRelatedAssetConfig>
---@field RelatedParamConfig ULuaArrayHelper<FGenericCharacterSubAnimRelatedParamConfig>
---@field AnimLengthSerializationList ULuaArrayHelper<FGameplayTag>
local USTExtraGenericCharacterSubAnimInstanceBase = {}
