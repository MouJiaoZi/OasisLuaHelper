---@meta

---@class EFlyPatrolRelativeCenterType
---@field FPSpawnPoint number @出生点
---@field FPCurrentLocation number @当前位置
---@field FPCustomCenter number @自定义
EFlyPatrolRelativeCenterType = {}


---寻找飞行巡逻点
---@class UBTTask_PxgFindFlyPatrolPosition: UBTTaskNode
---@field SearchRadius number @巡逻位置搜索半径
---@field RelativeCenterType EFlyPatrolRelativeCenterType @巡逻相对中心点
---@field CustomCenterBlackboardKey any @自定义中心位置，当RelativeCenterType为自定义时有效
---@field TargetLocHeightSetType EFlyTargetLocHeightSetType @目标点高度设置类型
---@field TargetLocRelativeHeight number @目标点相对高度
---@field MaxFindLocTimes number @最大尝试寻点次数
---@field bDoNavmeshProjectTest boolean @目标点是否需要在navmesh上
---@field FilterClass UNavigationQueryFilter @"None" will result in default filter being used
---@field InTraceFloorChannel ECollisionChannel
---@field InFindFloorQueryMobilityType EOverrideQueryMobilityType
---@field InFindFloorIgnoreCollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field InTraceHeightUp number
---@field InTraceHeightDown number
---@field OutputTargetLocation any @目标位置输出
---@field bDebugDrawTargetLoc boolean
local UBTTask_PxgFindFlyPatrolPosition = {}
