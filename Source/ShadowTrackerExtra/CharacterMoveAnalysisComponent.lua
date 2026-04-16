---@meta

---@class UCharacterMoveAnalysisComponent: UPlayerMoveAnalysisComponent
local UCharacterMoveAnalysisComponent = {}

---@param InReplayDesc string
function UCharacterMoveAnalysisComponent:StartMoveAnalysisWithRecord(InReplayDesc) end

---@param InReplayId number
---@param InReplayDesc string
function UCharacterMoveAnalysisComponent:StartMoveAnalysisWithReplayId(InReplayId, InReplayDesc) end

function UCharacterMoveAnalysisComponent:StopMoveAnalysis() end
