---@meta

---@class EDeformEffectType
---@field Never number @Never trigger.
---@field InRegion number @Trigger when in near region.
---@field Always number @Always trigger.
EDeformEffectType = {}


---For Bone Retarget Feature Start *************************************************************
---@class FAnimNotifyStateBoneRetargetAdaptInfo
---@field BoneRetargetObj UObject
---@field bBoneRetargetAdaptInitDone boolean
FAnimNotifyStateBoneRetargetAdaptInfo = {}


---@class FSimpRepBunch
FSimpRepBunch = {}


---@class FTakeAnyDamageSignature : ULuaMulticastDelegate
FTakeAnyDamageSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamagedActor: AActor, Damage: number, DamageType: UDamageType, InstigatedBy: AController, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTakeAnyDamageSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamagedActor AActor
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function FTakeAnyDamageSignature:Broadcast(DamagedActor, Damage, DamageType, InstigatedBy, DamageCauser) end


---@class FTakePointDamageSignature : ULuaMulticastDelegate
FTakePointDamageSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamagedActor: AActor, Damage: number, InstigatedBy: AController, HitLocation: FVector, FHitComponent: UPrimitiveComponent, BoneName: string, ShotFromDirection: FVector, DamageType: UDamageType, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTakePointDamageSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamagedActor AActor
---@param Damage number
---@param InstigatedBy AController
---@param HitLocation FVector
---@param FHitComponent UPrimitiveComponent
---@param BoneName string
---@param ShotFromDirection FVector
---@param DamageType UDamageType
---@param DamageCauser AActor
function FTakePointDamageSignature:Broadcast(DamagedActor, Damage, InstigatedBy, HitLocation, FHitComponent, BoneName, ShotFromDirection, DamageType, DamageCauser) end


---@class FActorBeginOverlapSignature : ULuaMulticastDelegate
FActorBeginOverlapSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OverlappedActor: AActor, OtherActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorBeginOverlapSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param OverlappedActor AActor
---@param OtherActor AActor
function FActorBeginOverlapSignature:Broadcast(OverlappedActor, OtherActor) end


---@class FActorEndOverlapSignature : ULuaMulticastDelegate
FActorEndOverlapSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OverlappedActor: AActor, OtherActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorEndOverlapSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param OverlappedActor AActor
---@param OtherActor AActor
function FActorEndOverlapSignature:Broadcast(OverlappedActor, OtherActor) end


---@class FActorHitSignature : ULuaMulticastDelegate
FActorHitSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfActor: AActor, OtherActor: AActor, NormalImpulse: FVector, Hit: FHitResult) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorHitSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function FActorHitSignature:Broadcast(SelfActor, OtherActor, NormalImpulse, Hit) end


---@class FActorBeginCursorOverSignature : ULuaMulticastDelegate
FActorBeginCursorOverSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TouchedActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorBeginCursorOverSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param TouchedActor AActor
function FActorBeginCursorOverSignature:Broadcast(TouchedActor) end


---@class FActorEndCursorOverSignature : ULuaMulticastDelegate
FActorEndCursorOverSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TouchedActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorEndCursorOverSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param TouchedActor AActor
function FActorEndCursorOverSignature:Broadcast(TouchedActor) end


---@class FActorOnClickedSignature : ULuaMulticastDelegate
FActorOnClickedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TouchedActor: AActor, ButtonPressed: FKey) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorOnClickedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param TouchedActor AActor
---@param ButtonPressed FKey
function FActorOnClickedSignature:Broadcast(TouchedActor, ButtonPressed) end


---@class FActorOnReleasedSignature : ULuaMulticastDelegate
FActorOnReleasedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TouchedActor: AActor, ButtonReleased: FKey) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorOnReleasedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param TouchedActor AActor
---@param ButtonReleased FKey
function FActorOnReleasedSignature:Broadcast(TouchedActor, ButtonReleased) end


---@class FActorOnInputTouchBeginSignature : ULuaMulticastDelegate
FActorOnInputTouchBeginSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FingerIndex: ETouchIndex, TouchedActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorOnInputTouchBeginSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param FingerIndex ETouchIndex
---@param TouchedActor AActor
function FActorOnInputTouchBeginSignature:Broadcast(FingerIndex, TouchedActor) end


---@class FActorOnInputTouchEndSignature : ULuaMulticastDelegate
FActorOnInputTouchEndSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FingerIndex: ETouchIndex, TouchedActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorOnInputTouchEndSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param FingerIndex ETouchIndex
---@param TouchedActor AActor
function FActorOnInputTouchEndSignature:Broadcast(FingerIndex, TouchedActor) end


---@class FActorBeginTouchOverSignature : ULuaMulticastDelegate
FActorBeginTouchOverSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FingerIndex: ETouchIndex, TouchedActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorBeginTouchOverSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param FingerIndex ETouchIndex
---@param TouchedActor AActor
function FActorBeginTouchOverSignature:Broadcast(FingerIndex, TouchedActor) end


---@class FActorEndTouchOverSignature : ULuaMulticastDelegate
FActorEndTouchOverSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FingerIndex: ETouchIndex, TouchedActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorEndTouchOverSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param FingerIndex ETouchIndex
---@param TouchedActor AActor
function FActorEndTouchOverSignature:Broadcast(FingerIndex, TouchedActor) end


---@class FActorDestroyedSignature : ULuaMulticastDelegate
FActorDestroyedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DestroyedActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorDestroyedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param DestroyedActor AActor
function FActorDestroyedSignature:Broadcast(DestroyedActor) end


---@class FActorEndPlaySignature : ULuaMulticastDelegate
FActorEndPlaySignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Actor: AActor, EndPlayReason: EEndPlayReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorEndPlaySignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Actor AActor
---@param EndPlayReason EEndPlayReason
function FActorEndPlaySignature:Broadcast(Actor, EndPlayReason) end


