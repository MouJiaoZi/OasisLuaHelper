---@meta

---@class FUTSkillAppearance_AddParticle_Data
FUTSkillAppearance_AddParticle_Data = {}


---@class UUTSkillAppearance_AddParticle: USTExtraBuffAction
---@field HangMeshTagName string
---@field ParticleCompTagName string
---@field AttachSocketName string
---@field bAttachRootCompNoMesh boolean
---@field bAttachRootCapsuleBottom boolean
---@field bNormalActorCanUse boolean
---@field LocationPosition FVector
---@field LocationRotation FRotator
---@field LocationScale FVector
---@field IsAbsoluteRotation number
---@field FPPScale FVector
---@field FPPLocationPosition FVector
---@field bPhaseFinishRemove boolean
---@field bUndoRemove boolean
---@field bKeepComp boolean
---@field bAdjustScaleByCapsuleRadius boolean
---@field AdjustScaleBaseRadius number
---@field bAdjustScaleBySocketScale boolean
local UUTSkillAppearance_AddParticle = {}

function UUTSkillAppearance_AddParticle:UndoAction_Internal() end

function UUTSkillAppearance_AddParticle:Reset_Internal() end

---@param PSC UParticleSystemComponent
function UUTSkillAppearance_AddParticle:OnParticleSystemFinished(PSC) end
