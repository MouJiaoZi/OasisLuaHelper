---@meta

---寻找附近可见(可直线到达)的点
---@class UBTTask_PxgFindNearbyVisiblePoint: UBTTaskNode
---@field SearchRadiusRange FVector2D @搜索半径范围
---@field RadiusSampleInterval number @半径采样间隔
---@field AngleSampleInterval number @角度采样间隔
---@field PointsSamplePerFrame number @每帧采样次数
---@field CenterBlackboardKey any @找点中心位置
---@field TargetLocHeightSetType EFlyTargetLocHeightSetType @目标点高度设置类型
---@field TargetLocRelativeHeight number @目标点相对高度
---@field bDoNavmeshProjectTest boolean @目标点是否需要在navmesh上
---@field FilterClass UNavigationQueryFilter @投影到navmesh使用的filter
---@field CenterLocValidMoveTolerance number @中心位置有效移动容忍值，超过这个阈值，节点直接失败
---@field OutputTargetLocation any @目标位置输出
---@field bDebugDrawSamplePoint boolean
---@field DebugDrawSamplePointTime number
---@field bDebugDrawTargetPoint boolean
---@field DebugDrawTargetPointTime number
local UBTTask_PxgFindNearbyVisiblePoint = {}
