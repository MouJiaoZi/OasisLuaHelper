---@meta

---@class FFreeCombinationVoiceTask
---@field VoiceID number
---@field Priority number
FFreeCombinationVoiceTask = {}


---@class UFreeCombinationVoiceLogicGroup: UObject
---@field PlayConflictRule ULuaArrayHelper<FFreeCombinationVoicePlayRuleConfig>
---@field WaitConflictRule ULuaArrayHelper<FFreeCombinationVoiceWaitRuleConfig>
---@field PlayingTask FFreeCombinationVoiceTask
---@field WaittingTasks ULuaArrayHelper<FFreeCombinationVoiceTask>
local UFreeCombinationVoiceLogicGroup = {}

---@param InVoicePlay UFreeCombinationVoicePlayBase
function UFreeCombinationVoiceLogicGroup:Init(InVoicePlay) end

function UFreeCombinationVoiceLogicGroup:Tick() end

---@param VoiceID number
---@param Priority number
function UFreeCombinationVoiceLogicGroup:PlayVoice(VoiceID, Priority) end

function UFreeCombinationVoiceLogicGroup:EndPlayVoice() end

function UFreeCombinationVoiceLogicGroup:CheckPlayNextVoice() end

---@param NewVoicePriority number
---@return EFreeCombinationVoicePlayConflictType
function UFreeCombinationVoiceLogicGroup:CalculatePlayConflictType(NewVoicePriority) end

---@param Task FFreeCombinationVoiceTask
function UFreeCombinationVoiceLogicGroup:TaskPutWaitting(Task) end

---@param ComparePriority number
---@param NewVoicePriority number
---@return EFreeCombinationVoiceWaitConflictType
function UFreeCombinationVoiceLogicGroup:CalculateWaitConflictType(ComparePriority, NewVoicePriority) end

---@param newTask FFreeCombinationVoiceTask
function UFreeCombinationVoiceLogicGroup:StartPlayVoice(newTask) end