---@class FMakeNoiseDelegate : ULuaSingleDelegate
FMakeNoiseDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: AActor, Param2: number, Param3: APawn, Param4: FVector, Param5: number, Param6: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMakeNoiseDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 AActor
---@param Param2 number
---@param Param3 APawn
---@param Param4 FVector
---@param Param5 number
---@param Param6 string
function FMakeNoiseDelegate:Execute(Param1, Param2, Param3, Param4, Param5, Param6) end


---@class FOnProcessEvent : ULuaSingleDelegate
FOnProcessEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: AActor, Param2: UFunction, Param3: nil) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnProcessEvent:Bind(Callback, Obj) end

---执行委托
---@param Param1 AActor
---@param Param2 UFunction
---@param Param3 nil
function FOnProcessEvent:Execute(Param1, Param2, Param3) end


---@class FActorChannelClose : ULuaMulticastDelegate
FActorChannelClose = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: string, Param2: boolean, Param3: boolean, Param4: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorChannelClose:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 string
---@param Param2 boolean
---@param Param3 boolean
---@param Param4 boolean
function FActorChannelClose:Broadcast(Param1, Param2, Param3, Param4) end


---@class FActorDestroyed : ULuaMulticastDelegate
FActorDestroyed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorDestroyed:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 AActor
function FActorDestroyed:Broadcast(Param1) end


---@class FBecomeOrEndViewTarget : ULuaMulticastDelegate
FBecomeOrEndViewTarget = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: APlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBecomeOrEndViewTarget:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC APlayerController
function FBecomeOrEndViewTarget:Broadcast(PC) end


---@class FActorOnVault : ULuaMulticastDelegate
FActorOnVault = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: AActor, HitLocation: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorOnVault:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character AActor
---@param HitLocation FVector
function FActorOnVault:Broadcast(Character, HitLocation) end


---@class FOnTryGetBoneRetargetMeshComp : ULuaSingleDelegate
FOnTryGetBoneRetargetMeshComp = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: USkeletalMeshComponent) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTryGetBoneRetargetMeshComp:Bind(Callback, Obj) end

---执行委托
---@param Param1 USkeletalMeshComponent
function FOnTryGetBoneRetargetMeshComp:Execute(Param1) end


---@class FOnIsForceEnableAnimNotifyBoneRetargetAdapt : ULuaSingleDelegate
FOnIsForceEnableAnimNotifyBoneRetargetAdapt = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: USkeletalMeshComponent) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnIsForceEnableAnimNotifyBoneRetargetAdapt:Bind(Callback, Obj) end

---执行委托
---@param Param1 USkeletalMeshComponent
function FOnIsForceEnableAnimNotifyBoneRetargetAdapt:Execute(Param1) end


---@class FbEnableSearchAllDescendants : ULuaSingleDelegate
FbEnableSearchAllDescendants = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: USkeletalMeshComponent) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FbEnableSearchAllDescendants:Bind(Callback, Obj) end

---执行委托
---@param Param1 USkeletalMeshComponent
function FbEnableSearchAllDescendants:Execute(Param1) end


---@class FOnGetExtraParticleParentComponents : ULuaSingleDelegate
FOnGetExtraParticleParentComponents = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: USkeletalMeshComponent) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGetExtraParticleParentComponents:Bind(Callback, Obj) end

---执行委托
---@param Param1 USkeletalMeshComponent
function FOnGetExtraParticleParentComponents:Execute(Param1) end


---@class UAnimNotifyStateBoneRetargetAdaptInfoObj: UObject
---@field AnimNotifyStateBoneRetargetAdaptInfoMap ULuaMapHelper<UObject, FAnimNotifyStateBoneRetargetAdaptInfo>
local UAnimNotifyStateBoneRetargetAdaptInfoObj = {}


