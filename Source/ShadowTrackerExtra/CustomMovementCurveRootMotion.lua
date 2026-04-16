---@meta

---@class FCurveRootMotionAssetConfig
---@field PlayScale number
---@field bMoveAlongFloor boolean
---@field MoveModeOnExit EMovementMode
---@field bShouldSkipReplicateMovement boolean
---@field MoveModeStartRole ECustomMoveModeStartRole
---@field bStopMontageOnExit boolean
---@field bUseAnimRotatorDir boolean
---@field bIgnoreZAxisWarping boolean
FCurveRootMotionAssetConfig = {}


---@class UCustomMovementCurveRootMotion: UCustomMovementBase
---@field AssetConfigs ULuaMapHelper<string, FCurveRootMotionAssetConfig>
---@field MoveRequest FCurveRootMotionMoveRequest
local UCustomMovementCurveRootMotion = {}

---@param deltaTime number
---@param Iterations number
function UCustomMovementCurveRootMotion:PhysCustom(deltaTime, Iterations) end
