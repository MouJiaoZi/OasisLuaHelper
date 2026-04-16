---@meta

---@class FSAActorJumpInstanceStruct
FSAActorJumpInstanceStruct = {}


---怪物跳跃
---@class UUAESkillAction_ActorJump: UUAESkillAction
---@field Speed number
---@field bShouldFollowTarget boolean
---@field JumpStartOffsetZ number
---@field JumpHighThreshold number
---@field bShouldCheckOverlap boolean
---@field MinDistanceFromTarget number
---@field OverrideGravityZScale number @Optional gravity override.  0 means "do not override"
---@field JumpSpeedRange FVector2D
---@field JumpSpeedInterval number
---@field OffsetOfTargetDir number
---@field MaxPercentOffsetOfTargetDir number
local UUAESkillAction_ActorJump = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UUAESkillAction_ActorJump:HandleOnActorHit(SelfActor, OtherActor, NormalImpulse, Hit) end

---@param InHitResult FHitResult
function UUAESkillAction_ActorJump:OnActorLanded(InHitResult) end
