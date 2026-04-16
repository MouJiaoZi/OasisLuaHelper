---@meta

---角色播放的音频位置和 Pawn 位置不同步时触发异常上报的检查规则
---@class UAkAudioCheckPawnLocReport: UAkAudioErrorReportBase
---@field DistanceCheckThreshold number
---@field MaxContinueReportCount number
---@field RestoreContinueReportCD number
---@field ClearTimeThreshod number
---@field AkDetailToCount ULuaMapHelper<string, number>
---@field ForbiddenReportAk ULuaSetHelper<string>
local UAkAudioCheckPawnLocReport = {}
