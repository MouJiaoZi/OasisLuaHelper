---@meta

---随机寻找路点
---@class UBTTask_PxgFindRandomWayPoint: UBTTaskNode
---@field SearchRange FVector2D
---@field SearchFowardAngle number
---@field FowardReachableCheckTimes number
---@field AllReachableCheckTimes number
---@field TestReachableFilterClass UNavigationQueryFilter @可达性测试FilterClass
---@field bUsePointRandom boolean @是否开启路点附近随机
---@field MaxRandIterTimes number @路点附近随机最大次数
---@field PointRandomRadius number @路点附近随机半径
---@field OutputWayPointLoc any @输出路点位置
---@field bDebugDraw boolean
---@field DebugDrawPointTime number
local UBTTask_PxgFindRandomWayPoint = {}
