---@meta

---投掷物
---@class AEliteProjectile: AActor, IRegionObjectInterface
---@field HealthSetting FProjectileHealthSetting
---@field TLOGId number
---@field ReplicatedProjectileEvent FProjectileEvent
---@field ProjectileReplicatedMovement any
---@field ImpactEffects UEliteProjectileBounceDataAsset
---@field ExplosionTemplate ASTExtraExplosionEffect @effects for explosion
---@field ExplosionTemplateInAir ASTExtraExplosionEffect @effects for explosion
---@field ExplosionTemplateInWater ASTExtraExplosionEffect @effects for explosion in water. If this is empty, not explosion.
---@field MovementTrailFXMat UMaterialInstance
---@field MovementTrailFXMatNoOccld UMaterialInstance
---@field DestroyedFX UParticleSystem
---@field bCustomizeCountdownUIDisplayTime number
---@field ItemID number
---@field ExplosionDelay number
---@field ImpactExplosionDelay number
---@field StoppedExplosionDelay number
---@field LifeSpanAfterExploded number
---@field ImpactEffectsInterval number
---@field bOpenStickyMode boolean
---@field bChangeVehicleAttachBone boolean
---@field DenyStickyTargetsClass ULuaArrayHelper<AActor>
---@field bNeedAddToAIWorldCell boolean
---@field MaxAttractTargetNum number
---@field UserInterfaceData FProjectileUserInterfaceData
---@field ExplodeAfterStopped FConditionAndRestriction
---@field ExplodeOnBroken FConditionAndRestriction
---@field ExplodeOnImpact FConditionAndRestriction
---@field ExplodeOnTimer FConditionAndRestriction
---@field ExplodeOnRemoteControl FConditionAndRestriction
---@field bNetUseDistanceRelevancy number
---@field bNormalAlignment number
---@field bExploded number
---@field bValid number
---@field SpawnTime number
---@field ExplosionTime number
---@field WeaponExtraParam string
---@field AvatarData FProjectileAvatarData
---@field LoadedAssets ULuaArrayHelper<UObject>
---@field OnAssetsLoaded FProjectileAsyncLoadFinished
---@field OBCaptureTemplate AEliteProjectileOBCaptureActor
---@field OBCaptureOffsetTrans FTransform
---@field SkipCreateOBCaptureActorTime number
local AEliteProjectile = {}

function AEliteProjectile:OnRep_ProjectileReplicatedMovement() end

---@return boolean
function AEliteProjectile:BlueprintLifeSpanExpired() end

---@param InActor AActor
---@return boolean
function AEliteProjectile:BlueprintCanStickOnTarget(InActor) end

---@param StickyActor AActor
function AEliteProjectile:UnStickyFromActor(StickyActor) end

---@param StickyComponent UPrimitiveComponent
function AEliteProjectile:UnStickyFromComp(StickyComponent) end

---@param Timer number
function AEliteProjectile:SetExplodeTimer(Timer) end

function AEliteProjectile:Invalidate() end

function AEliteProjectile:Disable() end

---@param InitialVelocity FVector
function AEliteProjectile:RestartProjectile(InitialVelocity) end

---@param InitialVelocity FVector
function AEliteProjectile:ReceiveProjectileRestarted(InitialVelocity) end

function AEliteProjectile:StopProjectile() end

function AEliteProjectile:ReceiveDisableEvent() end

---@param bNewVisible boolean
function AEliteProjectile:SetAvatarVisible(bNewVisible) end

---@return boolean
function AEliteProjectile:IsTimerExplosionProjectile() end

---@return number
function AEliteProjectile:GetRemainingTimeBeforeExplosion() end

function AEliteProjectile:Freeze() end

function AEliteProjectile:Unfreeze() end

---@param NewProjectile AEliteProjectile
---@param Trans FTransform
function AEliteProjectile:FinishLaunch(NewProjectile, Trans) end

function AEliteProjectile:AddOnProjectileExplodedHandler() end

function AEliteProjectile:RemoveOnProjectileExplodedHandler() end

function AEliteProjectile:AddOnProjectileSpawnedHandle() end

function AEliteProjectile:RemoveOnProjectileSpawnedHandle() end

---生效范围SC
---添加销毁事件
function AEliteProjectile:AddOnProjectileDestroyedHandler() end

---生效范围SC
---移除销毁事件
function AEliteProjectile:RemoveOnProjectileDestroyedHandler() end

