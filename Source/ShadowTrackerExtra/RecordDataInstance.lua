---@meta

---@class URecordDataInstance: UObject
---@field SpecificName string
---@field DataClass URecordData
---@field bUseLua boolean
local URecordDataInstance = {}

function URecordDataInstance:OnLuaInit() end

function URecordDataInstance:OnLuaStartPlay() end

function URecordDataInstance:OnLuaStopPlay() end

function URecordDataInstance:OnLuaFetchData() end

---@param OutReason string
---@param ErrorFrameIndex ULuaArrayHelper<number>
---@return boolean
function URecordDataInstance:OnLuaCompareDataInner(OutReason, ErrorFrameIndex) end
