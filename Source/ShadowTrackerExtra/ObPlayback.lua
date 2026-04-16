---@meta

---@class UObPlayback: UCompletePlayback
---@field TmpViewTargetName string
---@field ReplayFileServerUrl string
---@field ChunkUploadDelayInSeconds number
---@field ChunkDownloadDelayInSeconds number
---@field ChunkAdvancePlayInSeconds number
---@field StartNotifyStartLiveChunkNum number
---@field ChunkUploadRetryDelayInSeconds number
---@field ChunkUploadRetryTimes number
---@field ChunkDownloadRetryDelayInSeconds number
---@field ChunkDownloadRetryTimes number
---@field MaxLiveUploadSpeed number
local UObPlayback = {}

---@param InWidget UUAEUserWidget
function UObPlayback:SetOBUI(InWidget) end
