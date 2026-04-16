---@meta

---@class EFreeCombinationVoicePlayConflictType
---@field PlayConflict_NotMatch number @未匹配结果
---@field PlayConflict_Abandon number @丢弃语音
---@field PlayConflict_Interrupt number @打断播放中声音，播放新声音。
---@field PlayConflict_Wait number @等待原声音播放完毕，播放新声音。
EFreeCombinationVoicePlayConflictType = {}


---@class UFreeCombinationVoicePlayConflictRule: UObject
local UFreeCombinationVoicePlayConflictRule = {}

---@param PlayingVoicePriority number
---@param NewVoicePriority number
---@param Params ULuaArrayHelper<number>
---@return EFreeCombinationVoicePlayConflictType
function UFreeCombinationVoicePlayConflictRule:BP_MatchConflictType(PlayingVoicePriority, NewVoicePriority, Params) end


---@class UFreeCombinationVoicePlayConflictRule_Wait: UFreeCombinationVoicePlayConflictRule
local UFreeCombinationVoicePlayConflictRule_Wait = {}
