---@meta

---@class UBTTask_SetDownwardPos: UBTTaskNode
---@field ActorBlackboardKey any @blackboard key selector
---@field PosBlackboardKey any @blackboard key selector
---@field DownwardTraceDistance number @downward trace distance
---@field OffsetZ number @downward trace distance
---@field TracableObjectTemplate ULuaArrayHelper<UObject> @downward trace distance
---@field bForceSuccess boolean
---@field SearchRadius number
---@field bIgnoreStartPenetratingLoc boolean
local UBTTask_SetDownwardPos = {}
