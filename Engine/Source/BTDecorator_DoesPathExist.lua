---@meta

---@class EPathExistanceQueryType
---@field NavmeshRaycast2D number
---@field HierarchicalQuery number
---@field RegularPathFinding number
EPathExistanceQueryType = {}


---Cooldown decorator node. A decorator node that bases its condition on whether a path exists between two points from the Blackboard.
---@class UBTDecorator_DoesPathExist: UBTDecorator
---@field BlackboardKeyA FBlackboardKeySelector @blackboard key selector
---@field BlackboardKeyB FBlackboardKeySelector @blackboard key selector
---@field bUseSelf number
---@field PathQueryType EPathExistanceQueryType
---@field FilterClass UNavigationQueryFilter @"None" will result in default filter being used
local UBTDecorator_DoesPathExist = {}
