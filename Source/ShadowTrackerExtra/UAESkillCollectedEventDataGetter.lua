---@meta

---@class UUAESkillCollectedEventDataGetter: UObject
local UUAESkillCollectedEventDataGetter = {}

---@param STExtraCharacter ASTExtraCharacter
---@param EventId ECollectedEventDataEventId
---@return FCollectedEventData
function UUAESkillCollectedEventDataGetter:GetCollectedEventDataFromEventId(STExtraCharacter, EventId) end
