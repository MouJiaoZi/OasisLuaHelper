---@meta

---@class EFreeCombinationVoiceWaitConflictType
---@field WaitConflict_NotMatch number @未匹配结果
---@field WaitConflict_Replace number @替换原等待中的声音
---@field WaitConflict_Abandon number @丢弃语音
---@field WaitConflict_Quene number @后方排队等待
---@field WaitConflict_Insert number @前方插队等待
EFreeCombinationVoiceWaitConflictType = {}


---@class UFreeCombinationVoiceWaitConflictRule: UObject
local UFreeCombinationVoiceWaitConflictRule = {}

---@param OldVoicePriority number
---@param NewVoicePriority number
---@param Params ULuaArrayHelper<number>
---@return EFreeCombinationVoiceWaitConflictType
function UFreeCombinationVoiceWaitConflictRule:BP_MatchConflictType(OldVoicePriority, NewVoicePriority, Params) end


---@class UFreeCombinationVoiceWaitConflictRule_Quene: UFreeCombinationVoiceWaitConflictRule
local UFreeCombinationVoiceWaitConflictRule_Quene = {}
