---@meta

---@class FAttachToRangedActorData
FAttachToRangedActorData = {}


---@class UUAESkillAction_AttachToRangedActor: UUAESkillAction
---@field Range number
---@field ActorClass AActor
---@field DebugActorClass AActor
---@field AttachRotationOffset FRotator
---@field AttachLocationOffset FVector
---@field AttachSocket string
---@field DetachLocationPredictRad number
---@field DetachTraceStartingHeightOffset number
---@field DetachLandHeightOffset number
---@field DetachTraceDepth number
---@field bDoTraceWhenDetach boolean
local UUAESkillAction_AttachToRangedActor = {}
