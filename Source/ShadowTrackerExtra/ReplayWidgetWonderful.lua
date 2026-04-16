---@meta

---@class FRecordVideoTime
---@field starttime number
---@field endtime number
FRecordVideoTime = {}


---@class UReplayWidgetWonderful: UReplayWidgetBase
local UReplayWidgetWonderful = {}

---@param picurl string
---@param uid string
---@param curAvatarBoxid number
---@param VsTeamLevel number
---@param BadgeID ULuaArrayHelper<number>
---@param sex number
---@param Name string
---@param playerLevel number
function UReplayWidgetWonderful:RefreshCurPlayerUI(picurl, uid, curAvatarBoxid, VsTeamLevel, BadgeID, sex, Name, playerLevel) end

function UReplayWidgetWonderful:SetBackgroundColorPerLoading() end

function UReplayWidgetWonderful:PlayLoadingAnimation() end

---@param isFinished boolean
---@param RecordVideoTimeList ULuaArrayHelper<FRecordVideoTime>
function UReplayWidgetWonderful:StopRecordVideoReplay(isFinished, RecordVideoTimeList) end

---@param TotalTime number
function UReplayWidgetWonderful:StartRecordVideoReplay(TotalTime) end
