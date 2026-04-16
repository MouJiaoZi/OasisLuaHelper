---@meta

---记录手指Action相关信息，移动遥感角度记录，开火手指位置记录
---@class UCACRule_FingerMoveInfoForTlog: UCheckAimCheatRule
---@field ViewPortDPIScale number
---@field bHasServerUploadData boolean
---@field FireFingerPosRecord_Interval number
---@field FireFingerPosRecord_MaxFrameCounter number
---@field FireFingerPosRecord_MaxDataCounter number
---@field FireFingerPosReportToDS_Interval number
---@field ClientCacheFireDataStr ULuaArrayHelper<string>
---@field ServerCacheFireDataStr ULuaArrayHelper<string>
---@field JoyStickDegreeRecord_Interval number
---@field JoyStickDegreeRecord_MaxCounter number
---@field JoyStickDegreeReportToDS_Interval number
---@field ClientCacheJoyStickDegree ULuaArrayHelper<number>
---@field ServerCacheJoyStickDegree ULuaArrayHelper<number>
local UCACRule_FingerMoveInfoForTlog = {}

function UCACRule_FingerMoveInfoForTlog:InitControllerInputEvent() end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_FingerMoveInfoForTlog:InputTouchBegin(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_FingerMoveInfoForTlog:InputTouchEnd(FingerIndex, Location, force) end

function UCACRule_FingerMoveInfoForTlog:OnStartFire() end

function UCACRule_FingerMoveInfoForTlog:OnStopFire() end

---@param PlayerKey number
---@param Reason string
function UCACRule_FingerMoveInfoForTlog:OnPlayerSendBattleResult(PlayerKey, Reason) end

---@param ReportFireFingerPos ULuaArrayHelper<string>
function UCACRule_FingerMoveInfoForTlog:ServerFireFingerPosInfoReport(ReportFireFingerPos) end

function UCACRule_FingerMoveInfoForTlog:ClientFireFingerPosInfoRecordFinish() end

---@param ReportJoyStickDegrees ULuaArrayHelper<number>
function UCACRule_FingerMoveInfoForTlog:ServerJoyStickInfoReport(ReportJoyStickDegrees) end

function UCACRule_FingerMoveInfoForTlog:ClientJoyStickInfoRecordFinish() end
