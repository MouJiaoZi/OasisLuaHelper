---@meta

---@class UCustomMovementWalkOnWall: UCustomMovementBase
---@field MaxStepHeight number
---@field FindWallHeightShrink number
---@field FindWallDist number
---@field WalkableWallMinAngle number
---@field WalkableWallMaxAngle number
---@field bCanChangeWall boolean
---@field ChangeWallDist number
---@field bStopWhenMoveDown boolean
---@field bUseWhiteListWallTag boolean
---@field bLimitInWalkableWall boolean
---@field WhiteListComponentTag string
---@field WalkableWallMinZ number
---@field WalkableWallMaxZ number
local UCustomMovementWalkOnWall = {}

---@param deltaTime number
---@param Iterations number
function UCustomMovementWalkOnWall:PhysCustom(deltaTime, Iterations) end

---@param CapsuleLocation FVector
---@param OutFloorResult FFindFloorResult
function UCustomMovementWalkOnWall:FindWall(CapsuleLocation, OutFloorResult) end