---@param WorldContextObject UObject
function AEliteProjectile:GetAllProjectiles(WorldContextObject) end

---@param WorldContextObject UObject
---@param Loc FVector
---@param Radius number
function AEliteProjectile:GetAllProjectilesInRange(WorldContextObject, Loc, Radius) end

---@param WorldContextObject UObject
---@param Loc FVector
---@param Radius number
---@param ProjectileTags ULuaArrayHelper<string>
function AEliteProjectile:GetAllProjectilesInRangeByTags(WorldContextObject, Loc, Radius, ProjectileTags) end

---@param AssetPaths ULuaArrayHelper<FSoftObjectPath>
function AEliteProjectile:ReqeustAsyncLoadAssets(AssetPaths) end

---@param InVelocity FVector
function AEliteProjectile:SetVelocity(InVelocity) end

---@param ImpactNormal FVector
function AEliteProjectile:NormalizeAlignment(ImpactNormal) end

function AEliteProjectile:ReceiveInitializeProjectileAvatar() end

function AEliteProjectile:PostAvatarApplied() end

---@param DamageAmount number
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function AEliteProjectile:ReceiveModifyDamage(DamageAmount, EventInstigator, DamageCauser) end

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function AEliteProjectile:ReceiveProjectileBrokenEvent(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

function AEliteProjectile:HandleProjectileActivated() end

function AEliteProjectile:ReceiveProjectileActivatedEvent() end

---@param Impact FHitResult
function AEliteProjectile:HandleProjectileExploded(Impact) end

---生效范围SC
---爆炸事件
---@param Impact FHitResult
function AEliteProjectile:ReceiveProjectileExplodedEvent(Impact) end

---@param Hit FHitResult
function AEliteProjectile:HandleProjectileHit(Hit) end

---生效范围SC
---击中事件
---@param Hit FHitResult
function AEliteProjectile:ReceiveProjectileHit(Hit) end

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function AEliteProjectile:HandleProjectileBounce(ImpactResult, ImpactVelocity) end

---生效范围SC
---弹射事件
---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function AEliteProjectile:ReceiveProjectileBouncedEvent(ImpactResult, ImpactVelocity) end

---@param HitResult FHitResult
function AEliteProjectile:HandleProjectileStop(HitResult) end

---生效范围SC
---停止事件
---@param HitResult FHitResult
function AEliteProjectile:ReceiveProjectileStoppedEvent(HitResult) end

---@param Hit FHitResult
---@param MoveDelta FVector
function AEliteProjectile:HandleProjectilePassedThroughSomething(Hit, MoveDelta) end

---@param Hit FHitResult
function AEliteProjectile:HandleProjectileStickyToTarget(Hit) end

---@param HitResult FHitResult
function AEliteProjectile:ReceiveProjectileStickEvent(HitResult) end

function AEliteProjectile:RemoteControlExplode() end

function AEliteProjectile:ReceiveProjectileRemoteControlEvent() end

function AEliteProjectile:ReceiveProjectileAttachmentChanged() end

---@param PrevEvent FProjectileEvent
function AEliteProjectile:OnRep_ReplicatedProjectileEvent(PrevEvent) end

function AEliteProjectile:ReceiveProjectileEventReplicated() end

---@param TestActor AActor
---@param TestComponent USceneComponent
---@return boolean
function AEliteProjectile:IsTargetDynamic(TestActor, TestComponent) end

---@param Impact FHitResult
function AEliteProjectile:MulticastExploded(Impact) end

---@param Location FVector
function AEliteProjectile:SpawnExplosionEffect(Location) end

---@param HitResult FHitResult
---@param bStopped boolean
function AEliteProjectile:OnImpact(HitResult, bStopped) end

---@param HitResult FHitResult
function AEliteProjectile:PlayImpactSound(HitResult) end

---@return boolean
function AEliteProjectile:IsStopped() end

function AEliteProjectile:UpdateMovementTrailFX() end

---@param InstigatorPawn APawn
---@param Controller AController
---@param Hit FHitResult
function AEliteProjectile:HandleBigWorldExplode(InstigatorPawn, Controller, Hit) end

function AEliteProjectile:CreateOBCaptureActor() end

function AEliteProjectile:HandleLoadClassFinished() end

function AEliteProjectile:DestroyOBCaptureActor() end

---@param InAlpha number
function AEliteProjectile:UpdateProjectileAlpha(InAlpha) end
