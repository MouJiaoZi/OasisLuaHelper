---@meta

---@class EExplosionTrigger
---@field None number @不发生爆炸
---@field Immediately number @命中立即发生爆炸
---@field StopDelay number @停止后开始计时延迟爆炸
---@field OnBounceDelay number @弹射后开始计时延迟爆炸
---@field OnImpactDelay number @命中Pawn后开始计时延迟爆炸
---@field OnCustomDelay number @根据拉栓计时延迟爆炸
EExplosionTrigger = {}


---通用抛体
---@class AUniversalProjectileBase: AUniversalProjectileCore
---@field bDisableClientSimulate boolean
---@field bNeedKeepForwardWithVelocity boolean
---@field PunctureTimes number
---@field bDestroyOnHit boolean
---@field bAdjustHitParticleScale boolean
---@field HitParticleScale FVector
---@field bAttachToHitActor boolean
---@field HitAddBuffClassList ULuaArrayHelper<UPersistEffectBuff>
---@field HitSpawnActor AActor
---@field ImpactIgnoreCamps ULuaArrayHelper<ECampRelation>
---@field EditorParamsOverride FEditorParamsOverride
---@field DamageValueWrapper FGameMagnitudeWrapper
---@field DamageTypeData FRestrictedDamageTypeData
---@field DamageTypeClass UDamageType
---@field SourceItemID number
---@field bEnableTargetTrack boolean
---@field TrackSpeed number
---@field ExplosionTrigger EExplosionTrigger
---@field ExplosionDelayTime number
---@field ExplosionDamageValueWrapper FGameMagnitudeWrapper
---@field ExplosionAddBuffClassList ULuaArrayHelper<UPersistEffectBuff>
---@field ExplosionRadius number
---@field Filters ULuaArrayHelper<UUniversalProjectileFilter>
---@field bAdjustExplosionParticleScale boolean
---@field ExplosionParticleScale FVector
---@field bDestroyedAfterExplosion boolean
---@field EnableVoiceMarkerInMap boolean
---@field VoiceCheckShowTime number
---@field VoiceCheckDis number
---@field bHasExploded boolean
---@field CurPunctureTimes number
---@field OnBulletExplosionDelegate FOnBulletExplosionDelegate
---@field bIsExplodeTimerStarted boolean
local AUniversalProjectileBase = {}

---@param ImpactResult FHitResult
function AUniversalProjectileBase:ApplyDamage(ImpactResult) end

---@return number
function AUniversalProjectileBase:GetDamageSourceItem() end

---@param ImpactResult FHitResult
function AUniversalProjectileBase:RPC_Multicast_Explode(ImpactResult) end

---@param ImpactResult FHitResult
function AUniversalProjectileBase:Explosion(ImpactResult) end

---@param ImpactResult FHitResult
function AUniversalProjectileBase:OnImpactAddBuff(ImpactResult) end

---@param ImpactResult FHitResult
function AUniversalProjectileBase:OnImpactSpawnActor(ImpactResult) end

function AUniversalProjectileBase:OnRep_TrackTarget() end

---@param Pawn APawn
function AUniversalProjectileBase:SetTrackTarget(Pawn) end

function AUniversalProjectileBase:SetRotationForward() end

---@param ImpactResult FHitResult
function AUniversalProjectileBase:RPC_Multicast_PlayHitEffect(ImpactResult) end

---自定义的过滤器接口
---生效范围：SC
---@param InActor AActor
---@return boolean
function AUniversalProjectileBase:ReceiveCustomFilter(InActor) end

---@param FoundTargets ULuaArrayHelper<FHitResult>
function AUniversalProjectileBase:PlayExplosionEffect(FoundTargets) end

---自定义爆炸范围内筛选过后所有碰撞结果接口
---生效范围：S
---@param FoundTargets ULuaArrayHelper<FHitResult>
function AUniversalProjectileBase:ReceivePlayExplosionEffectToAllTarget(FoundTargets) end

---自定义爆炸范围内筛选过后碰撞接口
---生效范围：S
---@param ExplosionTarget FHitResult
function AUniversalProjectileBase:ReceivePlayExplosionEffect(ExplosionTarget) end

---爆炸开始计时的额外接口（如果有延时爆炸）
---生效范围：S
function AUniversalProjectileBase:ReceiveBeginExplodeTimer() end

---爆炸停止计时的额外接口（如果有延时爆炸）
---生效范围：S
function AUniversalProjectileBase:ReceiveEndExplodeTimer() end

---@param ImpactResult FHitResult
function AUniversalProjectileBase:ReceiveExplosion(ImpactResult) end

function AUniversalProjectileBase:BeginExplodeTimer() end

---@param DelayTime number
function AUniversalProjectileBase:StartDelayExplosionWithDelayTime(DelayTime) end

---@param DelayTime number
---@param Causer AActor
---@param EventInstigator AController
---@param Params FProjectileParams
function AUniversalProjectileBase:ApplyThrowDelayTime(DelayTime, Causer, EventInstigator, Params) end

---@param ExplodeLoaction FVector
function AUniversalProjectileBase:SetExplodeMarker(ExplodeLoaction) end
