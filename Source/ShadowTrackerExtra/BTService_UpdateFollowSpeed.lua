---@meta

---更新军犬移动速度
---@class UBTService_UpdateFollowSpeed: UBTService
---@field InMoveTargetActorKey FBlackboardKeySelector
---@field InMoveTargetLocationKey FBlackboardKeySelector
---@field bUseFollowConfig boolean
---@field MoveSpeedConfig ULuaMapHelper<number, EAIFollowSpeedType>
---@field UpdateSpeedInterval number
---@field SpeedChangePerSecond number
---@field SpeedError number
---@field bLog boolean
---@field bScreenDebug boolean
local UBTService_UpdateFollowSpeed = {}
