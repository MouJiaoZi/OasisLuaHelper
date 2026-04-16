---@meta

---@class FNavigationSystemRunMode
---@field InvalidMode number
---@field GameMode number
---@field EditorMode number
---@field SimulationMode number
---@field PIEMode number
FNavigationSystemRunMode = {}


---delegate to let interested parties know that new nav area class has been registered
---@class FOnNavAreaChanged : ULuaMulticastDelegate
FOnNavAreaChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UClass) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNavAreaChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UClass
function FOnNavAreaChanged:Broadcast(Param1) end


---Delegate to let interested parties know that Nav Data has been registered
---@class FOnNavDataGenerigEvent : ULuaMulticastDelegate
FOnNavDataGenerigEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NavData: ANavigationData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNavDataGenerigEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param NavData ANavigationData
function FOnNavDataGenerigEvent:Broadcast(NavData) end


---@class FOnNavigationInitDone : ULuaSingleDelegate
FOnNavigationInitDone = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNavigationInitDone:Bind(Callback, Obj) end

---执行委托
function FOnNavigationInitDone:Execute() end


---@class UNavigationSystem: UBlueprintFunctionLibrary
---@field CrowdManagerClass UCrowdManagerBase
---@field bAutoCreateNavigationData number @Should navigation system spawn default Navigation Data when there's none and there are navigation bounds present?
---@field bAllowClientSideNavigation number
---@field bSupportRebuilding number @gets set to true if gathering navigation data (like in navoctree) is required due to the need of navigation generation Is always true in Editor Mode. In other modes it depends on bRebuildAtRuntime of every required NavigationData class' CDO
---@field ObstacleManagerClassPath FSoftClassPath
---@field bInitialBuildingLocked number @if set to true will result navigation system not rebuild navigation until a call to ReleaseInitialBuildingLock() is called. Does not influence editor-time generation (i.e. does influence PIE and Game). Defaults to false.
---@field bSkipAgentHeightCheckWhenPickingNavData number @false by default, if set to true will result in not caring about nav agent height when trying to match navigation data to passed in nav agent
---@field DataGatheringMode ENavDataGatheringModeConfig
---@field bGenerateNavigationOnlyAroundNavigationInvokers number @If set to true navigation will be generated only around registered "navigation enforcers" This has a range of consequences (including how navigation octree operates) so it needs to be a conscious decision. Once enabled results in whole world being navigable.
---@field ActiveTilesUpdateInterval number @Minimal time, in seconds, between active tiles set update
---@field SupportedAgents ULuaArrayHelper<FNavDataConfig>
---@field DirtyAreasUpdateFreq number @update frequency for dirty areas on navmesh
---@field NavDataSet ULuaArrayHelper<ANavigationData>
---@field NavDataRegistrationQueue ULuaArrayHelper<ANavigationData>
---@field OnNavDataRegisteredEvent FOnNavDataGenerigEvent
---@field OnNavigationGenerationFinishedDelegate FOnNavDataGenerigEvent
---@field OperationMode FNavigationSystemRunMode
local UNavigationSystem = {}

---@param AgentName string
---@param High boolean
---@return boolean
function UNavigationSystem:BP_ChangeRecastPartitioning(AgentName, High) end

---@param AgentName string
function UNavigationSystem:BP_BuildOne(AgentName) end

---@param AgentName string
function UNavigationSystem:BP_DynamicBuildOne(AgentName) end

function UNavigationSystem:BP_Build() end

---@param AgentName string
---@param InBounds FBox
---@return boolean
function UNavigationSystem:BP_AddDynamicNavAffect(AgentName, InBounds) end

---@param AgentName string
---@return boolean
function UNavigationSystem:BP_IncrementalBuild(AgentName) end

---@param AgentName string
---@return boolean
function UNavigationSystem:BP_CancelBuild(AgentName) end

---Project a point onto the NavigationData
---@param WorldContextObject UObject
---@param Point FVector
---@param ProjectedLocation FVector
---@param NavData ANavigationData
---@param FilterClass UNavigationQueryFilter
---@param QueryExtent FVector
---@return boolean
function UNavigationSystem:K2_ProjectPointToNavigation(WorldContextObject, Point, ProjectedLocation, NavData, FilterClass, QueryExtent) end

---Generates a random location reachable from given Origin location.
---@param WorldContextObject UObject
---@param Origin FVector
---@param RandomLocation FVector
---@param Radius number
---@param NavData ANavigationData
---@param FilterClass UNavigationQueryFilter
---@param ExtentRadius number
---@return boolean
function UNavigationSystem:K2_GetRandomReachablePointInRadius(WorldContextObject, Origin, RandomLocation, Radius, NavData, FilterClass, ExtentRadius) end

