---@meta

---摄像头
---@class AEliteProjectile_Moss: AEliteProjectile, IEMPFeedbackInterface, IDamageableInterface
---@field ScanEnemyDistance number
---@field MaxScanedNum number
---@field ActorFilters ULuaArrayHelper<APawn>
---@field IgnoredActors ULuaArrayHelper<APawn>
---@field bEnableAutoScanEnemy boolean
---@field ScanEnemyInterval number
---@field AutoExplodeDistance number
---@field bCheckInWaterAfterActived boolean
---@field bCheckHitAirWall boolean
---@field CheckHitAirWallCollisionChanel ECollisionChannel
---@field bCheckSelfMoveWhenHit boolean
---@field ExplodeOnInWater FConditionAndRestriction
---@field ExplodeTraceAirWall FConditionAndRestriction
---@field ViewData number
---@field bActived boolean
local AEliteProjectile_Moss = {}

---@param Impact FHitResult
function AEliteProjectile_Moss:DoExplode(Impact) end

function AEliteProjectile_Moss:DoExplodeWithLastHitImpact() end

---@param bEnable boolean
function AEliteProjectile_Moss:OnObserved(bEnable) end

---@param bEnable boolean
function AEliteProjectile_Moss:ReceiveBeObserved(bEnable) end

---@param Pitch number
---@param Yaw number
---@param Loc FVector2D
function AEliteProjectile_Moss:OnOwnerPCTouchMove(Pitch, Yaw, Loc) end

---@param EnemyList ULuaArrayHelper<APawn>
function AEliteProjectile_Moss:OnEnemyScaned(EnemyList) end

---@param Hit FHitResult
---@return boolean
function AEliteProjectile_Moss:IsHitInvalidActor(Hit) end

function AEliteProjectile_Moss:OnRep_ViewData() end

---@param InRot FRotator
function AEliteProjectile_Moss:SetViewRotation(InRot) end

---@return FRotator
function AEliteProjectile_Moss:GetViewRotation() end

function AEliteProjectile_Moss:DoScanEnemy() end

---处理入水
function AEliteProjectile_Moss:OnInWater() end

---@param StickyActor AActor
function AEliteProjectile_Moss:ReceiveStickActorMeshChanged(StickyActor) end

---@param EMPActor AActor
---@param Origin FVector
---@param InstigatedByController AController
function AEliteProjectile_Moss:ReceiveTriggerExplodedEffectFeedback(EMPActor, Origin, InstigatedByController) end

---处理打到空气墙
function AEliteProjectile_Moss:OnHitAirWall() end

---@param HitResult FHitResult
function AEliteProjectile_Moss:ReceiveProjectileStickToTargetEvent(HitResult) end
