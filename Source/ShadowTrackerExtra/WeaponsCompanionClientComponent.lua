---@meta

---@class FWeaponsCompanionVoiceTask
---@field PlayerKey number
---@field VoiceID number
---@field VoiceIndex number
---@field Score number
---@field BaseScore number
---@field CreateTime number
---@field PlayTime number
---@field EndTime number
FWeaponsCompanionVoiceTask = {}


---@class FWeaponsCompanionAudioEventHold
---@field HoldEndTime number
FWeaponsCompanionAudioEventHold = {}


---@class UWeaponsCompanionClientComponent: UActorComponent
---@field PlayingVoice ULuaMapHelper<number, FWeaponsCompanionVoiceTask>
---@field WaitVoice ULuaMapHelper<number, FWeaponsCompanionVoiceTask>
---@field ErrorMessageSet ULuaSetHelper<string>
---@field AudioEventHoldList ULuaArrayHelper<FWeaponsCompanionAudioEventHold>
local UWeaponsCompanionClientComponent = {}

---@param errorMessage string
function UWeaponsCompanionClientComponent:ReportErrorMessage(errorMessage) end

---@param playerKey number
---@param voiceID number
---@param voiceIndex number
---@param score number
---@param baseScore number
function UWeaponsCompanionClientComponent:PlayVoice(playerKey, voiceID, voiceIndex, score, baseScore) end

---@param playingTask FWeaponsCompanionVoiceTask
---@param now number
---@return number
function UWeaponsCompanionClientComponent:GetPlayingTaskRemainingTime(playingTask, now) end

---@param task FWeaponsCompanionVoiceTask
function UWeaponsCompanionClientComponent:RealPlayVoice(task) end

---@param task FWeaponsCompanionVoiceTask
function UWeaponsCompanionClientComponent:EndPlayVoice(task) end

---@param playerKey number
---@param voicePath string
---@param eventName string
function UWeaponsCompanionClientComponent:LoadAndPlayVoice(playerKey, voicePath, eventName) end

---@param assPath FSoftObjectPath
---@param playerKey number
---@param eventName string
function UWeaponsCompanionClientComponent:OnAsyncLoadVoice(assPath, playerKey, eventName) end

---@param Event UAkAudioEvent
function UWeaponsCompanionClientComponent:HoldAudioEvent(Event) end

---@param now number
function UWeaponsCompanionClientComponent:TickHoldAudioEvent(now) end
