---@meta

---@class EActorSpawnWay
---@field SpawnAtLocation number @命中点位置生成
---@field SpawnAtGround number @命中点下的地面位置生成
EActorSpawnWay = {}


---@class EProjectileMoveType
---@field HitActor number @命中Actor
---@field InValid number @无效
---@field HitGround number @命中地面
---@field Stop number @停止
---@field Penetrate number @穿透
EProjectileMoveType = {}


---@class EProjectileMatchType
---@field EProjectileMatchType_All number @全部满足
---@field EProjectileMatchType_Any number @满足任意一个
EProjectileMatchType = {}


---@class EActionTriggerType
---@field OnlyServer number
---@field OnlyClient number
---@field All number
EActionTriggerType = {}


---@class EProjectileActionType
---@field Penetrate number @穿透
---@field BounceTarget number @目标间弹射
---@field Homing number @追踪
EProjectileActionType = {}


---@class ESearchPriority
---@field NearDistance number @距离最近
---@field LowHealth number @血量最低
---@field LowHealthPercent number @百分比血量最低
---@field CustomFunc number @自定义方法
ESearchPriority = {}


---@class EProjectileDeAttachType
---@field TargetDie number @目标死亡时自动脱落
---@field TargetDestroy number @目标销毁时自动脱落
EProjectileDeAttachType = {}


---@class EProjectileEffectApplyCondition
---@field ApplyOnImpact number @发生碰撞调用
---@field ApplyOnStop number @停止时调用
---@field ApplyOnDestroyed number @销毁时调用
---@field ApplyOnHitGround number @碰撞地面时调用
---@field ApplyOnHitPawn number @碰撞单位时调用
---@field ApplyOnHitNotPawn number @碰撞非单位时调用
---@field ApplyContinueAlive number @存活时持续调用
---@field ApplyContinueAfterStop number @停止后持续调用
---@field ApplyContinueAfterOnGround number @落地后持续调用
---@field ApplyOnCompleteBounceTarget number @弹射完成时调用
---@field ApplyOnCompletePenetrate number @穿透完成时调用
---@field ApplyOnLaunch number @发射时调用
---@field ApplyOnSurroundOver number @环绕逃逸时调用
EProjectileEffectApplyCondition = {}


---@class EOverrideWay
---@field Override number @覆写
---@field Inherit number @继承
---@field SelfConfig number @自身配置
EOverrideWay = {}


---@class FProjectileParams
---@field Speed number
---@field GravityScale number
---@field Direction FVector
---@field TargetTransform FTransform
---@field GeneralCampID number
---@field DamageValueWrapper FGameMagnitudeWrapper
---@field DamageTypeData FRestrictedDamageTypeData
---@field bOverrideSpeedConfig boolean
---@field bOverrideDamageConfig boolean
FProjectileParams = {}


---@class FEditorParamsOverride
---@field Speed number
---@field GravityScale number
---@field DamageValueWrapper FGameMagnitudeWrapper
---@field DamageTypeData FRestrictedDamageTypeData
FEditorParamsOverride = {}


---@class FSubProjectileParamsOverride
---@field bOverrideSpeedConfig boolean
---@field Speed number
---@field GravityScale number
---@field bOverrideDamageConfig boolean
---@field DamageValueWrapper FGameMagnitudeWrapper
---@field DamageTypeData FRestrictedDamageTypeData
FSubProjectileParamsOverride = {}


---条件触发时的数据
---@class FPESkillTargetData
---@field TargetActors ULuaArrayHelper<AActor> @范围Action中的Actor列表
---@field HitResult FHitResult @碰撞结果
---@field Origin FVector @发射起点
---@field EndPoint FVector
---@field HitPartType EAvatarDamagePosition
FPESkillTargetData = {}


---@class FSubProjectileParamsOverrideNew
---@field OverrideSpeedConfig EOverrideWay
---@field Speed number
---@field GravityScale number
---@field OverrideDamageConfig EOverrideWay
---@field DamageValueWrapper FGameMagnitudeWrapper
---@field DamageTypeData FRestrictedDamageTypeData
FSubProjectileParamsOverrideNew = {}
