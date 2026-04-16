---@meta

---@class UUSTExtraAirJumpComponent: UActorComponent
---@field bEnableJumpFunction boolean @配置 *********************
---@field bCanJumpOnGround boolean
---@field bCanJumpInWater boolean
---@field JumpTriggerProtectTime number
---@field JumpUpVel number
---@field MaxEnergy number
---@field EachJumpCostEnergy number
---@field EnergyRecoveryTimeInterval number
---@field EnergyRecoveryPerValue number
---@field LowLevelEnergyThreshold number
---@field bJumpNeedCheckFuel boolean
---@field bCanMoveInAirAfterJump boolean
---@field bUseImpulseMode boolean
---@field bIsRecoverUpVel boolean
---@field bEnableHorizonImpulse boolean
---@field bIsRecoverHorizonVel boolean
---@field HorizonJumpVel number
---@field HorizonJumpVelLimit number
---@field CurEnergy number @运行时变量 *********************
---@field bHasUseJumpSkill boolean
---@field bCurFrameUseJumpSkill boolean
---@field LastJumpTime number
---@field ServerCDTime number
local UUSTExtraAirJumpComponent = {}

function UUSTExtraAirJumpComponent:ReqServerJump() end

function UUSTExtraAirJumpComponent:TryDoJump() end

---@param HorizonSpeed FVector2D
function UUSTExtraAirJumpComponent:RspJump(HorizonSpeed) end

---@param HorizonSpeed FVector2D
function UUSTExtraAirJumpComponent:DoJumpInternal(HorizonSpeed) end

function UUSTExtraAirJumpComponent:OnAfterJump() end

---@return boolean
function UUSTExtraAirJumpComponent:CanTriggerJump() end
