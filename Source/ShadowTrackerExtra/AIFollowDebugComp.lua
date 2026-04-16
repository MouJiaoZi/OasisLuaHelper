---@meta

---@class UAIFollowDebugComp: UActorComponent
---@field DebugInfo FAIFollowDebugInfo
---@field AnalysisResult FAnalysisResultDebug
---@field DebugInfoOther FAIFollowDebugInfo
---@field AnalysisResultOther FAnalysisResultDebug
---@field bEnableDebug boolean
---@field bEnableDebugOther boolean
local UAIFollowDebugComp = {}

function UAIFollowDebugComp:OnRep_EnableDebug() end