---Generates a random location in navigable space within given radius of Origin.
---@param WorldContextObject UObject
---@param Origin FVector
---@param RandomLocation FVector
---@param Radius number
---@param NavData ANavigationData
---@param FilterClass UNavigationQueryFilter
---@return boolean
function UNavigationSystem:K2_GetRandomPointInNavigableRadius(WorldContextObject, Origin, RandomLocation, Radius, NavData, FilterClass) end

---Potentially expensive. Use with caution. Consider using UPathFollowingComponent::GetRemainingPathCost instead
---@param WorldContextObject UObject
---@param PathStart FVector
---@param PathEnd FVector
---@param PathCost number
---@param NavData ANavigationData
---@param FilterClass UNavigationQueryFilter
---@return ENavigationQueryResult
function UNavigationSystem:GetPathCost(WorldContextObject, PathStart, PathEnd, PathCost, NavData, FilterClass) end

---Potentially expensive. Use with caution
---@param WorldContextObject UObject
---@param PathStart FVector
---@param PathEnd FVector
---@param PathLength number
---@param NavData ANavigationData
---@param FilterClass UNavigationQueryFilter
---@return ENavigationQueryResult
function UNavigationSystem:GetPathLength(WorldContextObject, PathStart, PathEnd, PathLength, NavData, FilterClass) end

---@param WorldContextObject UObject
---@return boolean
function UNavigationSystem:IsNavigationBeingBuilt(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UNavigationSystem:IsNavigationBeingBuiltOrLocked(WorldContextObject) end

---@param Controller AController
---@param Goal AActor
function UNavigationSystem:SimpleMoveToActor(Controller, Goal) end

---@param Controller AController
---@param Goal FVector
function UNavigationSystem:SimpleMoveToLocation(Controller, Goal) end

---Performs navigation raycast on NavigationData appropriate for given Querier.
---@param WorldContextObject UObject
---@param RayStart FVector
---@param RayEnd FVector
---@param HitLocation FVector
---@param FilterClass UNavigationQueryFilter
---@param Querier AController
---@return boolean
function UNavigationSystem:NavigationRaycast(WorldContextObject, RayStart, RayEnd, HitLocation, FilterClass, Querier) end

---will limit the number of simultaneously running navmesh tile generation jobs to specified number.
---@param MaxNumberOfJobs number
function UNavigationSystem:SetMaxSimultaneousTileGenerationJobsCount(MaxNumberOfJobs) end

---Brings limit of simultaneous navmesh tile generation jobs back to Project Setting's default value
function UNavigationSystem:ResetMaxSimultaneousTileGenerationJobsCount() end

---Registers given actor as a "navigation enforcer" which means navigation system will make sure navigation is being generated in specified radius around it. to take advantage of this feature
---@param Invoker AActor
---@param TileGenerationRadius number
---@param TileRemovalRadius number
function UNavigationSystem:RegisterNavigationInvoker(Invoker, TileGenerationRadius, TileRemovalRadius) end

---Removes given actor from the list of active navigation enforcers.
---@param Invoker AActor
function UNavigationSystem:UnregisterNavigationInvoker(Invoker) end

---@param NewMode ENavDataGatheringModeConfig
function UNavigationSystem:SetGeometryGatheringMode(NewMode) end

---@param NavVolume ANavMeshBoundsVolume
function UNavigationSystem:OnNavigationBoundsUpdated(NavVolume) end

---@param WorldContextObject UObject
---@param Point FVector
---@param NavData ANavigationData
---@param FilterClass UNavigationQueryFilter
---@param QueryExtent FVector
---@return FVector
function UNavigationSystem:ProjectPointToNavigation(WorldContextObject, Point, NavData, FilterClass, QueryExtent) end

---@param WorldContextObject UObject
---@param Origin FVector
---@param Radius number
---@param NavData ANavigationData
---@param FilterClass UNavigationQueryFilter
---@return FVector
function UNavigationSystem:GetRandomReachablePointInRadius(WorldContextObject, Origin, Radius, NavData, FilterClass) end

---@param WorldContextObject UObject
---@param Origin FVector
---@param Radius number
---@param NavData ANavigationData
---@param FilterClass UNavigationQueryFilter
---@return FVector
function UNavigationSystem:GetRandomPointInNavigableRadius(WorldContextObject, Origin, Radius, NavData, FilterClass) end

---@param IsAdd boolean
---@param GenerateTargetNav FDynamicGenerateTargetNavigation
function UNavigationSystem:UpdateDynamicGenerateTargetNav(IsAdd, GenerateTargetNav) end
