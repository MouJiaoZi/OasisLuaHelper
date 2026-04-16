---@meta

---@class ESkillActionParticleParamType
---@field Float number
---@field Vector number
ESkillActionParticleParamType = {}


---@class FCreateParticleOnTheGround
FCreateParticleOnTheGround = {}


---@class FParticleParamSetting
---@field ParamType ESkillActionParticleParamType
---@field FloatParam number
---@field VectorParam FVector
---@field ParameterName string
FParticleParamSetting = {}


---粒子效果
---@class UUTSkillAppearance_CreateParticleOnTheGround: UUTSkillAction
---@field bOffsetRelativeOwner boolean
---@field OffsetLoc FVector
---@field RelativeScale FVector
---@field bUseOwnerRotation boolean
---@field NeedAdjustRelativeRot boolean
---@field RelativeRot FRotator
---@field NeedAttachToGround boolean
---@field ParticleParams ULuaArrayHelper<FParticleParamSetting>
---@field bUseTargetPicker boolean
---@field bUseBBLocTargetPicker boolean
---@field bAdaptTargetOffset boolean
---@field bUseRelativeOffset boolean
---@field bUseBlackBoardTraceStart boolean
---@field TraceStartKey FUAEBlackboardKeySelector
---@field TraceStartOffset FVector
---@field TranceEndOffsetZ number
---@field TraceExtent FVector
---@field TraceChannel ECollisionChannel
---@field LifeTime number
---@field bUseBlackBoardGetLifeTime boolean
---@field LifeTimeKey FUAEBlackboardKeySelector
---@field bAutoDestroy boolean
---@field bDestroyParticleOnUndoAction boolean
---@field bDestroyParticleOnResetAction boolean
---@field bOnlySpawnOnAutonomousClient boolean
---@field bUseObjectTypeSweep boolean
local UUTSkillAppearance_CreateParticleOnTheGround = {}
