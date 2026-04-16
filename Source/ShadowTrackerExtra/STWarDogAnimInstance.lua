---@meta

---@class EWarDogLocomotionType
---@field Normal number
---@field Combat_Stand number
---@field Combat_Sit number
---@field Combat_Prone number
---@field Swim number
EWarDogLocomotionType = {}


---@class EWarDogLookAtTargetType
---@field None number
---@field Player number
---@field AlertLocation number
EWarDogLookAtTargetType = {}


---@class FWarDogMoveTypeAnimConfig
---@field AnimSpeed number
---@field MinSpeed number
---@field MaxSpeed number
FWarDogMoveTypeAnimConfig = {}


---@class FWarDogVehicleSingleSeatAnimConfig
FWarDogVehicleSingleSeatAnimConfig = {}


---@class FWarDogVehicleAnimConfig
---@field SeatAnimArr ULuaArrayHelper<FWarDogVehicleSingleSeatAnimConfig>
FWarDogVehicleAnimConfig = {}


---@class USTWarDogAnimInstance: USTExtraMonsterAnimInstance
---@field bIsInAlertState boolean
---@field bIsInFightState boolean
---@field bIsForcePawnState boolean
---@field LocomotionType EWarDogLocomotionType
---@field LastLocomotionType EWarDogLocomotionType
---@field VehicleState EWarDogVehicleState
---@field bInLongIdle boolean
---@field bIsFalling boolean
---@field bIsClimbing boolean
---@field bIsClimbingLast boolean
---@field bIsClimbingLast2 boolean
---@field bStrongInteraction boolean
---@field VerticalSpeed number
---@field HorizontalSpeed number
---@field bHasOwningPlayer boolean
---@field bIsInTimerLookAtMode boolean
---@field LookAtTimer number
---@field LookAtTarget EWarDogLookAtTargetType
---@field VehicleAnimMap ULuaMapHelper<ESTExtraVehicleType, FWarDogVehicleAnimConfig>
---@field CurVehicleAnim FWarDogVehicleSingleSeatAnimConfig
---@field CurLookAtAOBlendSpeed number
---@field LookAtPlayerBlendSpeed number
---@field BarkingLookAtBlendSpeed number
---@field LookAtTimeLen number
---@field NotLookAtTimeLen number
---@field MoveType EAIFollowSpeedType
---@field MoveTypeAnimConfig ULuaMapHelper<EAIFollowSpeedType, FWarDogMoveTypeAnimConfig>
---@field SwimAnimSpeedConfig FWarDogMoveTypeAnimConfig
---@field ProneAnimSpeedConfig FWarDogMoveTypeAnimConfig
---@field MoveAnimPlayRate number
---@field LastFallVerticalSpeed number
---@field MoveLeanDeltaYawScale number
---@field MoveLeanReduceScale number
---@field MoveLeanDeltaYaw number
---@field ShakeTailReChooseAnimTime number
---@field ShakeTailInterruptBlendoutTime number
---@field ShakeTailAnimMontages ULuaArrayHelper<UAnimMontage>
---@field InterruptAnimMontagesOnMoveOrDefaultGroup ULuaArrayHelper<UAnimMontage>
local USTWarDogAnimInstance = {}

---@return boolean
function USTWarDogAnimInstance:IsInAlertState() end

---@return boolean
function USTWarDogAnimInstance:IsInFightState() end
