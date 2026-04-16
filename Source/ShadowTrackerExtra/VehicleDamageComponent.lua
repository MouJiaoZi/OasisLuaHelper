---@meta

---@class FTimeCoolDown
---@field IntervalTime number
FTimeCoolDown = {}


---@class FVehicleCustomImpulseFilter
---@field ImpulseAbsorberType AActor
---@field bApplyRadialImpulse boolean
---@field bApplyImpulseAsVelocityChange boolean
---@field MaxDamagingImpulseMagnituge number
---@field MaxImpulseDamage number
---@field ImpulseStrength number
---@field RadialImpulseStrength number
---@field ImpulseRadius number
---@field ImpulseFalloffType ERadialImpulseFalloff
FVehicleCustomImpulseFilter = {}


---@class FVehicleCustomImpulse
---@field IgnoreClasses ULuaArrayHelper<AActor>
---@field ImpulseFilters ULuaArrayHelper<FVehicleCustomImpulseFilter>
---@field DamageType UDamageType
---@field bApplyImpulseWhileDestroyed boolean
---@field bApplyImpulseWhileStopped boolean
---@field bUseHitActorAsDamageInstigator boolean
FVehicleCustomImpulse = {}


---@class UVehicleDamageComponent: UVehicleComponent
---@field fDamageToMyriapodFlag number
---@field LaunchVelocityFactorOnHitCharacter number
---@field MaxLaunchVelocityFactorOnHitCharacter number @最大撞飞速度
---@field bUseNewImpulseForDamage boolean
---@field NewImpulseUseRootBoneMass boolean
---@field NewImpulse FVector
---@field bEnableOnceHitInFrameOpt boolean
---@field NewClientHitFrameCounter number
---@field curFrameDSHitActorList ULuaArrayHelper<AActor>
---@field curFrameClientHitActorList ULuaArrayHelper<AActor>
---@field ImpactModifier number
---@field ImpactAbsorption number
---@field ImpactAbsorptionPassenger number
---@field ImpactModifierUpsideDown number
---@field ImpactAbsorptionUpsideDown number
---@field ImpactAbsorptionPassengerUpsideDown number
---@field HitIgnoreImpulseThreshold number
---@field HitImpulseMaxThreshold number
---@field HitIgnoreClasses ULuaArrayHelper<AActor>
---@field PushCharacterSides boolean
---@field ApplyImpulseWhenNoDamage boolean
---@field PushCharacterForwardVectorStrength number
---@field PushCharacterRightVectorStrength number
---@field PushCharacterTopVectorStrength number
---@field ApplyImpluseSpeed number
---@field VehicleImpluseCharacterTimes ULuaMapHelper<AActor, number>
---@field VehicleImpluseCharacterCooldownTime number
---@field HitDamageSelfCD FTimeCoolDown
---@field HitDamageSelfMaxFactor number
---@field HitDamagePassengerMaxHP number
---@field bApplyDamageToCharacter boolean
---@field AllowedMaxHitDistanceSqAtServer number
---@field VehicleDamageTypeClass UDamageType @载具伤害类型
---@field bCheckHitValidInAliveHit boolean
---@field fShouldCauseDamageToHorseSpeed number
---@field bUseCustomIgnoreTag boolean
---@field CustomIgnoreTagName string
---@field bUseNewHitCharacterConfig boolean
---@field HitCharacterMinSpeed number
---@field HitCharacterSpeedFactor number
---@field HitCharacterMaxSpeedLimit number
---@field bAddHitSidePush boolean
---@field HitSidePushVelocity number
---@field HitUpOverrideVelocity number
---@field bEnableHitTeammateFallingProtect boolean
---@field bForceDoNotKnockOffTeammate boolean
---@field LastDriverToInstigatorTime number
---@field LastDriverToInstigatorVelocityInKMH number
---@field ExplosionBaseDamage number
---@field ExplosionMinimumDamage number
---@field ExplosionRadiusInner number
---@field ExplosionRadiusOuter number
---@field ExplosionDamageFalloff number
---@field ExplosionBaseMomentumMag number
---@field ExplosionDamageType UDamageType
---@field ExplosionLandscapeDeformRadius number
---@field ExplosionLandscapeDeformMaxDepth number
---@field bServerDoVehicleExplosion boolean
---@field OnlyBreakWindowThroughDriver boolean
---@field ImpluseAHorseMinSpeed number
---@field VehicleDamageCharacterTimes ULuaMapHelper<AActor, number>
---@field bProcessVehicleDamageCharacterOnCooldown boolean
---@field VehicleDamageCharacterCooldownTime number
---@field VehicleDamageMobTimes ULuaMapHelper<AActor, number>
---@field bProcessVehicleDamageMobOnCooldown boolean
---@field VehicleDamageMobCooldownTime number
---@field bDamageStandingOnCharacter boolean
---@field PushCharacterOnVehicleTimes ULuaMapHelper<AActor, number>
---@field HitStoneVelocityDamp number
---@field bEnabledMobHitTest boolean @是否启用MobHitTest
---@field MobObjectTypes ULuaArrayHelper<EObjectTypeQuery> @怪物的碰撞ObjectTypes
---@field MaxAllowedMobHitDistanceSq number @最大允许的有效Mob碰撞距离的平方(用于服务器验证)
---@field bUseProciseHitTest boolean @是否开启高精度的碰撞检测(使用车体mesh进行overlap)
---@field TestHitMobInterval number @查询Mob碰撞的时间间隔
---@field HitMobFeedBackBase number @撞击反馈的速度计算的基础数值
---@field HitMobOwnFeedBack number @撞击时反馈到载具上的减速系数
---@field PlayHitMobFXInternal number @播放撞击特效的时间间隔
---@field PlayHitMobSpeedThreshold number @播放撞击特效的速度阀值
---@field PushCharacterUpVehicleSpeed number
---@field VehiclePushUpZOffset number
---@field LeaveCharacterSpeedRate number
---@field MaxLeaveCharacterSpeed number
---@field bEnableLeaveCharacterOnVehicle boolean
---@field PushCharacterOnVehicleCD number
---@field LastOverlapTickKey ULuaArrayHelper<AActor>
---@field CustomImpulseHitTimes ULuaMapHelper<AActor, number>
---@field bProcessCustomImpulseHitsOnCooldown boolean
---@field bOnlyPlayerCustomImpulseHitsOnCooldown boolean
---@field CustomImpulseCooldownTime number
---@field CustomImpulseComponentMap ULuaMapHelper<string, FVehicleCustomImpulse>
---@field mFilter FVehicleCustomImpulseFilter
---@field LocalMobTestIgnoredActor ULuaSetHelper<AActor>
local UVehicleDamageComponent = {}

