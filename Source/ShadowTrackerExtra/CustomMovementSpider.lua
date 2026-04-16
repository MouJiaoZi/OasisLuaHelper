---@meta

---@class UCustomMovementSpider: UCustomMovementBase
---@field MaxStepHeight number
---@field FindWallHeightShrink number
---@field FindWallDist number
---@field WalkableWallMinAngle number
---@field WalkableWallMaxAngle number
---@field bStopWhenMoveDown boolean
---@field WalkableWallMinZ number
---@field WalkableWallMaxZ number
local UCustomMovementSpider = {}

---@param deltaTime number
---@param Iterations number
function UCustomMovementSpider:PhysCustom(deltaTime, Iterations) end

---@param CapsuleLocation FVector
---@param OutFloorResult FFindFloorResult
function UCustomMovementSpider:FindWall(CapsuleLocation, OutFloorResult) end

---@param InCharacterOwner ASTExtraCharacter
---@return boolean
function UCustomMovementSpider:K2_OnEnter(InCharacterOwner) end

---@param InCharacterOwner ASTExtraCharacter
---@return boolean
function UCustomMovementSpider:K2_OnLeave(InCharacterOwner) end
