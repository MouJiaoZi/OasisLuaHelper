---@meta

---@class UWeaponsCompanionFightingRule: UWeaponsCompanionVoiceRuleBase
---@field RuleID number
---@field RuleParams ULuaArrayHelper<string>
---@field FightingKeepTime number
---@field FightingHold boolean
---@field FightingKeepEndTime number
local UWeaponsCompanionFightingRule = {}

---@param comp UWeaponsCompanionVoiceComponent
---@param controller ASTExtraPlayerController
function UWeaponsCompanionFightingRule:Init(comp, controller) end

function UWeaponsCompanionFightingRule:OnInit() end

---@return boolean
function UWeaponsCompanionFightingRule:RuleFighting() end

---@param eventType EWeaponsCompanionVoiceEvent
function UWeaponsCompanionFightingRule:AddEventListener(eventType) end

---@param eventType EWeaponsCompanionVoiceEvent
function UWeaponsCompanionFightingRule:RemoveEventListener(eventType) end

---@param errorMessage string
function UWeaponsCompanionFightingRule:ReportErrorMessage(errorMessage) end

---@param fightTime number
function UWeaponsCompanionFightingRule:ExtendFightingTime(fightTime) end

---@param holdEnable boolean
function UWeaponsCompanionFightingRule:FightingHoldChange(holdEnable) end
