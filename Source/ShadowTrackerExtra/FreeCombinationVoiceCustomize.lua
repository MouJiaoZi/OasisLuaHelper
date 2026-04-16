---@meta

---@class UFreeCombinationVoiceCustomize: UObject
local UFreeCombinationVoiceCustomize = {}

---@param Comp UFreeCombinationVoiceComponent
function UFreeCombinationVoiceCustomize:Init(Comp) end

function UFreeCombinationVoiceCustomize:OnInit() end

---@param DeltaTime number
function UFreeCombinationVoiceCustomize:Tick(DeltaTime) end

---@param RuleID number
---@param VoiceID number
---@return number
function UFreeCombinationVoiceCustomize:BP_GetVoicePriority(RuleID, VoiceID) end
