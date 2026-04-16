---@meta

---@class EPEBuffTriggerType
---@field PEBuffTriggerType_Begin number @开始
---@field PEBuffTriggerType_End number @结束
---@field PEBuffTriggerType_Interval number @间隔
---@field PEBuffTriggerType_Stack number @堆叠
---@field PEBuffTriggerType_Lua number @Lua
EPEBuffTriggerType = {}


---@class EPEBuffTriggerTypeDisplay
---@field PEBuffTriggerTypeDisplay_Begin number @开始
---@field PEBuffTriggerTypeDisplay_End number @结束
---@field PEBuffTriggerTypeDisplay_Interval number @间隔
---@field PEBuffTriggerTypeDisplay_Stack number @堆叠
EPEBuffTriggerTypeDisplay = {}


---@class EPEBuffEffectTriggerConditionType
---@field PEBuffEffectTriggerConditionType_None number @无条件
---@field PEBuffEffectTriggerConditionType_Layers number @根据层数触发
EPEBuffEffectTriggerConditionType = {}


---@class EPEBuffEffectTriggerConditionOptType
---@field PEBuffEffectTriggerConditionOptType_Equal number @=
---@field PEBuffEffectTriggerConditionOptType_Greater number @>
---@field PEBuffEffectTriggerConditionOptType_Less number @<
EPEBuffEffectTriggerConditionOptType = {}


---@class EPEBuffEffectNetworkMode
---@field PEBuffEffectNetworkMode_AuthorityOnly number
---@field PEBuffEffectNetworkMode_ClientOnly number
---@field PEBuffEffectNetworkMode_Both number
EPEBuffEffectNetworkMode = {}


---@class EPEBuffAttrModifyType
---@field PEBuffAttrModifyType_Pawn number @角色属性
---@field PEBuffAttrModifyType_Weapon number @武器属性
EPEBuffAttrModifyType = {}


---@class EPEBuffEffectStackType
---@field PEBuffEffectStackType_Refresh number @叠层时重新创建
---@field PEBuffEffectStackType_Add number @叠层时叠加多个
EPEBuffEffectStackType = {}


---@class EPEBuffEffectStopType
---@field PEBuffEffectStopType_None number @不自动停止
---@field PEBuffEffectStopType_Stack number @层数减少时停止
---@field PEBuffEffectStopType_Unapply number @Buff结束时停止
EPEBuffEffectStopType = {}


---@class EPEBuffRemoveType
---@field PEBuffRemoveType_SpecificClass number @指定类型
---@field PEBuffRemoveType_TagAny number @拥有任意Tag
EPEBuffRemoveType = {}


---Buff的UI信息
---@class FPEBuffUIInfo
---@field BuffName string @Buff的名字
---@field OverwriteBuffName string @覆盖的Buff名字，该字段不为空时UI优先显示覆盖的Buff名字
---@field BuffDetail string @Buff的描述
---@field OverwriteBuffDetail string @覆盖的Buff描述，该字段不为空时UI优先显示覆盖的Buff描述
---@field BuffIcon FSoftObjectPath @Buff的图标
---@field OverwriteBuffIcon FSoftObjectPath @覆盖的Buff图标，该字段不为空时UI优先显示覆盖的Buff图标
---@field bShowUI boolean @Buff是否显示表示当前状态的图标在UI上
FPEBuffUIInfo = {}


---@class FPEBuffEffectTemplate
FPEBuffEffectTemplate = {}


---@class FPEBuffTemplatePtr
FPEBuffTemplatePtr = {}


---@class FPEBuffDamageConfig
---@field DamageTypeConfig FRestrictedDamageTypeData
---@field DamageValueWrapper FGameMagnitudeWrapper
---@field AttrFromCauserOrTarget EPEMagnitudeWrapperAttrSourceType
---@field DamageTypeClass USTExtraDamageType_PersistEffect
---@field SourceItemID number
FPEBuffDamageConfig = {}


---@class FPEBuffRecoverConfig
---@field RecoverValueWrapper FGameMagnitudeWrapper
---@field RecoverTags FGameplayTagContainer
FPEBuffRecoverConfig = {}


---@class FPEBuffAddConfig
---@field BuffClass UPersistEffectBuff
---@field StackNum FIntGetter
---@field OverwriteTime FFloatGetter
FPEBuffAddConfig = {}


---@class FPEBuffRemoveConfig
---@field RemoveType EPEBuffRemoveType
---@field BuffClass UPersistEffectBuff
---@field BuffTags FGameplayTagContainer
---@field StackNum FIntGetter
FPEBuffRemoveConfig = {}


