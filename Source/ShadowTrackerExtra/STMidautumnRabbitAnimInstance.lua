---@meta

---@class USTMidautumnRabbitAnimInstance: USTAnimalAnimInstance
---@field StandbyAnimTimeInterval number
---@field StandbyAnimPawnStateExclusion ULuaArrayHelper<EPawnState>
---@field bIsRabbitMoving boolean
---@field RabbitForwardSpeed number
---@field RabbitRightwardSpeed number
---@field bIsRabbitJump boolean
---@field bRabbitEnterJump boolean
---@field bIsRabbitJumpAnimEnd boolean
---@field bIsRabbitFalling boolean
---@field bIsRabbitLand boolean
---@field bIsRabbitLandAnimEnd boolean
---@field bIsChaGrabWeapon boolean
local USTMidautumnRabbitAnimInstance = {}

---@return boolean
function USTMidautumnRabbitAnimInstance:CanPlayStandbyAnim() end

function USTMidautumnRabbitAnimInstance:TryPlayJumpMontage() end

function USTMidautumnRabbitAnimInstance:TryPlayStandbyAnim() end

---@param DeltaSeconds number
function USTMidautumnRabbitAnimInstance:UpdateStandbyState(DeltaSeconds) end

---@param STCharacter ASTExtraPlayerCharacter
function USTMidautumnRabbitAnimInstance:InterruptCurAnim(STCharacter) end

---@param DeltaSeconds number
function USTMidautumnRabbitAnimInstance:RabbitStateCheck(DeltaSeconds) end

function USTMidautumnRabbitAnimInstance:OnRabbitJump() end
