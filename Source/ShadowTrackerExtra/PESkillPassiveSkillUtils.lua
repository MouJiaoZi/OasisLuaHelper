---@meta

---@class UPESkillPassiveSkillUtils: UObject
local UPESkillPassiveSkillUtils = {}

---Check if any tag in source tags matches any tag in target name tags
---@param SourceTags ULuaArrayHelper<FGameplayTag>
---@param TargetNameTags ULuaArrayHelper<string>
---@param eCondition EPEPassiveSkillTagsMatchType
---@return boolean
function UPESkillPassiveSkillUtils:CheckTagsMatch(SourceTags, TargetNameTags, eCondition) end

---Check if any tag in source tag container matches any tag in target tags array
---@param SourceTagContainer FGameplayTagContainer
---@param TargetTags ULuaArrayHelper<FGameplayTag>
---@param eCondition EPEPassiveSkillTagsMatchType
---@return boolean
function UPESkillPassiveSkillUtils:CheckTagsMatchContainer(SourceTagContainer, TargetTags, eCondition) end

---@param nDamageHitPart number
---@return EPSkillEventWeaponHitPartType
function UPESkillPassiveSkillUtils:TranslateHitPart(nDamageHitPart) end
