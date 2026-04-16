---@meta

---@class UFreeCombinationVoiceRule: UObject
---@field RuleID number
---@field RuleParams ULuaArrayHelper<string>
local UFreeCombinationVoiceRule = {}

function UFreeCombinationVoiceRule:Init() end

function UFreeCombinationVoiceRule:Remove() end

function UFreeCombinationVoiceRule:OnInit() end

function UFreeCombinationVoiceRule:OnRemove() end

---@param VoiceID number
function UFreeCombinationVoiceRule:PlayVoice(VoiceID) end

function UFreeCombinationVoiceRule:GetDebugInfo() end
