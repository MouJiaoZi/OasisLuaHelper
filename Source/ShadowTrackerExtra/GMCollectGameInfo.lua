---@meta

---@class UGMCollectGameInfo: UGMCheatObjBase, ILuaInterface
local UGMCollectGameInfo = {}

function UGMCollectGameInfo:ReceivePostInitProperties() end

function UGMCollectGameInfo:ReceiveBeginDestroy() end

---@return string
function UGMCollectGameInfo:GetLuaModule() end

function UGMCollectGameInfo:ReceiveCVarEnableAutoUploadGameInfoChange() end

---@param CapturePath string
---@param CaptureDelayMS number
function UGMCollectGameInfo:ReceiveScreenCapture(CapturePath, CaptureDelayMS) end
