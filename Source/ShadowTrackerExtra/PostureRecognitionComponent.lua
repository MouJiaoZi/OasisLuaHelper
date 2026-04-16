---@meta

---@class ObjectMovingType
---@field OMT_Uniform number
---@field OMT_Acceleration number
---@field OMT_Deceleration number
ObjectMovingType = {}


---@class UPostureRecognitionComponent: USceneComponent
---@field OnAccelerateMoveUpdate FAccelerateMoveDelegate
---@field OnDecelerateMoveUpdate FDccelerateMoveDelegate
---@field OnUniformMoveUpdate FUniformMoveDelegate
---@field OnChangeMovingState FChangeMovingStateDelegate
---@field MinAccelerationThreshold number
---@field MinDccelerationThreshold number
---@field CurMoveSpeed FVector
---@field CurMoveAcc FVector
---@field CurMovingType ObjectMovingType
local UPostureRecognitionComponent = {}
