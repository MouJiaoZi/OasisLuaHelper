---@meta

---@class UTssAntiDataSingletonBase: UObject
---@field TSSAntiDataLenMax number
---@field TssSdkAntiData ULuaArrayHelper<number>
---@field TssSdkAntiDataCRC number
---@field UseTssSdkAntiData boolean
---@field UseFireTssAntiData boolean
---@field UseHeartbeatOBTssAntiData boolean
---@field UseHeartbeatTssAntiData boolean
---@field RetCode number
local UTssAntiDataSingletonBase = {}

function UTssAntiDataSingletonBase:QueryData() end

---@param Code number
---@param ResetData boolean
function UTssAntiDataSingletonBase:SetCode(Code, ResetData) end

---@param FireCall boolean
---@param HeartbeatCall boolean
---@param IsSpectator boolean
function UTssAntiDataSingletonBase:OnCallAntiData(FireCall, HeartbeatCall, IsSpectator) end