---@return number
function UVehicleDamageComponent:GetImpactAbsorption() end

---@param InImpactAbsorption number
function UVehicleDamageComponent:SetImpactAbsorption(InImpactAbsorption) end

---@return number
function UVehicleDamageComponent:GetImpactAbsorptionPassenger() end

---@param InImpactAbsorptionPassenger number
function UVehicleDamageComponent:SetImpactAbsorptionPassenger(InImpactAbsorptionPassenger) end

---@return number
function UVehicleDamageComponent:GetHitDamagePassengerMaxHP() end

---@param InHitDamagePassengerMaxHP number
function UVehicleDamageComponent:SetHitDamagePassengerMaxHP(InHitDamagePassengerMaxHP) end

---@return boolean
function UVehicleDamageComponent:GetEnableNewHitCharacterConfig() end

---@return number
function UVehicleDamageComponent:GetExplosionBaseDamage() end

---@return number
function UVehicleDamageComponent:GetExplosionMinimumDamage() end

---@return number
function UVehicleDamageComponent:GetExplosionRadiusInner() end

---@return number
function UVehicleDamageComponent:GetExplosionRadiusOuter() end

---@return number
function UVehicleDamageComponent:GetExplosionDamageFalloff() end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UVehicleDamageComponent:HandleOnVehicleHit(SelfActor, OtherActor, NormalImpulse, Hit) end

---@param InMobArr ULuaArrayHelper<ASTExtraSimpleCharacter>
function UVehicleDamageComponent:SendMobHitToServer(InMobArr) end

---@param InVal number
function UVehicleDamageComponent:ClientMobFeedback(InVal) end

---@param OtherActor AActor
---@param location FVector
---@param linearvelocity FVector
function UVehicleDamageComponent:SendHitCaveStoneToServer(OtherActor, location, linearvelocity) end

---@param DamageableActor ADamageableActor
---@param location FVector
---@param linearvelocity FVector
function UVehicleDamageComponent:SendHitDamagedActorToServer(DamageableActor, location, linearvelocity) end

---@param InActor AActor
---@param location FVector
---@param linearvelocity FVector
function UVehicleDamageComponent:SendHitDamagedActorInterfaceToServer(InActor, location, linearvelocity) end

---@param InMobArr ULuaArrayHelper<ASTExtraSimpleCharacterBase>
function UVehicleDamageComponent:SendSimpleCharacterBaseHitToServer(InMobArr) end

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function UVehicleDamageComponent:OnCustomImpulseComponentHit(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end

---往缓存的LocalMobTestIgnoredActor 添加 IgnoreActor 留意下次 BeginPlay(例如杀进程重连) 会被重置
---@param ActorToIgnore AActor
function UVehicleDamageComponent:RegisterLocalIgnoredActor(ActorToIgnore) end

---往缓存的LocalMobTestIgnoredActor 移除 IgnoreActor
---@param ActorToIgnore AActor
function UVehicleDamageComponent:UnregisterLocalIgnoredActor(ActorToIgnore) end
