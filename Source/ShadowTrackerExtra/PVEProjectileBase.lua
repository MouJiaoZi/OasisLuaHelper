---@meta

---@class FHighArcParam
---@field HeightDiff number
---@field GravityScale number
FHighArcParam = {}


---@class APVEProjectileBase: AActor, IRegionObjectInterface
---@field RegionSize ERegionSizeIndex
---@field bDestroyAfterHit boolean
---@field bUpdateLaunchLocationWhenStartFly boolean
---@field bNeedRevertLocationWhenStartFly boolean
---@field bUpdateTargetPosWhenStartFly boolean
---@field bIgnoreOwner boolean
---@field bIgnoreCollisionInClient boolean
---@field ActorImpactTimes ULuaMapHelper<AActor, number>
---@field TargetActorLocation FVector
---@field TargetActorOffset FVector
---@field InitLocation FVector
---@field LastLocation FVector
---@field TraceGroundDepth number
---@field bUseHighArc boolean
---@field bIsRay boolean
---@field bIsHorizontal boolean
---@field bIsUseOwnerControlRotation boolean
---@field bNeedCheckMaxDistance boolean
---@field DelayFlyTime number
---@field bDelayTimeHide boolean
---@field DelayUpdateTargetLocationTime number
---@field bStartFlyByAutonomous boolean
---@field bAttachToTargetActorCenter boolean
---@field AttachSocketName string
---@field AttachSocketOffset FVector
---@field bIsHoming boolean
---@field HomingAccelerationMagnitude number
---@field AttachSocketRotator FRotator
---@field Speed number
---@field MaxDistance number
---@field ProjectileGravityScale number
---@field HitDamage number
---@field bHasBeenThrowedOut boolean
---@field bUseHitLocation boolean
---@field HighArcGravityScales ULuaArrayHelper<FHighArcParam>
---@field VerifyStartDistance number
---@field VerifyStartForwardDot number
---@field bDebugPoint boolean
---@field DebugPointTime number
---@field DebugPointTimeCounter number
---@field FlyTime number
---@field bIsOnGround boolean
---@field bNeedHideMeshChild boolean
---@field bNeedAdjustSocketTransform boolean
---@field AdjustSocketTransform FTransform
---@field EnableClientTranslationSmooth boolean
---@field EnableAutoTranslationSmooth boolean
---@field bUseRelativeSelfOffset boolean
---@field bUseVelocityCurve boolean
---@field ThrowMaxDistance number
---@field ThrowMinDistance number
local APVEProjectileBase = {}

---@param _ImpactResult FHitResult
function APVEProjectileBase:OnImpact(_ImpactResult) end

function APVEProjectileBase:OnProjectileDestroy() end

function APVEProjectileBase:OnProjectileDestroy_BP() end

---@param ImpactResult FHitResult
function APVEProjectileBase:OnImpactBP(ImpactResult) end

function APVEProjectileBase:OnStartFly() end

function APVEProjectileBase:OnStartFlyClient() end

---@param ImpactActor AActor
function APVEProjectileBase:CauseDamageToActor(ImpactActor) end

---@param Velocity FVector
---@param GravityScale number
---@param StartLoc FVector
function APVEProjectileBase:StartFly(Velocity, GravityScale, StartLoc) end

---@param Velocity FVector
---@param GravityScale number
---@param StartLoc FVector
function APVEProjectileBase:StartFlyBP(Velocity, GravityScale, StartLoc) end

---@param StartLoc FVector
function APVEProjectileBase:SyncStartFlyPos(StartLoc) end

---@param StopLoc FVector
---@param ImpactResult FHitResult
function APVEProjectileBase:StopFly(StopLoc, ImpactResult) end

function APVEProjectileBase:AttachToSocketLoc() end

function APVEProjectileBase:OnRep_AttachSocketName() end

function APVEProjectileBase:DelayUpdateTargetLocation() end

function APVEProjectileBase:UpdateTargetLocation() end

function APVEProjectileBase:OnRep_TargetActor() end

---@param bNewDestroyAfterHit boolean
function APVEProjectileBase:SetDestroyAfterHit(bNewDestroyAfterHit) end

---@param ImpactResult FHitResult
function APVEProjectileBase:UGC_ImpactEvent(ImpactResult) end

function APVEProjectileBase:CleanMoveComponentFlags() end

---@param NewVelocityCurve UCurveFloat
function APVEProjectileBase:SetReplicatedVelocityCurve(NewVelocityCurve) end
