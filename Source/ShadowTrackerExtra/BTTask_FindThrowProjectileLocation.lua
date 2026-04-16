---@meta

---查找扔投掷物落点
---@class UBTTask_FindThrowProjectileLocation: UBTTaskNode
---@field InTargetBlackboardKey FBlackboardKeySelector
---@field InProjectileID number
---@field InThrowMode EThrowGrenadeMode
---@field InMinRandomRadius number
---@field InMaxRandomRadius number
---@field InMaxRandIterTimes number
---@field InTraceFloorChannel ECollisionChannel
---@field InTargetFloorHeightOffset number
---@field InValidTargetLocZOffset number
---@field OutThrowTargetLoc FBlackboardKeySelector
---@field OutThrowRotation FBlackboardKeySelector
local UBTTask_FindThrowProjectileLocation = {}
