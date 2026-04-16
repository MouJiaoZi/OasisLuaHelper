---@meta

---查找路点
---@class UBTTask_PxgFindWayPoint: UBTTaskNode
---@field InPointRadius number @和最近点相距这个距离判定为在点上
---@field SearchPointRadius number @当不在点上时随机寻找该半径内的点
---@field MaxRandIterTimes number @目标点附近随机最大次数
---@field OutputWayPointTargetLoc any @目标位置输出
---@field bDebugDraw boolean
---@field DebugDrawPointTime number
local UBTTask_PxgFindWayPoint = {}
