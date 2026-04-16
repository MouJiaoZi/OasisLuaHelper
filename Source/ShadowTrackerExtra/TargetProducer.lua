---@meta

---@class UTargetProducer: UObject, ILogicPartVisualizerInterface
---@field IGenericCharacter IGenericCharacterInterface
---@field FilterCampRelations ULuaArrayHelper<ECampRelation>
---@field FilterEntityTypeTags FGameplayTagContainer
---@field FilterIncludeTags FGameplayTagContainer
---@field FilterExcludeTags FGameplayTagContainer
---@field LockTargetRange number
---@field RangeLimit number
local UTargetProducer = {}

---@param InFilterCampRelations ULuaArrayHelper<ECampRelation>
---@param InFilterEntityTypeTags FGameplayTagContainer
---@param InFilterIncludeTags FGameplayTagContainer
---@param InFilterExcludeTags FGameplayTagContainer
function UTargetProducer:SetTargetFilter(InFilterCampRelations, InFilterEntityTypeTags, InFilterIncludeTags, InFilterExcludeTags) end
