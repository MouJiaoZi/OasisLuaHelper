---@meta

---@class FProjectileIgnoredActor
---@field TargetTime number
FProjectileIgnoredActor = {}


---通用抛体基类
---@class AUniversalProjectileCore: AActor, IObjectPoolInterface, IOwnershipChainInterface
---@field MaxDistance number
---@field MaxLifeTime number
---@field bNeedIgnoreOwner boolean
---@field InParamsCache FProjectileParams
---@field ObjectPoolSize number
---@field DefaultObjectPoolCleanupTime number
---@field GeneralCampID number
---@field OnBulletHitDelegate FOnBulletHitDelegate @Delegate 生效范围S 通用抛体命中事件 @param FHitResult 命中结果
---@field OnLaunchBulletDelegate FOnLaunchBulletDelegate @Delegate 生效范围S 抛体发射事件
---@field OriginLoc FVector
---@field bProjectileIsActive boolean
---@field CurLifeTime number
---@field bHasBounced boolean
---@field bHasImpacted boolean
---@field bHasStopped boolean
---@field bHasEnterWater boolean
---@field bIsSubProjectile boolean
---@field IgnoredActorList ULuaArrayHelper<FProjectileIgnoredActor>
---@field OnBulletDestroyedDelegate FOnBulletDestroyedDelegate
---@field TargetTransform FTransform
---@field CreateTime number
local AUniversalProjectileCore = {}

function AUniversalProjectileCore:OnRespawned_BP() end

function AUniversalProjectileCore:OnRecycled_BP() end

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function AUniversalProjectileCore:OnBounce(ImpactResult, ImpactVelocity) end

---Event
---弹跳时的额外接口
---生效范围：SC
---@param ImpactResult FHitResult
---@param ImpactVelocity FVector @碰撞速度
function AUniversalProjectileCore:ReceiveOnBounce(ImpactResult, ImpactVelocity) end

---@param Causer AActor
---@param EventInstigator AController
---@param Params FProjectileParams
---@param InContext UObject
function AUniversalProjectileCore:Launch(Causer, EventInstigator, Params, InContext) end

---@param Causer AActor
---@param EventInstigator AController
---@param Direction FVector
---@param InContext UObject
function AUniversalProjectileCore:LaunchWithoutParams(Causer, EventInstigator, Direction, InContext) end

---@param Causer AActor
---@param InstigatorController AController
---@param Params FProjectileParams
function AUniversalProjectileCore:RPC_Multicast_StartLaunch(Causer, InstigatorController, Params) end

---@param Causer AActor
---@param InstigatorController AController
---@param Direction FVector
function AUniversalProjectileCore:RPC_Multicast_StartLaunchWithoutParams(Causer, InstigatorController, Direction) end

---@param ImpactResult FHitResult
function AUniversalProjectileCore:OnImpact(ImpactResult) end

function AUniversalProjectileCore:ResetData() end

---@param bNewVisible boolean
function AUniversalProjectileCore:SetAvatarVisible(bNewVisible) end

---Event
---发射时的额外接口
---生效范围：S
function AUniversalProjectileCore:ReceiveLaunchBullet() end

---@param ImpactResult FHitResult
function AUniversalProjectileCore:ReceiveOnImpact(ImpactResult) end

---@param ImpactResult FHitResult
function AUniversalProjectileCore:ReceiveImpactEnd(ImpactResult) end

function AUniversalProjectileCore:Disable() end

function AUniversalProjectileCore:Enable() end

---@param Params FProjectileParams
function AUniversalProjectileCore:ApplyParams(Params) end

---Event
---修改Target的接口，能触发对应目标修改接口
---生效范围：SC
---@param TargetPawn APawn
function AUniversalProjectileCore:SetTarget(TargetPawn) end

---@param DeltaTime number
function AUniversalProjectileCore:TickMovementPath(DeltaTime) end

function AUniversalProjectileCore:OnRep_InParamsCache() end

function AUniversalProjectileCore:OnRep_bHasStopped() end

---@param LastHitResult FHitResult
function AUniversalProjectileCore:ReceiveStopped(LastHitResult) end

---Event
---销毁时的额外接口
---生效范围：SC
function AUniversalProjectileCore:ReceiveOnProjectileDestroyed() end

---@param Actor AActor
function AUniversalProjectileCore:AddIgnoreActor(Actor) end

---@param Actor AActor
function AUniversalProjectileCore:RemoveIgnoreActor(Actor) end

---@param Actor AActor
---@param DelayTime number
function AUniversalProjectileCore:AddIgnoreActorWithResume(Actor, DelayTime) end

---@return number
function AUniversalProjectileCore:GetTimeStamp() end

---@param Actor AActor
---@return boolean
function AUniversalProjectileCore:HasIgnoredActor(Actor) end

function AUniversalProjectileCore:DestroyProjectile() end

---@param InContext UObject
function AUniversalProjectileCore:SetContext(InContext) end

---@return FVector
function AUniversalProjectileCore:GetVelocityNoStop() end

function AUniversalProjectileCore:OnRep_Context() end

function AUniversalProjectileCore:OnRep_TargetPawn() end

---@param NewDirection FVector
function AUniversalProjectileCore:SetDirection(NewDirection) end

---@param NewSpeed number
function AUniversalProjectileCore:SetSpeed(NewSpeed) end

---@param NewGravityScale number
function AUniversalProjectileCore:SetGravityScale(NewGravityScale) end

---@param NewDamage number
function AUniversalProjectileCore:SetDamage(NewDamage) end

---@param NewMaxSpeed number
function AUniversalProjectileCore:SetMaxSpeed(NewMaxSpeed) end
