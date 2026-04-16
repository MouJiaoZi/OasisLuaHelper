---@meta

---@class FBTTaskMoveAroundMemory
FBTTaskMoveAroundMemory = {}


---@class UBTTask_MoveAround: UBTTask_BlackboardBase
---@field MoveRadius number
---@field RotationSpeed number
---@field MoveType EAIMovePose
---@field WaitTimeRange FVector2D
---@field ExecutionDuration FVector2D
---@field AcceptRadius number
---@field bIncludeNeighborVerts boolean
---@field bSetFocus boolean
---@field bCanMoveWhenNoTarget boolean
---@field DirectionAngleRange FVector2D
---@field MoveTargetDistRange FVector2D
---@field EnemyBlackboardKey any @blackboard key selector
local UBTTask_MoveAround = {}