---Actor is the base class for an Object that can be placed or spawned in a level. Actors may contain a collection of ActorComponents, which can be used to control how actors move, how they are rendered, etc. The other main function of an Actor is the replication of properties and function calls across the network during play.
---@class AActor: UObject
---@field PrimaryActorTick any @Primary Actor tick function, which calls TickActor(). Tick functions can be configured to control whether ticking is enabled, at what time during a frame the update occurs, and to set up tick dependencies.
---@field CustomTimeDilation number @Allow each actor to run at a different time speed. The DeltaTime for a frame is multiplied by the global TimeDilation (in WorldSettings) and this CustomTimeDilation for this actor's tick.
---@field bAllowBPReceiveTickEvent boolean @If true, bp tick will be called , otherwise skipped
---@field TickAdapterInterval number
---@field bTickAdapterRqrMainFrame number
---@field bSupportSuspendTick number
---@field bHidden number @Allows us to only see this Actor in the Editor, and not in the actual game.
---@field bConsideredHidden number
---@field bNetTemporary number @If true, when the actor is spawned it will be sent to the client but receive no further replication updates from the server afterwards.
---@field bNetStartup number @If true, this actor was loaded directly from the map, and for networking purposes can be addressed by its full path name
---@field bOnlyRelevantToOwner number @If true, this actor is only relevant to its owner. If this flag is changed during play, all non-owner channels would need to be explicitly closed.
---@field bOwningSpecificNetConsideration number @If true, this actor is considered for replication in an owning-specific semantics.
---@field bRegionBasedNetConsideration number @If true, this actor is considered for replication in region-based semantics.
---@field bMRegionBasedNetConsideration number @If true, this actor is considered for replication in Mregion-based semantics.
---@field bMRegionStatic number
---@field bFastDistBasedNetRelevancy number @If true, this actor is checked for relevancy by fast distance-based calculation.
---@field bGroupBasedNetRelevancy number @If true, this actor is checked for relevancy by relevancy group first.
---@field bLazyNetReplication number @If true, this actor is only replicated by calling ForceNetUpdate.
---@field bClientSimulatedRelevancy number @( Engine Modify : zengzuo ) NOTE: Mark "Client Simulated Relevancy" for ob / replay
---@field bCheckAllRelyOnAttachment number
---@field bAlwaysRelevant number @Always relevant for network (overrides bOnlyRelevantToOwner).
---@field bForceOwnedMeshAlwaysRefreshBones number
---@field bTearOff number @If true, this actor is no longer replicated to new clients, and is "torn off" (becomes a ROLE_Authority) on clients to which it was being replicated.
---@field bExchangedRoles number @Whether we have already exchanged Role/RemoteRole on the client, as when removing then re-adding a streaming level. Causes all initialization to be performed again even though the actor may not have actually been reloaded.
---@field bNetLoadOnClient number @This actor will be loaded on network clients during map load
---@field bNetUseOwnerRelevancy number @If actor has valid Owner, call Owner's IsNetRelevantFor and GetNetPriority
---@field bBlockInput number @If true, all input on the stack below this actor will not be considered
---@field bCanBeBaseForCharacter number @If true, all input on the stack below this actor will not be considered
---@field bAllowTickBeforeBeginPlay number @Whether we allow this Actor to tick before it receives the BeginPlay event. Normally we don't tick actors until after BeginPlay; this setting allows this behavior to be overridden. This Actor must be able to tick for this setting to be relevant.
---@field bCustomHandlingNetworkSubobjectDeletion number
---@field bReplicates number @If true, this actor will replicate to remote machines
---@field RemoteRole ENetRole @Describes how much control the remote machine has over the actor.
---@field bReplicateMovement number @If true, replicate movement/location related properties. Actor must also be set to replicate.
---@field bActorEnableCollision number @Enables any collision on this actor.
---@field bEnableDeferredConstructComponent number
---@field bUseSpawnReplicatedActorMaxFrameDelayFromConfig number
---@field PendingConstructComponents ULuaArrayHelper<FDeferedComponentUnit>
---@field PreSCSComponentsBeforeDeferContruction ULuaArrayHelper<UActorComponent>
---@field AsyncReplicatedActorSpawnDistA number
---@field AsyncReplicatedActorSpawnDistB number
---@field SpawnReplicatedActorMaxFrameDelayFromConfig number
---@field ScriptNetworkReplicatedPropertyWrapper FScriptNetworkReplicatedPropertyWrapper
---@field NetDriverName string @Used to specify the net driver to replicate on (NAME_None || NAME_GameNetDriver is the default net driver)
---@field ReplicatedMovement any @Used for replication of our RootComponent's position and velocity
---@field InitialLifeSpan number @How long this Actor lives before dying, 0=forever. Note this is the INITIAL value and should not be modified once play has begun.
---@field AttachmentReplication any @Used for replicating attachment of this actor's RootComponent to another actor. This is filled in via GatherCurrentMovement() when the RootComponent has an AttachParent.
---@field Role ENetRole @Describes how much control the local machine has over the actor.
---@field NetDormancy ENetDormancy @Dormancy setting for actor to take itself off of the replication list without being destroyed on clients.
---@field AutoReceiveInput EAutoReceiveInput @Automatically registers this actor to receive input from a player.
---@field InputPriority number @The priority of this input component when pushed in to the stack.
---@field NetCullDistanceSquared number @Square of the max distance from the client's viewpoint that this actor is relevant and will be replicated.
---@field NetCullFactorSquared number @NetCullDistanceSquared Factor for Connection
---@field OBRelevantFactor number
---@field NetTag number @Internal - used by UWorld::ServerTickClients()
---@field NetConsiderFrequency number @How often (per second) this actor enters consider list, should be greater than or equal to NetUpdateFrequency
---@field NetUpdateFrequency number @How often (per second) this actor will be checked for replication, used to determine NetUpdateTime
---@field MinNetUpdateFrequency number @Used to determine what rate to throttle down to when replicated properties are changing infrequently
---@field NetUpdateJumpFrame number
---@field NetPriority number @Priority for this actor when checking for replication in a low bandwidth or saturated situation, higher priority means it is more likely to replicate
---@field bAutoDestroyWhenFinished number @If true then destroy self when "finished", meaning all relevant components report that they are done and no timelines or timers are in flight.
---@field bCanBeDamaged number @Whether this actor can take damage. Must be true for damage events (e.g. ReceiveDamage()) to be called.
---@field bCanNotifyDamager number @Whether this actor can Notify damager. Must be true for notify damager events (PreDamageOther) to be called.
---@field bRepParentUpdatePhx number
---@field bActorIsBeingDestroyed number @Set when actor is about to be deleted.
---@field bCollideWhenPlacing number @This actor collides with the world when placing in the editor, even if RootComponent collision is disabled. Does not affect spawning, @see SpawnCollisionHandlingMethod
---@field bFindCameraComponentWhenViewTarget number @If true, this actor should search for an owned camera component to view through when used as a view target.
---@field bRelevantForNetworkReplays number @If true, this actor will be replicated to network replays (default is true)
---@field bForcedRelevancyCheckForReplay number
---@field bLowUpdateRateForReplay number
---@field bGenerateOverlapEventsDuringLevelStreaming number @If true, this actor will generate overlap events when spawned as part of level streaming. You might enable this is in the case where a streaming level loads around an actor and you want overlaps to trigger.
---@field bCanCachedInWorldSpecialActorList number
---@field bShouldDumpCallstackWhenMovingfast number
---@field bCanBeInCluster number @If true, this actor can be put inside of a GC Cluster to improve Garbage Collection performance
---@field bAllowReceiveTickEventOnDedicatedServer number @If false, the Blueprint ReceiveTick() event will be disabled on dedicated servers.
---@field bActorSeamlessTraveled number @Indicates the actor was pulled through a seamless travel.
---@field bIgnoresOriginShifting number @Whether this actor should not be affected by world origin shifting.
---@field bEnableAutoLODGeneration number @If true, and if World setting has bEnableHierarchicalLOD equal to true, then it will generate LODActor from groups of clustered Actor
---@field SpawnCollisionHandlingMethod ESpawnActorCollisionHandlingMethod @Controls how to handle spawning this actor in a situation where it's colliding with something else. "Default" means AlwaysSpawn here.
---@field CollisionCheckMoveDisStep number
---@field CollisionCheckMoveDegreeStep number
---@field CollisionCheckCircleRadius number
---@field Children ULuaArrayHelper<AActor> @Array of Actors whose Owner is this actor
---@field ControllingMatineeActors ULuaArrayHelper<AMatineeActor> @The matinee actors that control this actor.
---@field Layers ULuaArrayHelper<string> @Layer's the actor belongs to.  This is outside of the editoronly data to allow hiding of LD-specified layers at runtime for profiling.
---@field ParentComponent UChildActorComponent @The UChildActorComponent that owns this Actor.
---@field Tags ULuaArrayHelper<string> @Array of tags that can be used for grouping and categorizing.
---@field DynamicTags ULuaArrayHelper<string>
---@field OnTakeAnyDamage FTakeAnyDamageSignature @Called when the actor is damaged in any way.
---@field OnTakePointDamage FTakePointDamageSignature @Called when the actor is damaged by point damage.
---@field OnActorBeginOverlap FActorBeginOverlapSignature @Called when another actor begins to overlap this actor, for example a player walking into a trigger. For events when objects have a blocking collision, for example a player hitting a wall, see 'Hit' events.
---@field OnActorEndOverlap FActorEndOverlapSignature @Called when another actor stops overlapping this actor.
---@field OnBeginCursorOver FActorBeginCursorOverSignature @Called when the mouse cursor is moved over this actor if mouse over events are enabled in the player controller.
---@field OnEndCursorOver FActorEndCursorOverSignature @Called when the mouse cursor is moved off this actor if mouse over events are enabled in the player controller.
---@field OnClicked FActorOnClickedSignature @Called when the left mouse button is clicked while the mouse is over this actor and click events are enabled in the player controller.
---@field OnReleased FActorOnReleasedSignature @Called when the left mouse button is released while the mouse is over this actor and click events are enabled in the player controller.
---@field OnInputTouchBegin FActorOnInputTouchBeginSignature @Called when a touch input is received over this actor when touch events are enabled in the player controller.
---@field OnInputTouchEnd FActorOnInputTouchEndSignature @Called when a touch input is received over this component when touch events are enabled in the player controller.
---@field OnInputTouchEnter FActorBeginTouchOverSignature @Called when a finger is moved over this actor when touch over events are enabled in the player controller.
---@field OnInputTouchLeave FActorEndTouchOverSignature @Called when a finger is moved off this actor when touch over events are enabled in the player controller.
---@field OnActorHit FActorHitSignature @Called when this Actor hits (or is hit by) something solid. This could happen due to things like Character movement, using Set Location with 'sweep' enabled, or physics simulation. For events when objects overlap (e.g. walking into a trigger) see the 'Overlap' event.
---@field OnActorHitNew FActorHitSignature @same as OnActorHit, but will Recivie StartPenetrating Hits
---@field OnDestroyed FActorDestroyedSignature @Event triggered when the actor is destroyed.
---@field OnEndPlay FActorEndPlaySignature @Event triggered when the actor is being removed from a level.
---@field OnBecomeViewTargetEvent FBecomeOrEndViewTarget
---@field OnEndViewTargetEvent FBecomeOrEndViewTarget
---@field OnEndBlendViewTargetEvent FBecomeOrEndViewTarget
---@field ActorOnVaultEvent FActorOnVault
---@field BlueprintCreatedComponents ULuaArrayHelper<UActorComponent> @Array of ActorComponents that are created by blueprints and serialized per-instance.
---@field InstanceComponents ULuaArrayHelper<UActorComponent> @Array of ActorComponents that have been added by the user on a per-instance basis.
---@field BackupRestoreIdentifier number
---@field NeedsBackupStates number
---@field bSkipNewDuplicateOwnedComponents number @If you call CreateComponentFromTemplate on an actor which already owns a component with the same name, problem comes out Optimized version will return the existing component, but not duplicate a new one, in this case, setting this switch to true is necessary
---@field bCanBeNetContainer number
---@field bDonotAsSubActor number
---@field DeformEffectType EDeformEffectType
---@field bBlockLandscapeDeform boolean @If this actor will block any overlap deform.
local AActor = {}

