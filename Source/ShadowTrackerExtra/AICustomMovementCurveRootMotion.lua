---@meta

---@class UAICustomMovementCurveRootMotion: UObject
---@field AssetConfigs ULuaMapHelper<string, FCurveRootMotionAssetConfig>
---@field PreSetMovementMode EMovementMode
---@field MoveRequest FCurveRootMotionMoveRequest
local UAICustomMovementCurveRootMotion = {}

---@param deltaTime number
---@param Iterations number
function UAICustomMovementCurveRootMotion:PhysCustom(deltaTime, Iterations) end
