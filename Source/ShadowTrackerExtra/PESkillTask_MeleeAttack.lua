---@meta

---@class FPEAttackEffect_HitStop
---@field PlayRate number
---@field Duration number
---@field bFilterCamp boolean
FPEAttackEffect_HitStop = {}


---@class UPESkillTask_MeleeAttack: UPESkillTaskBase
---@field CampFilter number @阵营过滤
---@field MeleeAttackBoxType EMeleeAttackBoxType @近战伤害盒子数据来源
---@field BoxConfigsWithWeapon FMeleeAttackBoxConfigWithWeapon
---@field BoxConfigsWithSocket ULuaArrayHelper<FMeleeAttackBoxConfigWithSocket>
---@field MeleeAttackTrackType EPEMeleeAttackTrackType
---@field SocketAnimCurveConfig FMontageSocketAnimCurveProxy_PESkillMeleeAttack @近战伤害盒子曲线配置，目前主要用来两个地方 1、DS托管端使用的精细碰撞检测，比如AI角色和怪物 2、主端稳定碰撞检测，会在逻辑帧中使用导出的数据计算碰撞
---@field DamageTypeConfig FRestrictedDamageTypeData @伤害类型/Tags
---@field DamageValueWrapper FGameMagnitudeWrapper @伤害数值
---@field AttrFromCauserOrTarget EPEMagnitudeWrapperAttrSourceType
---@field DamageValidateData FDamageStrategy_ClientCalcPeriodicCommon_ValidateData @伤害校验配置
---@field bEnableHurtEffect boolean @是否启用受击效果
---@field HitStop FPEAttackEffect_HitStop @攻击效果(顿帧)
---@field DamageTypeClass USTExtraDamageType_PersistEffect @伤害类型(临时兼容和平原有功能，逐步替换，谨慎使用)
---@field bAutoCalcItemID boolean @自动识别当前近战武器物品ID
---@field SourceItemID number @伤害来源物品ID
local UPESkillTask_MeleeAttack = {}

---@param DamageStrategy UMeleeAttackDamageStrategyBase
---@param DamageInfo FMeleeAttackDamageSubmitInfo
function UPESkillTask_MeleeAttack:OnMeleeHit(DamageStrategy, DamageInfo) end

---@param DamageStrategy UMeleeAttackDamageStrategyBase
---@param HitResults ULuaArrayHelper<FHitResult>
function UPESkillTask_MeleeAttack:OnClientHit(DamageStrategy, HitResults) end

function UPESkillTask_MeleeAttack:RecoverPlayRate() end
