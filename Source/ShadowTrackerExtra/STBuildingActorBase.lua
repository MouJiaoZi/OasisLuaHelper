---@meta

---@class FOnConstAnimComplate : ULuaSingleDelegate
FOnConstAnimComplate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnConstAnimComplate:Bind(Callback, Obj) end

---执行委托
function FOnConstAnimComplate:Execute() end


---@class ASTBuildingActorBase: ABuildingActorBase, IDamageableInterface, IRegionObjectInterface, IObjectPoolInterface
---@field DamageableGameObjectTypeList ULuaArrayHelper<EDamageableGameObjectType>
---@field bCheckBuildState boolean
---@field ReturnRate number
---@field bCheckMeshOverlap boolean
---@field PickupRangeSquared number
---@field bImmuneToTeammate boolean
---@field VehicleHitDamageFactor number
---@field MinVehicleHitVelSize number
---@field MaxVehicleHitVelSize number
---@field bAutoShowBuildingQuick boolean
---@field BuildingQuickSignTypeID string
---@field DoorBaseClass AActor
---@field bSetNoCollisionInEndPlay boolean
---@field OwnerPlayerUID string
---@field BornAnimationDelayTime number
---@field bCheckDoorCollision boolean
---@field UseLoopAnimation boolean
---@field LifeSpanBeforeFighting number
---@field EnableTimeLimit boolean
---@field LifeLimitTime number
---@field LifeTimeStart number
---@field LifeTimeEnd number
---@field BornAnimationTime number
---@field VehicleDamageCD number
---@field bRefreshSKillCD boolean
---@field AssociatedSkill AUTSkill
---@field CDScaleFactor number
---@field bEnableHandlePickupWhenDestroy boolean
---@field OnConstAnimComplate FOnConstAnimComplate
---@field bIsBeginAnimationPlayed boolean
---@field bDestroyAnimationPlayed boolean
---@field DestroyAnimationTimeHandle FTimerHandle
---@field BornAnimaionTimeHandle FTimerHandle
---@field BornAnimaionDelayTimeHandle FTimerHandle
---@field TeamId number
---@field TickFrequencyPerCollisionCheck number
---@field OverlapCheckComponnentName string
local ASTBuildingActorBase = {}

function ASTBuildingActorBase:CleanupBulletHoles() end

function ASTBuildingActorBase:OnEnterRegion() end

function ASTBuildingActorBase:OnLeaveRegion() end

---@param bToPersistentPool boolean
function ASTBuildingActorBase:OnRecycled(bToPersistentPool) end

---@param bFromPersistentPool boolean
function ASTBuildingActorBase:OnRespawned(bFromPersistentPool) end

function ASTBuildingActorBase:BP_OnRespawned() end

function ASTBuildingActorBase:BP_OnRecycled() end

---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
---@return number
function ASTBuildingActorBase:HandleBuildingModifyDamage(Damage, DamageType, InstigatedBy, DamageCauser) end

---@param bUseParticle boolean
function ASTBuildingActorBase:Multicast_PlayDestroyAnimation(bUseParticle) end

---@return number
function ASTBuildingActorBase:GetLifeLimitRemainTime() end

---@param DamagedActor AActor
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function ASTBuildingActorBase:HandleBuildingTakeAnyDamage(DamagedActor, Damage, DamageType, InstigatedBy, DamageCauser) end

---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
---@return number
function ASTBuildingActorBase:BP_HandleBuildingModifyDamage(Damage, DamageType, InstigatedBy, DamageCauser) end

---@param CauserActor AActor
---@param bEnable boolean
function ASTBuildingActorBase:EnableCollisionForVehicle(CauserActor, bEnable) end

---@param bReset boolean
function ASTBuildingActorBase:PlayConstructAnimation(bReset) end

function ASTBuildingActorBase:OnRep_IsBeginAnimationPlayed() end

function ASTBuildingActorBase:OnRep_TeamID() end

---@param vel number
---@param FinalDamageTaken number
---@param bTookDamage boolean
function ASTBuildingActorBase:DrawVehicleDebugString(vel, FinalDamageTaken, bTookDamage) end

---@param Character ASTExtraBaseCharacter
function ASTBuildingActorBase:OnPlayerEnter(Character) end

---@param Character ASTExtraBaseCharacter
function ASTBuildingActorBase:OnPlayerLeave(Character) end
