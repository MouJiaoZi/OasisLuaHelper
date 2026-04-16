---@meta

---@class FSALaunchMove
FSALaunchMove = {}


---@class FMoveSpeedCurve
---@field DistanceThreshold number
FMoveSpeedCurve = {}


---@class UUAESkillAction_LaunchMove: UUAESkillAction
---@field bUseNewLaunchFunc boolean
---@field bIsNotMoveable boolean
---@field bUseCustomDestLocation boolean
---@field CustomDestDir FVector
---@field CustomDestDistance number
---@field bUseGravity boolean
---@field GravityScale number
---@field bNotUseCurveSpeed boolean
---@field LaunchSpeed number
---@field LaunchSpeedCurves ULuaArrayHelper<FMoveSpeedCurve>
---@field AcceptableRadius number
---@field bReachTargetStop boolean
---@field bReachRangeStop boolean
---@field bTickUpdateTargetLocation boolean
---@field bCalTargetDisContainZ boolean
---@field OverrideZOrder boolean
---@field OverrideZOrderRecoveredMovementMode EMovementMode
---@field bAddGroundMoveProtection boolean
---@field GroundMaxInclination number
---@field bSlowDownWhenStopLaunch boolean
---@field SlowDownSpeed number
---@field bDrawDebugLine boolean
---@field bAlongCharacterDir boolean
---@field bUseBlackboardSpeedCurve boolean
---@field bUndoForceSetMovementToFalling boolean
---@field bTriggerStringEventWhenStopLaunch boolean
---@field StringEventWhenStopLaunch string
---@field NotEnterMoveFlyingWhenLaunch boolean
---@field EstimatedTimeKey any
---@field TargetLocationKey any
---@field LaunchMoveDistanceKey any
---@field SpeedCurveKey any
---@field SpeedZCurveKey any
---@field CustomMoveDirKey any
local UUAESkillAction_LaunchMove = {}

---@param finalVelocity FVector
---@param DeltaTime number
---@return boolean
function UUAESkillAction_LaunchMove:BP_PreUpdateLaunchVelocity(finalVelocity, DeltaTime) end

---@param bReachRange boolean
function UUAESkillAction_LaunchMove:BP_StopLaunch(bReachRange) end

---@param CharacterOwner ASTExtraBaseCharacter
---@param bXYOverride boolean
---@param bZOverride boolean
---@param bAutoRemove boolean
---@return FVector
function UUAESkillAction_LaunchMove:GetLaunchVelocityFunc(CharacterOwner, bXYOverride, bZOverride, bAutoRemove) end
