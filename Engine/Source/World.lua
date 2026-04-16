---@meta

---Saved editor viewport state information
---@class FLevelViewportInfo
---@field CamPosition FVector @Where the camera is positioned within the viewport.
---@field CamRotation FRotator @The camera's position within the viewport.
---@field CamOrthoZoom number @The zoom value  for orthographic mode.
---@field CamUpdated boolean @Whether camera settings have been systematically changed since the last level viewport update.
FLevelViewportInfo = {}


---@class FHLODStreamTicker
---@field Actors ULuaArrayHelper<AActor>
FHLODStreamTicker = {}


---Tick function that starts the physics tick
---@class FStartPhysicsTickFunction
FStartPhysicsTickFunction = {}


---Tick function that ends the physics tick
---@class FEndPhysicsTickFunction
FEndPhysicsTickFunction = {}


---Tick function that starts the cloth tick
---@class FStartAsyncSimulationFunction
FStartAsyncSimulationFunction = {}


---Contains a group of levels of a particular ELevelCollectionType within a UWorld and the context required to properly tick/update those levels. This object is move-only.
---@class FLevelCollection
---@field Levels ULuaSetHelper<ULevel> @All the levels in this collection.
FLevelCollection = {}


---@class FActorSet
---@field Actors ULuaArrayHelper<AActor>
FActorSet = {}


---@class FUGCSpawnActorNumLimitCfg
---@field ActorName string
---@field NumLimit number
FUGCSpawnActorNumLimitCfg = {}


---@class FOnActorSpawned : ULuaMulticastDelegate
FOnActorSpawned = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActorSpawned:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 AActor
function FOnActorSpawned:Broadcast(Param1) end


---@class FOnActorDestroyed : ULuaMulticastDelegate
FOnActorDestroyed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActorDestroyed:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 AActor
function FOnActorDestroyed:Broadcast(Param1) end


---@class FOnActorInitialized : ULuaMulticastDelegate
FOnActorInitialized = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActorInitialized:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 AActor
function FOnActorInitialized:Broadcast(Param1) end


---@class FOnRegionActorListChanged : ULuaMulticastDelegate
FOnRegionActorListChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: boolean, Param3: boolean, Param4: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRegionActorListChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 boolean
---@param Param3 boolean
---@param Param4 boolean
function FOnRegionActorListChanged:Broadcast(Param1, Param2, Param3, Param4) end


---@class FCustomSpawnActorFromPool : ULuaSingleDelegate
FCustomSpawnActorFromPool = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UClass, Param2: FActorSpawnParameters) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomSpawnActorFromPool:Bind(Callback, Obj) end

---执行委托
---@param Param1 UClass
---@param Param2 FActorSpawnParameters
function FCustomSpawnActorFromPool:Execute(Param1, Param2) end


---@class FOnComponentRegistered : ULuaMulticastDelegate
FOnComponentRegistered = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UActorComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnComponentRegistered:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UActorComponent
function FOnComponentRegistered:Broadcast(Param1) end


---@class FOnComponentUnregistered : ULuaMulticastDelegate
FOnComponentUnregistered = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UActorComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnComponentUnregistered:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UActorComponent
function FOnComponentUnregistered:Broadcast(Param1) end


---@class FAsyncSpawnCallbackDelegate : ULuaSingleDelegate
FAsyncSpawnCallbackDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: AActor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAsyncSpawnCallbackDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 AActor
function FAsyncSpawnCallbackDelegate:Execute(Param1) end


---The World is the top level object representing a map or a sandbox in which Actors and Components will exist and be rendered. A World can be a single Persistent Level with an optional list of streaming levels that are loaded and unloaded via volumes and blueprint functions or it can be a collection of levels organized with a World Composition. In a standalone game, generally only a single World exists except during seamless area transitions when both a destination and current world exists. In the editor many Worlds exist: The level being edited, each PIE instance, each editor tool which has an interactive rendered viewport, and many more.
---@class UWorld: UObject, FNetworkNotify
---@field HLODStreamTicker FHLODStreamTicker
---@field LifeCycleDependencyMap ULuaMapHelper<AActor, FActorSet> @List of all the layers referenced by the world's actors
---@field UGCSpawnActorNumLimit ULuaArrayHelper<FUGCSpawnActorNumLimitCfg>
---@field ExtraReferencedObjects ULuaArrayHelper<UObject> @Array of any additional objects that need to be referenced by this world, to make sure they aren't GC'd
---@field PerModuleDataObjects ULuaArrayHelper<UObject> @External modules can have additional data associated with this UWorld. This is a list of per module world data objects. These aren't loaded/saved by default.
---@field StreamingLevels ULuaArrayHelper<ULevelStreaming> @Level collection. ULevels are referenced by FName (Package name) to avoid serialized references. Also contains offsets in world units
---@field StreamingLevelsPrefix string @Prefix we used to rename streaming levels, non empty in PIE and standalone preview
---@field AllCullDistanceVolumes ULuaArrayHelper<ACullDistanceVolume>
---@field RegionManager FWorldRegionManager
---@field ParallelismManager FWorldParallelismManager
---@field PVSLevel ULevel
---@field ActiveLevelActors ULuaArrayHelper<AActor>
---@field Levels ULuaArrayHelper<ULevel> @Array of levels currently in this world. Not serialized to disk to avoid hard references.
---@field LevelCollections ULuaArrayHelper<FLevelCollection> @Array of level collections currently in this world.
---@field bSupportParallelWorlds boolean @symigao add: Dedicated server supports parallel worlds
---@field ParameterCollectionInstances ULuaArrayHelper<UMaterialParameterCollectionInstance> @Parameter collection instances that hold parameter overrides for this world.
---@field SpecialActorList ULuaArrayHelper<AActor>
---@field ComponentsThatNeedEndOfFrameUpdate ULuaArrayHelper<UActorComponent> @Array of components that need updates at the end of the frame
---@field ComponentsThatNeedEndOfFrameUpdate_OnGameThread ULuaArrayHelper<UActorComponent> @Array of components that need game thread updates at the end of the frame
---@field ComponentsThatNeedLagUpdate ULuaArrayHelper<UActorComponent> @Array of particle components that need updates
---@field bAreConstraintsDirty number @Keeps track whether actors moved via PostEditMove and therefore constraint syncup should be performed.
---@field LoadingLevelsToCheck ULuaArrayHelper<ULevelStreaming> @Transient: external time limit (seconds) injected by the unified time-limit mechanism. 0.0 means "not set / use internal CVar". Only valid during a single UpdateLevelStreaming call.
---@field LandscapeOverrideDatas ULuaMapHelper<FLandscapeOverrideKey, FLandscapeOverrideData>
local UWorld = {}
