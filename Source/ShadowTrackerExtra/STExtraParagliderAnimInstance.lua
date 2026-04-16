---@meta

---@class USTExtraParagliderAnimInstance: USTVehicleAnimInstance
---@field bIsJumping boolean
---@field bIsIdle boolean
---@field bIsFalling boolean
---@field bIsLanding boolean
---@field MaxLandingTime number
---@field CurLandingTime number
---@field bIsFlying boolean
---@field bIsPlayingLandAnimEnd boolean
---@field bIsPlayingJumpAnimEnd boolean
---@field UseRunLandAnimForwardSpeed number
---@field VehicleState EParagliderCharacterType
---@field C_ForwardSpeed number
---@field CurLinearVel FVector
---@field DontPlayLandAnimVel number
---@field bMoveBack boolean
---@field bMoveForward boolean
---@field bIdle boolean
---@field bRunJumpState boolean
---@field bFlyJumpState boolean
---@field bVerticalJumpState boolean
---@field ControlInput FVector
---@field ControlInputScale number
---@field LocalMoveState EParagliderCharacterType
---@field AnimMoveSpeedParam number
---@field InAnimParamMoveSpeed FVector2D
---@field OutAnimParamMoveSpeed FVector2D
---@field bOnGround boolean
---@field bHaveInputOnGround boolean
---@field bLandingState boolean
---@field bDecelerateState boolean
---@field bEnableParagliderState boolean
local USTExtraParagliderAnimInstance = {}

---@param StateMachineName string
---@return string
function USTExtraParagliderAnimInstance:GetParagliderStateName(StateMachineName) end
