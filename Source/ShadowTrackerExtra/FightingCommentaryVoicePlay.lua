---@meta

---@class UFightingCommentaryVoicePlay: UFreeCombinationVoicePlayBase
---@field AsyncLoadSerialNumber number
---@field AsyncReqID number
---@field AkPlayingID number
---@field PlayEndTime number
local UFightingCommentaryVoicePlay = {}

function UFightingCommentaryVoicePlay:Init() end

---@param VoiceID number
function UFightingCommentaryVoicePlay:StartPlayVoice(VoiceID) end

---@param Interrupt boolean
function UFightingCommentaryVoicePlay:EndPlayVoice(Interrupt) end

function UFightingCommentaryVoicePlay:Tick() end

---@param VoiceID number
---@param assPath FSoftObjectPath
---@param ReqID number
function UFightingCommentaryVoicePlay:OnAsyncLoadVoice(VoiceID, assPath, ReqID) end
