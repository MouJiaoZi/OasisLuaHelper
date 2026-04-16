---@meta

---@class UAvatarResAdvanceCheckDownloadComponent: UActorComponent
---@field PakIdsResponseInfo FAvatarPakDownloadInfo
---@field currentRequestId number
---@field pendingRequestId number
---@field ResponsedResIds ULuaArrayHelper<FAvatarResIdInfo>
local UAvatarResAdvanceCheckDownloadComponent = {}

function UAvatarResAdvanceCheckDownloadComponent:OnRep_PakIdsResponseInfo() end

function UAvatarResAdvanceCheckDownloadComponent:StopWork() end

---@param reqId number
function UAvatarResAdvanceCheckDownloadComponent:RequestNewRoundAvatarPakIds(reqId) end

function UAvatarResAdvanceCheckDownloadComponent:SendNextResIdRequest() end

function UAvatarResAdvanceCheckDownloadComponent:ResponseNextBatchData() end

function UAvatarResAdvanceCheckDownloadComponent:ClearCacheResponseData() end

function UAvatarResAdvanceCheckDownloadComponent:RequestStartDSPressureTest() end
