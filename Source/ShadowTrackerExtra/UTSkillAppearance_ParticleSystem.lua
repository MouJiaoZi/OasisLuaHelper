---@meta

---@class FUTSkillAppearance_ParticleSystem_Item
---@field bOverrideByAvatar boolean
---@field bLoop boolean
---@field Scale number
---@field SocketName string
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field LocationOffsetTPP FVector
---@field RotationOffsetTPP FRotator
---@field ScaleTPP number
---@field HurtRotationSocketName string
---@field AutoDispearTime number
---@field bAttachToPawn boolean
FUTSkillAppearance_ParticleSystem_Item = {}


---@class FParticleSystemHurtAppearanceCacheData
FParticleSystemHurtAppearanceCacheData = {}


---@class FSAParticleSystemInstanceStruct
FSAParticleSystemInstanceStruct = {}


---粒子效果
---@class UUTSkillAppearance_ParticleSystem: UUTSkillAction
---@field Item FUTSkillAppearance_ParticleSystem_Item
local UUTSkillAppearance_ParticleSystem = {}

---@param SkillManagerComponent UUTSkillManagerComponent
function UUTSkillAppearance_ParticleSystem:RealDoHurtAppearance(SkillManagerComponent) end

---@param PSC UParticleSystemComponent
function UUTSkillAppearance_ParticleSystem:OnAppearanceParticleSystemFinished(PSC) end
