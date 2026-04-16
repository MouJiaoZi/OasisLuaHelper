---@meta

---@class FForceSetReverseData
---@field IndexRangeStart number
---@field IndexRangeEnd number
FForceSetReverseData = {}


---查找路点TDM
---@class UBTTask_FindWayPointTDM: UBTTaskNode
---@field InIsReverseKey FBlackboardKeySelector
---@field OutMoveLocationKey FBlackboardKeySelector
---@field AcceptRadius number
---@field MaxRandIterTimes number
---@field bDebugDraw boolean
---@field DebugDrawPointTime number
---@field IgnorePointDistance number
---@field bCheckReverse boolean
---@field ForceForwardIndexList ULuaArrayHelper<FForceSetReverseData>
---@field ForceReverseIndexList ULuaArrayHelper<FForceSetReverseData>
---@field bCheckPoisonCircleReverse boolean
local UBTTask_FindWayPointTDM = {}