---@return string
function AActor:GetToString() end

---Called on client when updated bReplicateMovement value is received for this actor.
function AActor:OnRep_ReplicateMovement() end

---Networking - Server - TearOff this actor to stop replication to clients. Will set bTearOff to true.
function AActor:TearOff() end

function AActor:OnRep_Role() end

function AActor:OnRep_RemoteRole() end

function AActor:OnRep_Hidden() end

function AActor:OnRep_TearOff() end

function AActor:OnRep_CanBeDamaged() end

function AActor:OnRep_Owner() end

---@param OneFrameConstructTimeMS number
---@param bCreateImmediately boolean
---@return number
function AActor:TickConstructComponentWithTime(OneFrameConstructTimeMS, bCreateImmediately) end

function AActor:OnRep_ScriptNetworkReplicatedPropertyWrapper() end

---@param InObject UObject
function AActor:CallSubObjectLuaOnRep(InObject) end

---@param Content FScriptNetworkRemoteContent
function AActor:ServerSendScriptNetworkRemoteContent(Content) end

---@param Content FScriptNetworkRemoteContent
function AActor:ServerSendScriptNetworkRemoteContent_Unreliable(Content) end

---@param Content FScriptNetworkRemoteContent
function AActor:ClientSendScriptNetworkRemoteContent(Content) end

---@param Content FScriptNetworkRemoteContent
function AActor:ClientSendScriptNetworkRemoteContent_Unreliable(Content) end

---@param Content FScriptNetworkRemoteContent
function AActor:ReceiveScriptNetworkRemoteContent(Content) end

---Set whether this actor replicates to network clients. When this actor is spawned on the server it will be sent to clients as well. Properties flagged for replication will update on clients if they change on the server. Internally changes the RemoteRole property and handles the cases where the actor needs to be added to the network actor list.
---@param bInReplicates boolean
function AActor:SetReplicates(bInReplicates) end

