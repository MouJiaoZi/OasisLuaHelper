---@meta

---@class ETraceType
---@field TraceType_StraightLine number @直线检测
---@field TraceType_BrokenLine number @多方向折线检测
---@field TraceType_BrokenLineVisible number @多方向可见检测
ETraceType = {}


---@class UBTTask_Mob_FindAReachablePos: UBTTaskNode
---@field TargetActorBlackBoardKey any @Pos源Actor（从该Actor附近寻找Pos）
---@field IsNeedTraceableActor boolean @是否要求寻找结果点能trace到设定Actor
---@field TraceType ETraceType @trace方式
---@field TraceableActorBlackBoardKey any @能trace到的设定Actor
---@field TraceableActorTraceChannel ECollisionChannel
---@field TraceHighPosZOffset number @高处位置射线检测Z偏移
---@field TraceVisibilityLocOffset FVector
---@field TraceHighPosZOffset_TraceableActor number
---@field BrokenLineAngle ULuaArrayHelper<number> @多方向折线检测时水平方向探测角度
---@field BrokenLineLength ULuaArrayHelper<number> @多方向折线检测时水平方向探测距离
---@field SearchDistance number @搜索半径
---@field SearchDistanceMin number @搜索半径最小值
---@field IsNeedHeightDifference boolean @是否要求寻找结果与Pos源Actor在一定高度差范围内
---@field HeightDifference number @高度差（保持找出的位置与目标的高度小于该值）
---@field MaxSearchTime number @最大搜索次数
---@field FindFloorTraceOffsetZ number
---@field FindFloorTraceChannel ECollisionChannel
---@field FindFloorQueryMobilityType EOverrideQueryMobilityType
---@field bDrawDebugLine boolean
---@field DrawDebugLineDuration number
---@field DrawDebugLineThickness number
local UBTTask_Mob_FindAReachablePos = {}
