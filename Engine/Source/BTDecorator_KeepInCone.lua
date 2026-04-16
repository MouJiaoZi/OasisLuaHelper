---@meta

---Cooldown decorator node. A decorator node that bases its condition on whether the observed position is still inside a cone. The cone's direction is calculated when the node first becomes relevant.
---@class UBTDecorator_KeepInCone: UBTDecorator
---@field ConeHalfAngle number @max allowed time for execution of underlying node
---@field ConeOrigin FBlackboardKeySelector @blackboard key selector
---@field Observed FBlackboardKeySelector @blackboard key selector
---@field bUseSelfAsOrigin number
---@field bUseSelfAsObserved number
local UBTDecorator_KeepInCone = {}
