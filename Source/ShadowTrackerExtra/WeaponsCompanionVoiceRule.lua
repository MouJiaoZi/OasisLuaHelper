---@meta

---@class UWeaponsCompanionVoiceRule: UWeaponsCompanionVoiceRuleBase
---@field ListenerList ULuaSetHelper<number>
---@field RuleID number
---@field RuleActiveCount number
---@field ParentWeaponID number
---@field RuleScore number
---@field RuleParams ULuaArrayHelper<string>
---@field RuleCD number
---@field RuleVoiceType EWeaponsCompanionRuleVoiceType
---@field VoicePackID number
---@field PreVoicePackID number
---@field MaxFightingDelayTime number
---@field IsTeamVoice boolean
local UWeaponsCompanionVoiceRule = {}

---@return boolean
function UWeaponsCompanionVoiceRule:GetRuleAvtive() end

---@param comp UWeaponsCompanionVoiceComponent
---@param controller ASTExtraPlayerController
function UWeaponsCompanionVoiceRule:Init(comp, controller) end

function UWeaponsCompanionVoiceRule:OnInit() end

function UWeaponsCompanionVoiceRule:OnRemove() end

---@param eventType EWeaponsCompanionVoiceEvent
function UWeaponsCompanionVoiceRule:AddEventListener(eventType) end

---@param eventType EWeaponsCompanionVoiceEvent
function UWeaponsCompanionVoiceRule:RemoveEventListener(eventType) end

function UWeaponsCompanionVoiceRule:PlayVoice() end

function UWeaponsCompanionVoiceRule:RemoveRule() end

function UWeaponsCompanionVoiceRule:ClearEventListener() end

---@param errorMessage string
function UWeaponsCompanionVoiceRule:ReportErrorMessage(errorMessage) end

function UWeaponsCompanionVoiceRule:GetDebugInfo() end
