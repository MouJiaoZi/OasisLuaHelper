---@meta

---@class FGameplayTask_LaunchMove_SpeedCurve
---@field DistanceThreshold number
FGameplayTask_LaunchMove_SpeedCurve = {}


---@class FGameplayTask_LaunchMove_Data
---@field bIsNotMoveable boolean
---@field bUseCustomDestLocation boolean
---@field CustomDestDir FVector
---@field CustomDestDistance number
---@field bUseGravity boolean
---@field GravityScale number
---@field bNotUseCurveSpeed boolean
---@field LaunchSpeed number
---@field LaunchSpeedCurves ULuaArrayHelper<FGameplayTask_LaunchMove_SpeedCurve>
---@field AcceptableRadius number
---@field bReachTargetStop boolean
---@field bReachRangeStop boolean
---@field bCalTargetDisContainZ boolean
---@field OverrideZOrder boolean
---@field OverrideZOrderRecoveredMovementMode EMovementMode
---@field bAddGroundMoveProtection boolean
---@field GroundMaxInclination number
---@field bSlowDownWhenStopLaunch boolean
---@field bDrawDebugLine boolean
---@field bAlongCharacterDir boolean
---@field bUndoForceSetMovementToFalling boolean
---@field bTriggerStringEventWhenStopLaunch boolean
---@field StringEventWhenStopLaunch string
FGameplayTask_LaunchMove_Data = {}


---@class FGameplayTaskLaunchMoveDelegate : ULuaSingleDelegate
FGameplayTaskLaunchMoveDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, OwnerCharacter: ASTExtraBaseCharacter, CustomString: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameplayTaskLaunchMoveDelegate:Bind(Callback, Obj) end

---执行委托
---@param OwnerCharacter ASTExtraBaseCharacter
---@param CustomString string
function FGameplayTaskLaunchMoveDelegate:Execute(OwnerCharacter, CustomString) end


---@class UGameplayTask_LaunchMove: UUAEGameplayTask
---@field LaunchMove_Data FGameplayTask_LaunchMove_Data
local UGameplayTask_LaunchMove = {}
