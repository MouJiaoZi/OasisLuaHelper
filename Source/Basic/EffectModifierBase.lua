---@meta

---@class UEffectModifierBase: UGenericAbilityBase
---@field bShouldOverrideByTag boolean
local UEffectModifierBase = {}


---@class UEffectModifierGroupAsset: UDataAsset
---@field PreRemoveTags ULuaArrayHelper<FGameplayTag>
---@field EffectModifierTemplates ULuaArrayHelper<UEffectModifierBase>
local UEffectModifierGroupAsset = {}


---@class UGenericAbilityRepProcessor_EffectModifierGroup: UGenericAbilityRepProcessorBase
---@field EffectModifierGAType number
---@field GroupAssetPathMap ULuaMapHelper<number, FSoftObjectPath>
local UGenericAbilityRepProcessor_EffectModifierGroup = {}

---@param OutScriptPathMap ULuaMapHelper<number, FSoftObjectPath>
function UGenericAbilityRepProcessor_EffectModifierGroup:DoInitGroupAssetPathMap_BP(OutScriptPathMap) end