---@class FPEBuffParticleConfig
---@field AttachParticle UParticleSystem
---@field bIsHardReference boolean
---@field AttachParticlePos FMeshSocketSelector
---@field ScaleType EPEAttachScaleRule
---@field OverwriteTime number
---@field bAllowMultiple boolean
FPEBuffParticleConfig = {}


---@class FPEBuffSoundConfig
---@field StackType EPEBuffEffectStackType
---@field SoundStopType EPEBuffEffectStopType
FPEBuffSoundConfig = {}


---@class UPEBuffEffectBase: UObject
---@field TriggerTypeMask number @触发效果时机
---@field Interval number @触发间隔，单位秒
---@field EffectTriggerConditionType EPEBuffEffectTriggerConditionType
---@field EffectTriggerConditionOptType EPEBuffEffectTriggerConditionOptType
---@field EffectTriggerConditionValue number
---@field TriggerDelayTime number
---@field bShowInterval boolean
---@field bShowStack boolean
local UPEBuffEffectBase = {}


---@class UPEBuffDamage: UPEBuffEffectBase
---@field DamageConfig FPEBuffDamageConfig
local UPEBuffDamage = {}


---@class UPEBuffRecover: UPEBuffEffectBase
---@field RecoverConfig FPEBuffRecoverConfig
local UPEBuffRecover = {}


---@class UPEBuffAttributeModify: UPEBuffEffectBase
---@field AttributeModify FPESkillAttributeItem
local UPEBuffAttributeModify = {}


---@class UPEBuffWeaponAttributeModify: UPEBuffEffectBase
---@field AttributeModify FPESkillAttributeItem
---@field ChangeWeaponAttrTasks ULuaArrayHelper<UGameplayTask_ChangeWeaponAttribute>
local UPEBuffWeaponAttributeModify = {}


---使用方式： 1. 配置目标属性公式（CalculatorClass）, UGC会默认使用工程中的UGC伤害公式 2. 配置伤害时临时属性修改列表（AttrItems） 3. 触发效果后会应用属性修改，然后自动结束当前Buff
---@class UPEBuffTemporaryAttributeModify: UPEBuffEffectBase, ILocalCalculationVariableExecutorObjInterface
---@field CalculatorClass USTExtraGameMagnitudeCalculation @配置的目标属性公式执行时进行伤害时临时属性修改 执行完成后自动进行修改的还原并结束当前Buff
---@field AttrItems ULuaArrayHelper<FPESkillAttributeItem> @伤害时临时属性修改列表，用于配置需要修改的属性
local UPEBuffTemporaryAttributeModify = {}

---获取UGC环境下的默认伤害公式类
---@param pCharacter AActor
function UPEBuffTemporaryAttributeModify:GetUGCMagnitudeCalculation(pCharacter) end


---@class UPEBuffAdd: UPEBuffEffectBase
---@field BuffAddConfig FPEBuffAddConfig
local UPEBuffAdd = {}


---@class UPEBuffRemove: UPEBuffEffectBase
---@field BuffRemoveConfig FPEBuffRemoveConfig
local UPEBuffRemove = {}


---@class UPEBuffLua: UPEBuffEffectBase
---@field LuaFunction FBindFunctionSelector
local UPEBuffLua = {}


---@class UPEBuffParticle: UPEBuffEffectBase
---@field ParticleConfig FPEBuffParticleConfig
---@field ParticleActors ULuaArrayHelper<AActor>
---@field CachedEmitterForAttach ULuaArrayHelper<AActor>
local UPEBuffParticle = {}

function UPEBuffParticle:OnMainCharAnimInstanceInit() end


---@class UPEScreenParticle: UPEBuffEffectBase
---@field ParticleConfig FPEBuffScreenParticleConfig
---@field ParticleName string
---@field LinearFadeDefaultMainTex FSoftObjectPath
---@field BreathFadeDefaultMainTex FSoftObjectPath
---@field BreathRotationDefaultMainTex FSoftObjectPath
---@field VerticalFlowDefaultMainTex FSoftObjectPath
local UPEScreenParticle = {}


---@class UPEBuffSound: UPEBuffEffectBase
---@field BuffSoundConfig FPEBuffSoundConfig
local UPEBuffSound = {}


---@class UPEBuffSpawnActor: UPEBuffEffectBase
---@field ActorClass AActor
---@field AttachPos FMeshSocketSelector
---@field StackType EPEBuffEffectStackType
---@field SpawnStopType EPEBuffEffectStopType
---@field SpawnedActors ULuaArrayHelper<AActor>
---@field CachedEmitterForAttach ULuaArrayHelper<AActor>
local UPEBuffSpawnActor = {}

function UPEBuffSpawnActor:OnMainCharAnimInstanceInit() end
