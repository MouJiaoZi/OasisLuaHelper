---@meta

---@class EHorseReinIKType
---@field HorseReinIKType_LeftHand number
---@field HorseReinIKType_RightHand number
---@field HorseReinIKType_LeftRightHand number
---@field HorseReinIKType_None number
EHorseReinIKType = {}


---@class FOnBrakePerformDelegate : ULuaMulticastDelegate
FOnBrakePerformDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BrakeVelocity: number, bIsStopPlay: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBrakePerformDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BrakeVelocity number
---@param bIsStopPlay boolean
function FOnBrakePerformDelegate:Broadcast(BrakeVelocity, bIsStopPlay) end


---四足载具动画蓝图
---@class USTMyriapodVehicleAnimInstance: USTVehicleAnimInstance
---@field Speed number
---@field SpeedXY number
---@field VelocityXY number
---@field VelocityZ number
---@field AngularSpeed number
---@field AngularSpeedLerpFactor number
---@field MoveRight number
---@field MoveForward number
---@field bUpdateSpeedUseVelocity boolean
---@field bJumpAllow boolean
---@field bSeriousInjury boolean
---@field bIsBrakingPlay boolean
---@field bIsInAir boolean
---@field bIsSwimming boolean
---@field bIsFlying boolean
---@field MoveMode EMovementMode
---@field Velocity FVector
---@field bVeloctiyNearZero boolean
---@field bVelocityZEQFalling boolean
---@field bIsLowSpeed boolean
---@field bIsLowSpeedXY boolean
---@field bIsMoveRightZero boolean
---@field bIsSpeedAndMoveRightNoZero boolean
---@field bIsMovementToJumpFalling boolean
---@field bMovementToTurnStart boolean
---@field bMovementToTurn boolean
---@field bTurnToTurnEnd boolean
---@field bMovementToTurnStartXY boolean
---@field bMovementToTurnXY boolean
---@field bTurnToTurnEndXY boolean
---@field bEnableIK boolean
---@field bEnableSlope boolean
---@field bResetSlopeAdaptingOnSkipCal boolean
---@field bEnableUpdateChildren boolean
---@field bAvatarEnableIK boolean
---@field bIsJumping boolean
---@field MoveRight_InAir number
---@field MoveRight_InAir_ScaleValue number
---@field MoveRight_InAir_Lerp number
---@field MoveRight_Landing_Lerp number
---@field MoveRight_InAir_Scale number
---@field HorseAvatarType EHorseAvatarType
---@field nJumpCount number
---@field bGlide boolean
---@field bIdle boolean
---@field fNoInputTime number
---@field fNoInputEnterIdleTime number
---@field bEnableSlopeWithFallingSpeedZ boolean
---@field fEnableSlopeFallingSpeedZ number
---@field DebugStrFonsScale number
---@field DebugStrTextLoc FVector
---@field bEnableReinsIK boolean
---@field bDisableLowLevelDeviceUseReinsIK boolean
---@field EnableReinsIKDeviceLevelThreshold number
---@field LeftReinAttachBoneName string
---@field RightReinAttachBoneName string
---@field LeftReinIKOffset FVector
---@field RightReinIKOffset FVector
---@field EnableReinsIKSpeedThreshold number
---@field EnableFlyingReinsIKSpeedThreshold number
---@field EnableFlyingReinsIKVerticalSpeedThreshold number
---@field LeftItemToHandBoneOffset FVector
---@field bUseItemLeftBoneLocation boolean
---@field DisableReinsIKPawnState ULuaArrayHelper<EPawnState>
---@field bNeedReinsIK boolean
---@field bForceUseDriverAnim boolean
---@field CurrentReinIKType EHorseReinIKType
---@field LeftReinAttachLocation FVector
---@field RightReinAttachLocation FVector
---@field bDoCacheAnimList boolean
---@field bCJ36CheckVelocityMagnitudeUsingSpeed boolean
---@field TurnAnimSpeedThreshold number
---@field TurnAnimAngularSpeedThreshold number
---@field OnBrakePerformDelegate FOnBrakePerformDelegate
---@field VehAnimList FMyriapodVehAnimList
---@field bDriverUseWeapon boolean
local USTMyriapodVehicleAnimInstance = {}

function USTMyriapodVehicleAnimInstance:HandleMyriapodVehicleBrake() end

---@param BrakeVelocity number
---@param bIsStopPlay boolean
function USTMyriapodVehicleAnimInstance:BroadcastBrakePerform(BrakeVelocity, bIsStopPlay) end
