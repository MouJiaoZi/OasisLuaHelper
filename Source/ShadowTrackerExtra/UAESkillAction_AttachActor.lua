---@meta

---@class FSkillAction_AttachActorCreateData
---@field ActorTemplate AActor
---@field AttachSocketName string
---@field RelativeLocation FVector
---@field RelativeRotation FRotator
---@field DestroyAfterSkill boolean
---@field DestroyAfterPhase boolean
---@field bAllowedAttachFPPMesh boolean
FSkillAction_AttachActorCreateData = {}


---@class FSAAttachedActorInstanceStruct
FSAAttachedActorInstanceStruct = {}


---@class UUAESkillAction_AttachActor: UUAESkillAction
---@field AttachActorData FSkillAction_AttachActorCreateData
local UUAESkillAction_AttachActor = {}
