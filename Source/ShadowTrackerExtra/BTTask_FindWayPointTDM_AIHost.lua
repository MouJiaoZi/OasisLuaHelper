---@meta

---@class FForceSetReverseData_AIHost
---@field IndexRangeStart number
---@field IndexRangeEnd number
FForceSetReverseData_AIHost = {}


---查找路点TDM_AIHost
---@class UBTTask_FindWayPointTDM_AIHost: UBTTaskNode
---@field InIsReverseKey FBlackboardKeySelector
---@field OutMoveLocationKey FBlackboardKeySelector
---@field AcceptRadius number
---@field MaxRandIterTimes number
---@field bDebugDraw boolean
---@field DebugDrawPointTime number
---@field IgnorePointDistance number
---@field bCheckReverse boolean
---@field ForceForwardIndexList ULuaArrayHelper<FForceSetReverseData_AIHost>
---@field ForceReverseIndexList ULuaArrayHelper<FForceSetReverseData_AIHost>
---@field bCheckPoisonCircleReverse boolean
local UBTTask_FindWayPointTDM_AIHost = {}
