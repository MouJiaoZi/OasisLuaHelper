---@meta

---滑雪板动画蓝图
---@class USimulatedSlidingAnimInstance: USTVehicleAnimInstance
---@field C_ForwardSpeed number
---@field C_SnowBoardState ESnowBoardState
---@field C_HandleBrake boolean
---@field PlayingBrakeMontage boolean
---@field bIsSkiJumping boolean
---@field bIsSkiLowJumping boolean
---@field bIsSkiFalling boolean
---@field bIsSkiLanding boolean
---@field bIsSkiAirStunt boolean
---@field bIsSkiPlayingLandAnimEnd boolean
---@field bIsSkiPlayingJumpAnimEnd boolean
---@field SkiBlendSpaceXInput number
---@field SkiBlendSpaceYInput number
---@field SkiPlayJumpAnimRate number
---@field SkiPlayJumpAnimRateMin number
---@field SkiPlayJumpAnimRateMax number
---@field SkiJumpStationaryRiseRate number
---@field SkiDownTurnLRRate number
---@field SkiDownTurnRLRate number
---@field SkiDownTurnFDRate number
---@field bCanPlayHandbrakeMontage boolean
local USimulatedSlidingAnimInstance = {}

function USimulatedSlidingAnimInstance:PlayLoopBrakeMontage() end

function USimulatedSlidingAnimInstance:PlayEndBrakeMontage() end