---Set whether this actor's movement replicates to network clients.
---@param bInReplicateMovement boolean
function AActor:SetReplicateMovement(bInReplicateMovement) end

---Returns how much control the local machine has over this actor.
---@return ENetRole
function AActor:GetLocalRole() end

---Returns how much control the remote machine has over this actor.
---@return ENetRole
function AActor:GetRemoteRole() end

---@return ENetRole
function AActor:GetRole() end

---Called on client when updated AttachmentReplication value is received for this actor.
function AActor:OnRep_AttachmentReplication() end

---Called on clients when Instigator is replicated.
function AActor:OnRep_Instigator() end

---@param Tag string
function AActor:AddDynamicTag(Tag) end

---@param Tag string
function AActor:RemoveDynamicTag(Tag) end

---Pushes this actor on to the stack of input being handled by a PlayerController.
---@param PlayerController APlayerController
function AActor:EnableInput(PlayerController) end

---Removes this actor from the stack of input being handled by a PlayerController.
---@param PlayerController APlayerController
function AActor:DisableInput(PlayerController) end

---Gets the value of the input axis if input is enabled for this actor.
---@param InputAxisName string
---@return number
function AActor:GetInputAxisValue(InputAxisName) end

---Gets the value of the input axis key if input is enabled for this actor.
---@param InputAxisKey FKey
---@return number
function AActor:GetInputAxisKeyValue(InputAxisKey) end

---Gets the value of the input axis key if input is enabled for this actor.
---@param InputAxisKey FKey
---@return FVector
function AActor:GetInputVectorAxisValue(InputAxisKey) end

---Returns the location of the RootComponent of this Actor
---@return FVector
function AActor:K2_GetActorLocation() end

---Move the Actor to the specified location. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.
---@param NewLocation FVector
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
---@return boolean
function AActor:K2_SetActorLocation(NewLocation, bSweep, SweepHitResult, bTeleport) end

---Returns rotation of the RootComponent of this Actor.
---@return FRotator
function AActor:K2_GetActorRotation() end

---Get the forward (X) vector (length 1.0) from this Actor, in world space.
---@return FVector
function AActor:GetActorForwardVector() end

---Get the up (Z) vector (length 1.0) from this Actor, in world space.
---@return FVector
function AActor:GetActorUpVector() end

---Get the right (Y) vector (length 1.0) from this Actor, in world space.
---@return FVector
function AActor:GetActorRightVector() end

---Returns the bounding box of all components that make up this Actor (excluding ChildActorComponents).
---@param bOnlyCollidingComponents boolean
---@param Origin FVector
---@param BoxExtent FVector
function AActor:GetActorBounds(bOnlyCollidingComponents, Origin, BoxExtent) end

