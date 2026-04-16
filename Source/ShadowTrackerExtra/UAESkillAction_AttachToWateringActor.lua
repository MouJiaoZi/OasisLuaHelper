---@meta

---@class FAttachToWateringActorData
FAttachToWateringActorData = {}


---@class UUAESkillAction_AttachToWateringActor: UUAESkillAction
---@field DebugActorClass AActor
---@field bUseActorAttachOffset boolean
---@field AttachRotationOffset FRotator
---@field AttachLocationOffset FVector
---@field bKickFromNearestLocation boolean
---@field AttachSocket string
---@field DetachLocationPredictRad number
---@field DetachTraceStartingHeightOffset number
---@field DetachLandHeightOffset number
---@field DetachTraceDepth number
---@field bDoTraceWhenDetach boolean
---@field MinRotator FRotator
---@field MaxRotator FRotator
---@field bUseWateringActorRotatorLimit boolean
---@field ControlRotationYawRelativeToAttachActorCompTag string
---@field bResetCamera boolean
---@field bUseWateringActorRotator boolean
---@field bLimitRotator boolean
---@field bLockSetYawLimit boolean
---@field bDrawDebugLines boolean
---@field debugDuration number
---@field sphererad number
---@field OverrideLocation FVector
---@field bDebugOverrideLocation boolean
---@field bUseRelativeOverrideLocation boolean
---@field bUseDettachPosList boolean
---@field DettachPosList ULuaArrayHelper<FVector>
---@field DettachTestCapsuleHeight number
---@field DettachTestCapsuleRadius number
---@field bForceFPP boolean
---@field bUnDoSkipSimulateClientChangeCameraMode boolean
---@field bForceSwitchCameraMode boolean
---@field DisableGunValidation boolean
---@field bDetachWithNoCheck boolean
---@field ForceUndo boolean
---@field bDSResetFPP boolean
---@field UseAttachPawnRotationYawForCamera boolean
---@field AttachToWateringActorViewPitchLimit string
---@field AttachToWateringActorViewYawLimit string
---@field AttachToWateringActorViewRollLimit string
local UUAESkillAction_AttachToWateringActor = {}
