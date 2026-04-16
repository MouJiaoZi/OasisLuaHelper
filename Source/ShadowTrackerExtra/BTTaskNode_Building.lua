---@meta

---@class EBuildingPositionType
---@field BPT_NONE number
---@field BPT_NEAR number
---@field BPT_FAR number
---@field BPT_MAX number
EBuildingPositionType = {}


---@class UBTTaskNode_Building: UBTTaskNode
---@field BuildID number
---@field MaxStraightLineDistanceRate number
---@field MaxCanBuidingHeight number
---@field bIgnoreBuildActorNum boolean
---@field bEnableInWater boolean
---@field bFreeBuild boolean
---@field InTargetBlackboardKey any
---@field BuildingPositionType EBuildingPositionType
local UBTTaskNode_Building = {}
