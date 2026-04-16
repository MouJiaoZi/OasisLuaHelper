---@meta

---@class EUGCMobilityType
---@field Any number
---@field StaticAndStationary number
---@field Moveable number
EUGCMobilityType = {}


---@class UBTTask_UGC_FindThrowProjectileLocRot: UBTTaskNode
---@field InTargetBlackboardKey FBlackboardKeySelector
---@field InProjectileID number
---@field bGetProjectileIDFromBlackboard boolean
---@field InProjectileIDBlackboardKey FBlackboardKeySelector
---@field InThrowMode EThrowGrenadeMode
---@field InMinRandomRadius number
---@field InMaxRandomRadius number
---@field InMaxRandIterTimes number
---@field InTraceFloorChannel ECollisionChannel
---@field InTargetFloorHeightOffset number
---@field InValidTargetLocZOffset number
---@field OutThrowTargetLoc FBlackboardKeySelector
---@field OutThrowRotation FBlackboardKeySelector
---@field TargetFloorMobilityType EUGCMobilityType
---@field bDebugDraw boolean
---@field DebugDrawPointTime number
local UBTTask_UGC_FindThrowProjectileLocRot = {}
