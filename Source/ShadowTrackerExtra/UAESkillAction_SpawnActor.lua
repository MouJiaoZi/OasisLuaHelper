---@meta

---@class FSkillAction_SpawnActorCreateData
---@field bUseSpawnActorClassKey boolean
---@field SpawnActorClassKey FUAEBlackboardKeySelector
---@field ActorTemplate AActor
---@field ActorTemplateSoftPtr AActor
---@field MaxSpawnNum number
---@field bLocalSpawn boolean
---@field bOnlyLocalController boolean
---@field bOnlySpectatorSpawn boolean
---@field bKeepActor boolean
---@field bKeepActorInSkillEnding boolean
---@field bCheckLifeSpan boolean
---@field CachedSpawnActorKey FUAEBlackboardKeySelector
---@field bCachedSpawnActorKeyReplicate boolean
---@field bUseSkillCasterAsOwner boolean
---@field bEnableAttach boolean
---@field bEnableMultiAttach boolean
---@field AttachActorKey FUAEBlackboardKeySelector
---@field AttachSocket string
---@field AttachSocketList ULuaArrayHelper<string>
---@field LocationRule EAttachmentRule
---@field RotationRule EAttachmentRule
---@field ScaleRule EAttachmentRule
---@field bWeldSimulatedBodies boolean
---@field OffsetLocationStand FVector
---@field OffsetLocationCrouch FVector
---@field OffsetLocationProne FVector
---@field OffsetLocationVehicle FVector
---@field OffsetRotation FRotator
---@field DuplicateTimes number
---@field bAllowChangePoseWillUpdating boolean
---@field bForbidPickFail boolean
---@field PromptID number
FSkillAction_SpawnActorCreateData = {}


---@class FSASpawnActorInstanceStruct
FSASpawnActorInstanceStruct = {}


---@class USTExtraBuffAction_SpawnActor: USTExtraBuffAction
---@field SpawnActorData FSkillAction_SpawnActorCreateData
local USTExtraBuffAction_SpawnActor = {}
