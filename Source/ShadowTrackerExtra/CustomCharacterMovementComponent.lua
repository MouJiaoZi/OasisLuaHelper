---@meta

---@class UCustomCharacterMovementComponent: USTAntiCheatMovementComponent
---@field bUseDSPriorityMovement boolean
---@field AllowablePositionError number
---@field AdjustDistanceWhenStepUpFailed number
---@field bForbidJumpInServer boolean
---@field CheckPassWallShapeShrinkScale number
---@field RadiusScaleWhenCheckPassWall number
---@field mb_UseVehiclePushUp boolean @<是否让载具将人推到车顶
---@field AIMovementSimulatePredictTime number
---@field AIMoveCurveRootMotionCls UAICustomMovementCurveRootMotion
---@field SimGravityDisabledCheckTimeGap number @Pawn检测到重力禁用时的检查间隔
local UCustomCharacterMovementComponent = {}

---@param bFromPersistentPool boolean
function UCustomCharacterMovementComponent:OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function UCustomCharacterMovementComponent:OnRecycled(bToPersistentPool) end

function UCustomCharacterMovementComponent:OnPreReconnectOnServer() end

function UCustomCharacterMovementComponent:OnRecoverOnServer() end

---@return string
function UCustomCharacterMovementComponent:GetToString() end
