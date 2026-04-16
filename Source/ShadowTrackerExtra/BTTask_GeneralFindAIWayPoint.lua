---@meta

---通用查找AI路点
---@class UBTTask_GeneralFindAIWayPoint: UBTTaskNode
---@field bConsiderWaypointTeam boolean @是否考虑路点的队伍
---@field bConsiderWaypointTeamByBlackBoardKey boolean @是否使用黑板值作为TeamId
---@field InWaypointTeamID any @TeamId黑板值
---@field InSearchWayPointRadius number @查找路点半径
---@field InPointRadius number @和最近点相距这个距离判定为在点上
---@field InSearchRandomPointRadius number @当不在点上时随机寻找该半径内的点
---@field InMaxRandIterTimes number @目标点附近随机最大次数
---@field OutputWayPointTargetLoc any @目标位置输出
---@field bDebugDraw boolean
---@field DebugDrawPointTime number
local UBTTask_GeneralFindAIWayPoint = {}
