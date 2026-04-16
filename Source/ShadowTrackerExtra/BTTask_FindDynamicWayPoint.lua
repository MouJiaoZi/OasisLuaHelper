---@meta

---@class FBTTask_FindDynamicWayPoint_Memory
FBTTask_FindDynamicWayPoint_Memory = {}


---@class UBTTask_FindDynamicWayPoint: UBTTaskNode
---@field bDebugDraw boolean
---@field InTargetCharacter FBlackboardKeySelector
---@field InAISearchRadius number
---@field InPlayerSearchRadius number
---@field InNearPointThreshold number
---@field InSameFloorThreshold number
---@field OutMoveLocationKey FBlackboardKeySelector
---@field WayPointNodeMap ULuaMapHelper<number, AAIDynamicWayPointActor>
local UBTTask_FindDynamicWayPoint = {}
