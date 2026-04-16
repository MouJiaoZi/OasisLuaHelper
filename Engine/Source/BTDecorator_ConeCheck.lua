---@meta

---Cone check decorator node. A decorator node that bases its condition on a cone check, using Blackboard entries to form the parameters of the check.
---@class UBTDecorator_ConeCheck: UBTDecorator
---@field ConeHalfAngle number @Angle between cone direction and code cone edge, or a half of the total cone angle
---@field ConeOrigin FBlackboardKeySelector @blackboard key selector
---@field ConeDirection FBlackboardKeySelector @"None" means "use ConeOrigin's direction"
---@field Observed FBlackboardKeySelector @blackboard key selector
local UBTDecorator_ConeCheck = {}
