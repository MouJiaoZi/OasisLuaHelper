---@meta

---Circle Move Moves the AI pawn to around a circle
---@class UBTTask_CircleMove: UBTTaskNode
---@field InCircleTargetBBKey any
---@field InCircleCenterRelativeOffsetToTarget FVector
---@field bUseOwnerZForCircleCenter boolean
---@field InCircleFinishMinAngle number
---@field InCircleFinishMaxAngle number
---@field InCircleTimes number
---@field bCircleClockWise boolean
---@field bDrawDebug boolean
---@field DrawDebugLineTime number
local UBTTask_CircleMove = {}
