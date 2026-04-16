---@meta

---@class ETurnToAxis
---@field X number
---@field X_Reverse number
---@field Y number
---@field Y_Reverse number
ETurnToAxis = {}


---@class FTurnToActorData
FTurnToActorData = {}


---@class UUAESkillAction_TurnToActor: UUAESkillAction
---@field actorTemplate AActor
---@field offset FVector
---@field rad number
---@field bFacingTargetAxis boolean
---@field TargetAxis ETurnToAxis
---@field UseRotation boolean
---@field TurnToRotation FRotator
---@field UseEaseFunction boolean
---@field Tolerance number
---@field OnFinishEvent string
---@field UseCtrlRotation boolean
---@field Speed number
local UUAESkillAction_TurnToActor = {}
