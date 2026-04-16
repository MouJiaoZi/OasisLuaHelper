---@meta

---@class ESeekFlyPointCenterLocType
---@field Target number
---@field Self number
---@field BornLocation number
ESeekFlyPointCenterLocType = {}


---@class ESeekFlyPointHorizontalAngleType
---@field TargetView number @目标视野
---@field TargetToSelf number @目标到自己的方位
---@field BornLocationView number @自己到出生点方位
ESeekFlyPointHorizontalAngleType = {}


---@class UBTTask_SeekFlyPoint: UBTTaskNode
---@field BBKeyTargetEnemy any
---@field BBKeyFoundFlyPoint any
---@field ChooseFlyPointCenterLocType ESeekFlyPointCenterLocType
---@field ChooseFlyPointHorizontalRadiusRange FVector2D
---@field ChooseFlyPointHeightRange FVector2D
---@field HorizontalAngleType ESeekFlyPointHorizontalAngleType
---@field ChooseFlyPointAngleRange FVector2D
---@field AcceptableMinMoveDistance number
---@field AcceptableMinVerticalAngle number
---@field MaxSearchTimes number
---@field bDoNavmeshProjectTest boolean @目标点是否需要在navmesh上
---@field FilterClass UNavigationQueryFilter @"None" will result in default filter being used
---@field bFirstInChooseAsBornLocation boolean
---@field FlyToLastPointWhenFailed boolean
local UBTTask_SeekFlyPoint = {}