---Returns velocity (in cm/s (Unreal Units/second) of the rootcomponent if it is either using physics or has an associated MovementComponent
---@return FVector
function AActor:GetVelocity() end

---Set the Actor's rotation instantly to the specified rotation. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
---@param NewRotation FRotator
---@param bTeleportPhysics boolean
---@return boolean
function AActor:K2_SetActorRotation(NewRotation, bTeleportPhysics) end

---Move the actor instantly to the specified location and rotation. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.
---@param NewLocation FVector
---@param NewRotation FRotator
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
---@return boolean
function AActor:K2_SetActorLocationAndRotation(NewLocation, NewRotation, bSweep, SweepHitResult, bTeleport) end

---Set the Actor's world-space scale.
---@param NewScale3D FVector
function AActor:SetActorScale3D(NewScale3D) end

---Returns the Actor's world-space scale.
---@return FVector
function AActor:GetActorScale3D() end

---Returns the distance from this Actor to OtherActor.
---@param OtherActor AActor
---@return number
function AActor:GetDistanceTo(OtherActor) end

---Returns the squared distance from this Actor to OtherActor.
---@param OtherActor AActor
---@return number
function AActor:GetSquaredDistanceTo(OtherActor) end

---Returns the distance from this Actor to OtherActor, ignoring Z.
---@param OtherActor AActor
---@return number
function AActor:GetHorizontalDistanceTo(OtherActor) end

---Returns the distance from this Actor to OtherActor, ignoring XY.
---@param OtherActor AActor
---@return number
function AActor:GetVerticalDistanceTo(OtherActor) end

---Returns the dot product from this Actor to OtherActor. Returns -2.0 on failure. Returns 0.0 for coincidental actors.
---@param OtherActor AActor
---@return number
function AActor:GetDotProductTo(OtherActor) end

---Returns the dot product from this Actor to OtherActor, ignoring Z. Returns -2.0 on failure. Returns 0.0 for coincidental actors.
---@param OtherActor AActor
---@return number
function AActor:GetHorizontalDotProductTo(OtherActor) end

---Adds a delta to the location of this actor in world space. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.
---@param DeltaLocation FVector
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function AActor:K2_AddActorWorldOffset(DeltaLocation, bSweep, SweepHitResult, bTeleport) end

---Adds a delta to the rotation of this actor in world space. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.
---@param DeltaRotation FRotator
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function AActor:K2_AddActorWorldRotation(DeltaRotation, bSweep, SweepHitResult, bTeleport) end

---Adds a delta to the transform of this actor in world space. Scale is unchanged.
---@param DeltaTransform FTransform
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function AActor:K2_AddActorWorldTransform(DeltaTransform, bSweep, SweepHitResult, bTeleport) end

---Set the Actors transform to the specified one. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.
---@param NewTransform FTransform
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
---@return boolean
function AActor:K2_SetActorTransform(NewTransform, bSweep, SweepHitResult, bTeleport) end

---Adds a delta to the location of this component in its local reference frame. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.
---@param DeltaLocation FVector
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function AActor:K2_AddActorLocalOffset(DeltaLocation, bSweep, SweepHitResult, bTeleport) end

---Adds a delta to the rotation of this component in its local reference frame Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.
---@param DeltaRotation FRotator
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function AActor:K2_AddActorLocalRotation(DeltaRotation, bSweep, SweepHitResult, bTeleport) end

---Adds a delta to the transform of this component in its local reference frame Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.
---@param NewTransform FTransform
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function AActor:K2_AddActorLocalTransform(NewTransform, bSweep, SweepHitResult, bTeleport) end

---Set the actor's RootComponent to the specified relative location. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.
---@param NewRelativeLocation FVector
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function AActor:K2_SetActorRelativeLocation(NewRelativeLocation, bSweep, SweepHitResult, bTeleport) end

---Set the actor's RootComponent to the specified relative rotation Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.
---@param NewRelativeRotation FRotator
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function AActor:K2_SetActorRelativeRotation(NewRelativeRotation, bSweep, SweepHitResult, bTeleport) end

---Set the actor's RootComponent to the specified relative transform Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.
---@param NewRelativeTransform FTransform
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function AActor:K2_SetActorRelativeTransform(NewRelativeTransform, bSweep, SweepHitResult, bTeleport) end

---Set the actor's RootComponent to the specified relative scale 3d
---@param NewRelativeScale FVector
function AActor:SetActorRelativeScale3D(NewRelativeScale) end

---Return the actor's relative scale 3d
---@return FVector
function AActor:GetActorRelativeScale3D() end

---Sets the actor to be hidden in the game
---@param bNewHidden boolean
function AActor:SetActorHiddenInGame(bNewHidden) end

---@param bNewHidden boolean
function AActor:SetActorConsideredHidden(bNewHidden) end

---@param bIsRelevant boolean
function AActor:SetActorSimulatedRelevancy(bIsRelevant) end

---NOTE : Callback of Check Actor Relevancy in Client for ob or replay
---@param bIsRelevant boolean
---@param bConsiderHidden boolean
function AActor:OnActorSimulatedRelevant(bIsRelevant, bConsiderHidden) end

---Allows enabling/disabling collision for the whole actor
---@param bNewActorEnableCollision boolean
function AActor:SetActorEnableCollision(bNewActorEnableCollision) end

---Get current state of collision for the whole actor
---@return boolean
function AActor:GetActorEnableCollision() end

---Destroy the actor
function AActor:K2_DestroyActor() end

---Returns whether this actor has network authority
---@return boolean
function AActor:HasAuthority() end

---DEPRECATED - Use Component::DestroyComponent
---@param Component UActorComponent
function AActor:K2_DestroyComponent(Component) end

---Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered.
---@param InParent USceneComponent
---@param InSocketName string
---@param AttachLocationType EAttachLocation
---@param bWeldSimulatedBodies boolean
function AActor:K2_AttachRootComponentTo(InParent, InSocketName, AttachLocationType, bWeldSimulatedBodies) end

---Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered.
---@param Parent USceneComponent
---@param SocketName string
---@param LocationRule EAttachmentRule
---@param RotationRule EAttachmentRule
---@param ScaleRule EAttachmentRule
---@param bWeldSimulatedBodies boolean
function AActor:K2_AttachToComponent(Parent, SocketName, LocationRule, RotationRule, ScaleRule, bWeldSimulatedBodies) end

---Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered.
---@param InParentActor AActor
---@param InSocketName string
---@param AttachLocationType EAttachLocation
---@param bWeldSimulatedBodies boolean
function AActor:K2_AttachRootComponentToActor(InParentActor, InSocketName, AttachLocationType, bWeldSimulatedBodies) end

---Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered.
---@param ParentActor AActor
---@param SocketName string
---@param LocationRule EAttachmentRule
---@param RotationRule EAttachmentRule
---@param ScaleRule EAttachmentRule
---@param bWeldSimulatedBodies boolean
function AActor:K2_AttachToActor(ParentActor, SocketName, LocationRule, RotationRule, ScaleRule, bWeldSimulatedBodies) end

---Snap the RootComponent of this Actor to the supplied Actor's root component, optionally at a named socket. It is not valid to call this on components that are not Registered. If InSocketName == NAME_None, it will attach to origin of the InParentActor.
---@param InParentActor AActor
---@param InSocketName string
function AActor:SnapRootComponentTo(InParentActor, InSocketName) end

---Detaches the RootComponent of this Actor from any SceneComponent it is currently attached to.
---@param bMaintainWorldPosition boolean
function AActor:DetachRootComponentFromParent(bMaintainWorldPosition) end

---Detaches the RootComponent of this Actor from any SceneComponent it is currently attached to.
---@param LocationRule EDetachmentRule
---@param RotationRule EDetachmentRule
---@param ScaleRule EDetachmentRule
function AActor:K2_DetachFromActor(LocationRule, RotationRule, ScaleRule) end

---See if this actor contains the supplied tag
---@param Tag string
---@return boolean
function AActor:ActorHasTag(Tag) end

---Get CustomTimeDilation - this can be used for input control or speed control for slomo. We don't want to scale input globally because input can be used for UI, which do not care for TimeDilation.
---@return number
function AActor:GetActorTimeDilation() end

---Make this actor tick after PrerequisiteActor. This only applies to this actor's tick function; dependencies for owned components must be set up separately if desired.
---@param PrerequisiteActor AActor
function AActor:AddTickPrerequisiteActor(PrerequisiteActor) end

---Make this actor tick after PrerequisiteComponent. This only applies to this actor's tick function; dependencies for owned components must be set up separately if desired.
---@param PrerequisiteComponent UActorComponent
function AActor:AddTickPrerequisiteComponent(PrerequisiteComponent) end

---Remove tick dependency on PrerequisiteActor.
---@param PrerequisiteActor AActor
function AActor:RemoveTickPrerequisiteActor(PrerequisiteActor) end

---Remove tick dependency on PrerequisiteComponent.
---@param PrerequisiteComponent UActorComponent
function AActor:RemoveTickPrerequisiteComponent(PrerequisiteComponent) end

---Gets whether this actor can tick when paused.
---@return boolean
function AActor:GetTickableWhenPaused() end

---Sets whether this actor can tick when paused.
---@param bTickableWhenPaused boolean
function AActor:SetTickableWhenPaused(bTickableWhenPaused) end

---The number of seconds (in game time) since this Actor was created, relative to Get Game Time In Seconds.
---@return number
function AActor:GetGameTimeSinceCreation() end

---Trigger a noise caused by a given Pawn, at a given location. Note that the NoiseInstigator Pawn MUST have a PawnNoiseEmitterComponent for the noise to be detected by a PawnSensingComponent. Senders of MakeNoise should have an Instigator if they are not pawns, or pass a NoiseInstigator.
---@param Loudness number
---@param NoiseInstigator APawn
---@param NoiseLocation FVector
---@param MaxRange number
---@param Tag string
function AActor:MakeNoise(Loudness, NoiseInstigator, NoiseLocation, MaxRange, Tag) end

---Event when play begins for this actor.
function AActor:ReceiveBeginPlay() end

function AActor:ReceiveReInitForReplay() end

function AActor:ReceiveFastForwardFinishedForReplay() end

---@param bIsRelevant boolean
---@param bConsiderHidden boolean
function AActor:ReceiveActorSimulatedRelevant(bIsRelevant, bConsiderHidden) end

---Event when this actor takes ANY damage
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function AActor:ReceiveAnyDamage(Damage, DamageType, InstigatedBy, DamageCauser) end

---Event when this actor takes RADIAL damage
---@param DamageReceived number
---@param DamageType UDamageType
---@param Origin FVector
---@param HitInfo FHitResult
---@param InstigatedBy AController
---@param DamageCauser AActor
function AActor:ReceiveRadialDamage(DamageReceived, DamageType, Origin, HitInfo, InstigatedBy, DamageCauser) end

---Event when this actor takes POINT damage
---@param Damage number
---@param DamageType UDamageType
---@param HitLocation FVector
---@param HitNormal FVector
---@param HitComponent UPrimitiveComponent
---@param BoneName string
---@param ShotFromDirection FVector
---@param InstigatedBy AController
---@param DamageCauser AActor
---@param HitInfo FHitResult
function AActor:ReceivePointDamage(Damage, DamageType, HitLocation, HitNormal, HitComponent, BoneName, ShotFromDirection, InstigatedBy, DamageCauser, HitInfo) end

---Event called every frame
---@param DeltaSeconds number
function AActor:ReceiveTick(DeltaSeconds) end

---Event when this actor overlaps another actor, for example a player walking into a trigger. For events when objects have a blocking collision, for example a player hitting a wall, see 'Hit' events.
---@param OtherActor AActor
function AActor:ReceiveActorBeginOverlap(OtherActor) end

---Event when an actor no longer overlaps another actor, and they have separated.
---@param OtherActor AActor
function AActor:ReceiveActorEndOverlap(OtherActor) end

---Event when this actor has the mouse moved over it with the clickable interface.
function AActor:ReceiveActorBeginCursorOver() end

---Event when this actor has the mouse moved off of it with the clickable interface.
function AActor:ReceiveActorEndCursorOver() end

---Event when this actor is clicked by the mouse when using the clickable interface.
---@param ButtonPressed FKey
function AActor:ReceiveActorOnClicked(ButtonPressed) end

---Event when this actor is under the mouse when left mouse button is released while using the clickable interface.
---@param ButtonReleased FKey
function AActor:ReceiveActorOnReleased(ButtonReleased) end

---Event when this actor is touched when click events are enabled.
---@param FingerIndex ETouchIndex
function AActor:ReceiveActorOnInputTouchBegin(FingerIndex) end

---Event when this actor is under the finger when untouched when click events are enabled.
---@param FingerIndex ETouchIndex
function AActor:ReceiveActorOnInputTouchEnd(FingerIndex) end

---Event when this actor has a finger moved over it with the clickable interface.
---@param FingerIndex ETouchIndex
function AActor:ReceiveActorOnInputTouchEnter(FingerIndex) end

---Event when this actor has a finger moved off of it with the clickable interface.
---@param FingerIndex ETouchIndex
function AActor:ReceiveActorOnInputTouchLeave(FingerIndex) end

---Returns list of actors this actor is overlapping (any component overlapping any component). Does not return itself.
---@param OverlappingActors ULuaArrayHelper<AActor>
---@param ClassFilter AActor
function AActor:GetOverlappingActors(OverlappingActors, ClassFilter) end

---Returns list of components this actor is overlapping.
---@param OverlappingComponents ULuaArrayHelper<UPrimitiveComponent>
function AActor:GetOverlappingComponents(OverlappingComponents) end

---Event when this actor bumps into a blocking object, or blocks another actor that bumps into it. This could happen due to things like Character movement, using Set Location with 'sweep' enabled, or physics simulation. For events when objects overlap (e.g. walking into a trigger) see the 'Overlap' event. will be adjusted to indicate force from the other object against this object.
---@param MyComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param bSelfMoved boolean
---@param HitLocation FVector
---@param HitNormal FVector
---@param NormalImpulse FVector
---@param Hit FHitResult
function AActor:ReceiveHit(MyComp, Other, OtherComp, bSelfMoved, HitLocation, HitNormal, NormalImpulse, Hit) end

---Set the lifespan of this actor. When it expires the object will be destroyed. If requested lifespan is 0, the timer is cleared and the actor will not be destroyed.
---@param InLifespan number
function AActor:SetLifeSpan(InLifespan) end

---Get the remaining lifespan of this actor. If zero is returned the actor lives forever.
---@return number
function AActor:GetLifeSpan() end

---Construction script, the place to spawn components and do other setup.
function AActor:UserConstructionScript() end

function AActor:ReceiveDestroyed() end

---Event to notify blueprints this actor is about to be deleted.
---@param EndPlayReason EEndPlayReason
function AActor:ReceiveEndPlay(EndPlayReason) end

---Set this actor's tick functions to be enabled or disabled. Only has an effect if the function is registered This only modifies the tick function on actor itself
---@param bEnabled boolean
function AActor:SetActorTickEnabled(bEnabled) end

---Returns whether this actor has tick enabled or not
---@return boolean
function AActor:IsActorTickEnabled() end

---Sets the tick interval of this actor's primary tick function. Will not enable a disabled tick function. Takes effect on next tick.
---@param TickInterval number
function AActor:SetActorTickInterval(TickInterval) end

---Returns the tick interval of this actor's primary tick function
---@return number
function AActor:GetActorTickInterval() end

---ReplicatedMovement struct replication event
function AActor:OnRep_ReplicatedMovement() end

---Set the owner of this Actor, used primarily for network replication.
---@param NewOwner AActor
function AActor:SetOwner(NewOwner) end

---Check whether any component of this Actor is overlapping any component of another Actor.
---@param Other AActor
---@return boolean
function AActor:IsOverlappingActor(Other) end

---Puts actor in dormant networking state
---@param NewDormancy ENetDormancy
function AActor:SetNetDormancy(NewDormancy) end

---Forces dormant actor to replicate but doesn't change NetDormancy state (i.e., they will go dormant again if left dormant)
function AActor:FlushNetDormancy() end

---Returns whether this Actor was spawned by a child actor component
---@return boolean
function AActor:IsChildActor() end

---Returns a list of all child actors, including children of children
---@param ChildActors ULuaArrayHelper<AActor>
---@param bIncludeDescendants boolean
function AActor:GetAllChildActors(ChildActors, bIncludeDescendants) end

---Teleport this actor to a new location. If the actor doesn't fit exactly at the location specified, tries to slightly move it out of walls and such.
---@param DestLocation FVector
---@param DestRotation FRotator
---@return boolean
function AActor:K2_TeleportTo(DestLocation, DestRotation) end

---Return the ULevel name that this Actor is part of.
---@return string
function AActor:GetLevelName() end

---Walk up the attachment chain from RootComponent until we encounter a different actor, and return the socket name in the component. If we are not attached to a component in a different actor, returns NAME_None
---@return string
function AActor:GetAttachParentSocketName() end

---Find all Actors which are attached directly to a component in this actor
---@param OutActors ULuaArrayHelper<AActor>
function AActor:GetAttachedActors(OutActors) end

---Sets the ticking group for this actor.
---@param NewTickGroup ETickingGroup
function AActor:SetTickGroup(NewTickGroup) end

---Return true if the given Pawn can be "based" on this actor (ie walk on it).
---@param Pawn APawn
---@return boolean
function AActor:CanBeBaseForCharacter(Pawn) end

---@param InTargetNotifyState UObject
---@param InBoneRetargetObj UObject
function AActor:InitAnimNotifyStateBoneRetargetInfo(InTargetNotifyState, InBoneRetargetObj) end

---@param InTargetNotifyState UObject
function AActor:ClearAnimNotifyStateBoneRetargetAdaptState(InTargetNotifyState) end

---@param InTargetNotifyState UObject
---@return boolean
function AActor:IsAnimNotifyStateBoneRetargetAdaptInitDone(InTargetNotifyState) end

---Event called when this Actor becomes the view target for the given PlayerController.
---@param PC APlayerController
function AActor:K2_OnBecomeViewTarget(PC) end

---Event called when this Actor is no longer the view target for the given PlayerController.
---@param PC APlayerController
function AActor:K2_OnEndViewTarget(PC) end

---Event called when this Actor is reset to its initial state - used when restarting level without reloading.
function AActor:K2_OnReset() end

---Returns true if this actor has been rendered "recently", with a tolerance in seconds to define what "recent" means. e.g.: If a tolerance of 0.1 is used, this function will return true only if the actor was rendered in the last 0.1 seconds of game time.
---@param Tolerance number
---@return boolean
function AActor:WasRecentlyRendered(Tolerance) end

---Forces this actor to be net relevant if it is not already by default
function AActor:ForceNetRelevant() end

---Force actor enter consider list
function AActor:ForceNetConsider() end

---Force actor's component to be updated to client
---@param InComponent UActorComponent
function AActor:ForceNetComponentUpdate(InComponent) end

---Force actor to be updated to clients
function AActor:ForceNetUpdate() end

---Calls PrestreamTextures() for all the actor's meshcomponents.
---@param Seconds number
---@param bEnableStreaming boolean
---@param CinematicTextureGroups number
function AActor:PrestreamTextures(Seconds, bEnableStreaming, CinematicTextureGroups) end

---Calls SetTextureForceResidentFlag() for all the actor's meshcomponents.
---@param bForceMiplevelsToBeResident boolean
function AActor:SetTextureForceResidentFlag(bForceMiplevelsToBeResident) end

---Returns the point of view of the actor. Note that this doesn't mean the camera, but the 'eyes' of the actor. For example, for a Pawn, this would define the eye height location, and view rotation (which is different from the pawn rotation which has a zeroed pitch component). A camera first person view will typically use this view point. Most traces (weapon, AI) will be done from this view point.
---@param OutLocation FVector
---@param OutRotation FRotator
function AActor:GetActorEyesViewPoint(OutLocation, OutRotation) end

---@param ComponentClass UActorComponent
function AActor:GetComponentsByClass(ComponentClass) end

---@param ComponentClass UActorComponent
---@param Tag string
function AActor:GetComponentsByTag(ComponentClass, Tag) end

---@param InCampID number
function AActor:SetGeneralCampID(InCampID) end

---@return number
function AActor:GetGeneralCampID() end

---@return string
function AActor:GetGeneralCampName() end

---@param CampID number
---@return ECampRelation
function AActor:GetGeneralCampRelationWithCampID(CampID) end

---@param Actor AActor
---@return ECampRelation
function AActor:GetGeneralCampRelationWithActor(Actor) end

---@param Origin FVector
---@param EffectRange number
---@return boolean
function AActor:AllowTriggerDeformEffect(Origin, EffectRange) end

---@param Origin FVector
---@param EffectRange number
function AActor:TriggerDeformEffect(Origin, EffectRange) end

function AActor:DisableDeformEffect() end

---@param SubObject UObject
function AActor:MarkSubObjectDeleteDirty(SubObject) end
