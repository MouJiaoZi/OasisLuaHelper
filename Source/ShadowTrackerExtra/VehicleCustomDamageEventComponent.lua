---@meta

---@class ECustomDamageEventTriggerType
---@field OnPassedDamageThreshold number
---@field OnAnyDamage number
ECustomDamageEventTriggerType = {}


---@class ECustomDamageEventReactionType
---@field SpawnActor number
---@field ActiveParticles number
---@field DetactiveParticles number
---@field HideMesh number
---@field HideMeshInstance number
---@field HideBone number
---@field ApplyPhysicalAnimationProfile number
---@field SetCollisionEnabled number
ECustomDamageEventReactionType = {}


---@class FCustomDamageEventRow
---@field bProcessedLocally boolean
---@field EventID FGuid
---@field bEnabled boolean
---@field bClientOnly boolean
---@field bReplicate boolean
---@field bOnlyReplicateWhenRelevant boolean
---@field EventTriggerType ECustomDamageEventTriggerType
---@field TriggerCooldown number
---@field HealthPercentageThreshold number
---@field bTriggerWhenDead boolean
---@field EventReactionType ECustomDamageEventReactionType
---@field ActorClassToSpawn AActor
---@field bTriggersGlobalCooldown boolean
---@field bLockedByGlobalCooldown boolean
---@field OnCooldownActorClassToSpawn AActor
---@field bDestroySpawnedParticlesWithOwner boolean
---@field AttachComponentTag string
---@field SpawnSocketName string
---@field CustomSpawnTransformTag string
---@field bSpawnAtRandomPointInBoundingBox boolean
---@field bUseCustomSpawnRotation boolean
---@field MinToSpawn number
---@field MaxToSpawn number
---@field ActorSpawnTag string
---@field MeshComponentTag string
---@field MeshInstanceIndex number
---@field BoneName string
---@field PhysicsAssetProfileName string
---@field CollisionPrimitiveTag string
---@field CollisionEnabledType ECollisionEnabled
FCustomDamageEventRow = {}


---@class FTriggeredCustomDamageEvent
---@field Event FCustomDamageEventRow
---@field TimeTriggered number
FTriggeredCustomDamageEvent = {}


---@class FOnCustomDamageEventSpawnActor : ULuaMulticastDelegate
FOnCustomDamageEventSpawnActor = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SpawnedActor: AActor, SpawnInstigator: APawn) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCustomDamageEventSpawnActor:Add(Callback, Obj) end

---触发 Lua 广播
---@param SpawnedActor AActor
---@param SpawnInstigator APawn
function FOnCustomDamageEventSpawnActor:Broadcast(SpawnedActor, SpawnInstigator) end


---@class FOnThrowBox : ULuaSingleDelegate
FOnThrowBox = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnThrowBox:Bind(Callback, Obj) end

---执行委托
function FOnThrowBox:Execute() end


---@class UVehicleCustomDamageEventComponent: UVehicleComponent
---@field OnSpawnActor FOnCustomDamageEventSpawnActor
---@field EventDataTable UDataTable
---@field ActorSpawnGlobalCooldown number
---@field OnThrowBox FOnThrowBox
---@field bEnableTrigger boolean
---@field OwnerHealthPercentage number
---@field ClientEvents ULuaArrayHelper<FTriggeredCustomDamageEvent>
---@field CacheUObjectMap ULuaMapHelper<string, UObject>
---@field bMannualSwitch boolean
local UVehicleCustomDamageEventComponent = {}

---@param InEnable boolean
function UVehicleCustomDamageEventComponent:SetEnableTrigger(InEnable) end

---@param hp number
---@param fuel number
function UVehicleCustomDamageEventComponent:OnVehicleHPFuelChanged(hp, fuel) end

function UVehicleCustomDamageEventComponent:OnRep_ClientEvents() end

---@param PreviousHealthPercentage number
---@param CurrentHealthPercentage number
---@param DamageInstigator AController
function UVehicleCustomDamageEventComponent:ProcessHealthChange(PreviousHealthPercentage, CurrentHealthPercentage, DamageInstigator) end
