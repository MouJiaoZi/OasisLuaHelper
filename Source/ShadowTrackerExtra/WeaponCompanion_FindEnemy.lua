---@meta

---@class UWeaponCompanion_FindEnemy: UWeaponsCompanionFightingRule
---@field TickInterval number
---@field TickTime number
---@field NeedDistance number
---@field NeedCosineValue number
---@field MeedCondition boolean
---@field LastMeedCondition boolean
local UWeaponCompanion_FindEnemy = {}

function UWeaponCompanion_FindEnemy:OnInitCpp() end

---@param eventType EWeaponsCompanionVoiceEvent
---@param eventParam UObject
function UWeaponCompanion_FindEnemy:OnTringgerEventCpp(eventType, eventParam) end
