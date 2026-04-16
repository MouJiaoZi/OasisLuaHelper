---@meta

---@class EAnimalType
---@field NONE number
---@field CHICKEN number
---@field DEER number
---@field ROE_DEER number
---@field RABBIT number
---@field GOBLIN number
---@field ICE number
EAnimalType = {}


---@class EAnimalState
---@field Idle number @待机
---@field Idle_Arder number @休闲
---@field Walk number @走路（待机移动）
---@field Trot number @小跑（快递移动）
---@field Run number @跑步（战斗移动）
---@field Jump number @跳跃
---@field Watch number @注视目标
---@field Dead number @死亡
---@field Scare number @惊吓
---@field Fighting number @战斗中
---@field Fear number @恐惧
---@field Cute number @卖萌
---@field PlayEmote number @动作表情
---@field Hold number @举着
---@field Falling number @下落
---@field Max number
EAnimalState = {}


---@class FAnimalStateMutual
---@field state1 EAnimalState
---@field state2 EAnimalState
FAnimalStateMutual = {}


---@class FCustomObjectEvent : ULuaMulticastDelegate
FCustomObjectEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ObjPtr: UObject) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomObjectEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param ObjPtr UObject
function FCustomObjectEvent:Broadcast(ObjPtr) end


---@class FOnAttachmentReplicationUpdate : ULuaMulticastDelegate
FOnAttachmentReplicationUpdate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AttachParent: AActor, AttachParent_Direct: AActor, AttachComponent: USceneComponent, AttachSocket: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAttachmentReplicationUpdate:Add(Callback, Obj) end

---触发 Lua 广播
---@param AttachParent AActor
---@param AttachParent_Direct AActor
---@param AttachComponent USceneComponent
---@param AttachSocket string
function FOnAttachmentReplicationUpdate:Broadcast(AttachParent, AttachParent_Direct, AttachComponent, AttachSocket) end


---@class FOnAnimalHitByVehicle : ULuaMulticastDelegate
FOnAnimalHitByVehicle = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InVehicle: ASTExtraVehicleBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAnimalHitByVehicle:Add(Callback, Obj) end

---触发 Lua 广播
---@param InVehicle ASTExtraVehicleBase
function FOnAnimalHitByVehicle:Broadcast(InVehicle) end


---@class ASTAnimalCharacter: ASTExtraSimpleCharacterBase, IGeneratorActorInterface
---@field AnimalStateMutuals ULuaArrayHelper<FAnimalStateMutual>
---@field RelativeLocation FVector
---@field WidgetClass UUserWidget
---@field bUseMediumRegionSize boolean
---@field AnimalGroupID number
---@field VehicleDamageSpeed number
---@field VehicleDamageValue number
---@field AnimalType EAnimalType
---@field AnimalStateSpeeds ULuaMapHelper<EAnimalState, number>
---@field HearRadius number
---@field RandomMeshs ULuaArrayHelper<USkeletalMesh>
---@field RandomMaterials ULuaArrayHelper<UMaterialInterface>
---@field CustomObjectEvent FCustomObjectEvent
---@field AttachedSocket string
---@field bIsFlyAnimal boolean
---@field FindNavAgentLocQueryMobilityType EOverrideQueryMobilityType
---@field FindNavAgentLocIgnoreCollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field FindNavAgentLocTraceChannel ECollisionChannel
---@field FindNavAgentLocZDownOffset number
---@field bProduceDropItemsAfterDead boolean
---@field VehicleHitSpeedLimit number
---@field bDeadImmediatelyByVehicleHit boolean
---@field HitByVehicleAddZSpeed number
---@field HitByVehicleDuration number
---@field bPlayHitAnimWhenNoDamage boolean
---@field bUseCharacterMovement boolean
---@field OnPreAttachmentReplication FOnAttachmentReplicationUpdate
---@field OnPostAttachmentReplication FOnAttachmentReplicationUpdate
---@field OnHitByVehicle FOnAnimalHitByVehicle
local ASTAnimalCharacter = {}

---@param Key string
---@param Value number
function ASTAnimalCharacter:SetExtendData(Key, Value) end

---@param EventInstigater AController
---@param DamageType number
function ASTAnimalCharacter:ClearOnDeath(EventInstigater, DamageType) end

function ASTAnimalCharacter:DisappearOnDeath() end

---@param WeatherMgr ADynamicWeatherMgr
---@param Event FWeatherChangeEvent
function ASTAnimalCharacter:HandleDynamicWeatherChanged(WeatherMgr, Event) end

---@return FWeatherDetailStatus
function ASTAnimalCharacter:GetCurrentWeatherStatus() end

---@param IsEnabled boolean
function ASTAnimalCharacter:ShowFootPrintEffect(IsEnabled) end

function ASTAnimalCharacter:BeforeDestroyed() end

function ASTAnimalCharacter:RegisterCharacterMovementComponent() end

---@param Velocity FVector
---@param Duration number
function ASTAnimalCharacter:SetInterpVelocityLock(Velocity, Duration) end
