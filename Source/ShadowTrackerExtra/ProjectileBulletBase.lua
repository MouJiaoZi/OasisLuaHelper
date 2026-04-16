---@meta

---@class FProjectileBulletLaunchParams
---@field Speed number
---@field Trans FTransform
---@field ShootID number
---@field ExtraData string
FProjectileBulletLaunchParams = {}


---所有客户端可见的抛体子弹基类
---@class AProjectileBulletBase: ASTExtraShootWeaponBulletBase
---@field DisableSimulateBulletCollision boolean
---@field EnableServerBulletCollision boolean
---@field EnableServerBulletExtraImpactEnd boolean
---@field DisableServerBulletCollision boolean
---@field bEnableSimulateBulletResponseToPawnChannel boolean
---@field MaxActiveTime number
---@field AutoDestroyTime number
---@field bEnableClientImpactServerRPC boolean
---@field bResetServerLaunchParamsOnImpact boolean
---@field bServerDestroyOnImpact boolean
---@field ServerDestroyOnImpactLifeTime number
---@field ServerShootPos FVector
---@field ServerShootTime number
---@field ServerLaunchParams FProjectileBulletLaunchParams
---@field ClientImpactPoint FVector
---@field ClientImpactNormal FVector
---@field bNeedVerifyClientImpactPoint boolean
---@field CurMaxActiveTime number
---@field LocalShootId number
---@field CurAutoDestroyCountTime number
---@field bReachMaxActive boolean
---@field bIsValidImpact boolean
---@field EnableBPOnImpact boolean
---@field bNeedResumeMoveInWater boolean
---@field IgnoreActorClasses ULuaArrayHelper<AActor>
---@field ImmediatelyHiddenOnDestory boolean
---@field NotHiddenTimeOnDestory number
---@field BulletNeedHiddenLatter boolean
---@field bDeactivateParticleOnImpact boolean
local AProjectileBulletBase = {}

---@param _ImpactResult FHitResult
---@param bVerifyRet boolean
function AProjectileBulletBase:HandleOnImpactOnServer(_ImpactResult, bVerifyRet) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AProjectileBulletBase:HandleBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param DelayTime number
function AProjectileBulletBase:DelayDestroyOnServer(DelayTime) end

function AProjectileBulletBase:ForceInvalidate() end

---@return boolean
function AProjectileBulletBase:CanDestroy() end

function AProjectileBulletBase:HandleDestroyOnImpact() end

---@param _ImpactResult FHitResult
function AProjectileBulletBase:OnImpact(_ImpactResult) end

---@param _ImpactResult FHitResult
function AProjectileBulletBase:BPOnImpact(_ImpactResult) end

---@param _ImpactResult FHitResult
---@param OutRst boolean
function AProjectileBulletBase:CustomCheckResumeMove(_ImpactResult, OutRst) end

---@param _ImpactResult FHitResult
function AProjectileBulletBase:OnImpactEnd(_ImpactResult) end

---@param speed number
---@param Trans FTransform
---@param InOwningWeapon AActor
---@param InInstigator AActor
---@param _ShootID number
function AProjectileBulletBase:RPC_Multicast_StartLaunch(speed, Trans, InOwningWeapon, InInstigator, _ShootID) end

---@param LaunchParams FProjectileBulletLaunchParams
function AProjectileBulletBase:RPC_Multicast_StartLaunchNew(LaunchParams) end

---@param Comp UNormalProjectileComponent
function AProjectileBulletBase:ProjectileComponentHandleShootDamageCallback(Comp) end

---@param OldParam FProjectileBulletLaunchParams
function AProjectileBulletBase:OnRep_ServerLaunchParams(OldParam) end

function AProjectileBulletBase:DelayDestroyOnServerFinish() end
