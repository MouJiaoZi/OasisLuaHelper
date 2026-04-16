---@meta

---@class FFreeCombinationVoicePlayRuleConfig
---@field RuleLogic UFreeCombinationVoicePlayConflictRule
---@field Params ULuaArrayHelper<number>
FFreeCombinationVoicePlayRuleConfig = {}


---@class FFreeCombinationVoiceWaitRuleConfig
---@field RuleLogic UFreeCombinationVoiceWaitConflictRule
---@field Params ULuaArrayHelper<number>
FFreeCombinationVoiceWaitRuleConfig = {}


---@class UFreeCombinationVoicePlayBase: UObject
---@field PlayConflictRule ULuaArrayHelper<FFreeCombinationVoicePlayRuleConfig>
---@field WaitConflictRule ULuaArrayHelper<FFreeCombinationVoiceWaitRuleConfig>
---@field PlayingVoiceID number
local UFreeCombinationVoicePlayBase = {}

function UFreeCombinationVoicePlayBase:Init() end

function UFreeCombinationVoicePlayBase:Tick() end

---@param VoiceID number
---@param Priority number
function UFreeCombinationVoicePlayBase:PlayVoice(VoiceID, Priority) end

---@param VoiceID number
function UFreeCombinationVoicePlayBase:StartPlayVoice(VoiceID) end

---@param Interrupt boolean
function UFreeCombinationVoicePlayBase:EndPlayVoice(Interrupt) end
