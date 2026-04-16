---@meta

---@class UEffectModifierFunctionLibrary: UBlueprintFunctionLibrary
local UEffectModifierFunctionLibrary = {}

---@param RepProcessor UGenericAbilityRepProcessor_EffectModifierGroup
---@param AssetKey number
---@param InCarrier UObject
function UEffectModifierFunctionLibrary:UnApplyEffectModifiersByAsset(RepProcessor, AssetKey, InCarrier) end

---@param RepProcessor UGenericAbilityRepProcessor_EffectModifierGroup
---@param AssetKey number
---@param InCarrier UObject
---@param OutModifiers ULuaArrayHelper<UGenericAbilityBase>
function UEffectModifierFunctionLibrary:DoApplyEffectModifiersByAsset(RepProcessor, AssetKey, InCarrier, OutModifiers) end

---@param RepProcessor UGenericAbilityRepProcessor_EffectModifierGroup
function UEffectModifierFunctionLibrary:InitializeEffectModifierRepProcessor(RepProcessor) end

---@param InCarrier UObject
---@param InTag FGameplayTag
---@param ParamName string
---@param bHasParam boolean
---@param OutValue number
function UEffectModifierFunctionLibrary:GetEffectModifierInt32ParamByTag(InCarrier, InTag, ParamName, bHasParam, OutValue) end

---@param InCarrier UObject
---@param InTag FGameplayTag
---@param ParamName string
---@param bHasParam boolean
---@param OutValue number
function UEffectModifierFunctionLibrary:GetEffectModifierFloatParamByTag(InCarrier, InTag, ParamName, bHasParam, OutValue) end

---@param InCarrier UObject
---@param InTag FGameplayTag
---@param ParamName string
---@param bHasParam boolean
---@param OutValue boolean
function UEffectModifierFunctionLibrary:GetEffectModifierBoolParamByTag(InCarrier, InTag, ParamName, bHasParam, OutValue) end

---@param InCarrier UObject
---@param InTag FGameplayTag
---@param ParamName string
---@param bHasParam boolean
---@param OutValue number
function UEffectModifierFunctionLibrary:GetEffectModifierStructParamByTag(InCarrier, InTag, ParamName, bHasParam, OutValue) end

---@param InEffectModifier UGenericAbilityBase
---@param ParamName string
---@param bHasParam boolean
---@param OutValue number
function UEffectModifierFunctionLibrary:GetEffectModifierInt32Param(InEffectModifier, ParamName, bHasParam, OutValue) end

---@param InEffectModifier UGenericAbilityBase
---@param ParamName string
---@param bHasParam boolean
---@param OutValue number
function UEffectModifierFunctionLibrary:GetEffectModifierFloatParam(InEffectModifier, ParamName, bHasParam, OutValue) end

---@param InEffectModifier UGenericAbilityBase
---@param ParamName string
---@param bHasParam boolean
---@param OutValue boolean
function UEffectModifierFunctionLibrary:GetEffectModifierBoolParam(InEffectModifier, ParamName, bHasParam, OutValue) end

---@param InEffectModifier UGenericAbilityBase
---@param ParamName string
---@param bHasParam boolean
---@param OutValue number
function UEffectModifierFunctionLibrary:GetEffectModifierStructParam(InEffectModifier, ParamName, bHasParam, OutValue) end
