---@meta

---@class FDebugPIOverlapDelegate : ULuaMulticastDelegate
FDebugPIOverlapDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InteractOverlapDebugInfoList: FInteractOverlapDebugInfoList) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDebugPIOverlapDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InteractOverlapDebugInfoList FInteractOverlapDebugInfoList
function FDebugPIOverlapDelegate:Broadcast(InteractOverlapDebugInfoList) end


---@class FDebugPISelectedDelegate : ULuaMulticastDelegate
FDebugPISelectedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InteractBehaviorList: FInteractBehaviorList) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDebugPISelectedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InteractBehaviorList FInteractBehaviorList
function FDebugPISelectedDelegate:Broadcast(InteractBehaviorList) end


---@class FScopeInteractionPickUpStateChange : ULuaMulticastDelegate
FScopeInteractionPickUpStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsPickUpPrior: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FScopeInteractionPickUpStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsPickUpPrior boolean
function FScopeInteractionPickUpStateChange:Broadcast(bIsPickUpPrior) end


---@class UPreciseInteractionComponent: UActorComponent, IPreciseInteractionInterface
---@field PIOverlapPerFilter FDebugPIOverlapDelegate
---@field PIOverlapPostFilter FDebugPIOverlapDelegate
---@field PIOverlapSelected FDebugPISelectedDelegate
---@field bOnlyEnableOnPurePC boolean
---@field InteractionCollisionData FInteractionCollisionData
---@field QueryObjectTypes ULuaArrayHelper<ECollisionChannel>
---@field bDefaultLineTraceForPrecise boolean
---@field bOpenSecondaryPreciseTrace boolean
---@field bEnableSortDistanceAndPriority boolean
---@field bEnableSortByIntersection boolean
---@field AdapterClasses ULuaArrayHelper<UPreciseInteractionAdapter>
---@field InteractionPriorityMap ULuaMapHelper<UClass, number>
---@field MaxInteractorAtSameTime number
---@field MaxShowPreciseAtSameTime number
---@field IgnorePreciseTraceTag string
---@field LastBehavior FInteractBehaviorWrapper
---@field LastExtraBehavior FInteractBehaviorWrapper
---@field bEnabled boolean
---@field AdapterInstance ULuaArrayHelper<UPreciseInteractionAdapter>
---@field ExtraInteractor ULuaMapHelper<EInteractionDataOrigin, FExtraInteractionList>
---@field CurBehaviorWrapper FInteractBehaviorWrapper
---@field ExtraBehaviorWrapper FInteractBehaviorWrapper
---@field bIsPreciseInteractionMode boolean
---@field PreciseTraceDist number
---@field PreciseTraceSphereRadius number
---@field InteractorPriorityArray ULuaArrayHelper<AActor>
---@field ParentClassIterateMaxDepth number
---@field bEnableScopeInteractionMerge boolean
---@field MergeTagPrefix string
---@field CurPriorScopeInfo FScopeInteractionInfo
---@field LastPriorScopeInfo FScopeInteractionInfo
---@field ScopeInfos ULuaArrayHelper<FScopeInteractionInfo>
---@field TracedActor AActor
---@field TracedComponent UPrimitiveComponent
---@field bIsScopeInteractionMode boolean
---@field OnPickUpPriorStateChange FScopeInteractionPickUpStateChange
---@field bHasPickUps boolean
local UPreciseInteractionComponent = {}

function UPreciseInteractionComponent:EnableInteraction() end

function UPreciseInteractionComponent:DisableInteraction() end

---@return boolean
function UPreciseInteractionComponent:IsEnableInteraction() end

function UPreciseInteractionComponent:DisablePreciseInteraction() end

---@return boolean
function UPreciseInteractionComponent:IsPreciseInteractionMode() end

---@return EPCInteractionMode
function UPreciseInteractionComponent:GetInteractionMode() end

function UPreciseInteractionComponent:UpdateInteracte() end

---@param CurWrapper FInteractBehaviorWrapper
---@param LastWrapper FInteractBehaviorWrapper
---@return boolean
function UPreciseInteractionComponent:HandleBehaviorWrapper(CurWrapper, LastWrapper) end

---@return FInteractBehaviorWrapper
function UPreciseInteractionComponent:GetBehaviorCanInteract() end

---@param PriorityClass UClass
---@param Priority number
function UPreciseInteractionComponent:AddInteractionPriorityMap(PriorityClass, Priority) end

---@param PriorityClass UClass
function UPreciseInteractionComponent:RemoveInteractionPriorityMap(PriorityClass) end

---@param Character ASTExtraBaseCharacter
---@return FInteractionOverlapResult
function UPreciseInteractionComponent:GetClosestOnePickup(Character) end

---@param DataOrigin EInteractionDataOrigin
---@return FInteractBehaviorWrapper
function UPreciseInteractionComponent:GetExtraInteractorBehavior(DataOrigin) end

---@param Interactor UObject
---@param TargetObject UObject
---@param AreaIndicator UObject
---@param DataOrigin EInteractionDataOrigin
function UPreciseInteractionComponent:AddExtraInteractor(Interactor, TargetObject, AreaIndicator, DataOrigin) end

---@param Interactor UObject
---@param TargetObject UObject
---@param AreaIndicator UObject
---@param DataOrigin EInteractionDataOrigin
function UPreciseInteractionComponent:RemoveExtraInteractor(Interactor, TargetObject, AreaIndicator, DataOrigin) end

---@param Interaction FExtraInteractionManually
---@return FInteractBehaviorWrapper
function UPreciseInteractionComponent:GetBehaviorFromInteraction(Interaction) end

---@param Overlaps ULuaArrayHelper<FInteractionOverlapResult>
---@param bPrecise boolean
---@param Delegate FDebugPIOverlapDelegate
function UPreciseInteractionComponent:BroadcastPIDebug(Overlaps, bPrecise, Delegate) end

---@param BehaviorWrapper FInteractBehaviorWrapper
---@param Delegate FDebugPISelectedDelegate
function UPreciseInteractionComponent:BroadcastPIDebugSelected(BehaviorWrapper, Delegate) end

---@param BehaviorWrapper FInteractBehaviorWrapper
function UPreciseInteractionComponent:ClearUIByBehaviorWrapper(BehaviorWrapper) end

---@param Overlaps ULuaArrayHelper<FInteractionOverlapResult>
---@param bSortDistanceAndPriority boolean
---@param bSortByIntersection boolean
---@param bPrecise boolean
function UPreciseInteractionComponent:GetOverlapActors(Overlaps, bSortDistanceAndPriority, bSortByIntersection, bPrecise) end

---@param World UWorld
---@param Character ASTExtraBaseCharacter
---@param Overlaps ULuaArrayHelper<FInteractionOverlapResult>
function UPreciseInteractionComponent:SortOverlapsByDistanceAndPriority(World, Character, Overlaps) end

---@param World UWorld
---@param Character ASTExtraBaseCharacter
---@param Overlaps ULuaArrayHelper<FInteractionOverlapResult>
---@param CollisionShapeTop FVector
---@param CollisionShapeBottom FVector
function UPreciseInteractionComponent:SortByIntersection(World, Character, Overlaps, CollisionShapeTop, CollisionShapeBottom) end

---@param World UWorld
---@param Character ASTExtraBaseCharacter
---@param PC APlayerController
---@param InteractorPrimitive UPrimitiveComponent
---@return boolean
function UPreciseInteractionComponent:HasNoObstacleToInteract(World, Character, PC, InteractorPrimitive) end

---@param BehaviorWrapper FInteractBehaviorWrapper
---@param World UWorld
---@param Character ASTExtraBaseCharacter
---@param Overlaps ULuaArrayHelper<FInteractionOverlapResult>
---@param PC APlayerController
function UPreciseInteractionComponent:GetBehaviorList(BehaviorWrapper, World, Character, Overlaps, PC) end

function UPreciseInteractionComponent:UpdateScopeInteract() end

---@return boolean
function UPreciseInteractionComponent:IsScopeInteractMode() end

---@return boolean
function UPreciseInteractionComponent:ShouldDisableScopeInteraction() end

---@param Actor AActor
---@return number
function UPreciseInteractionComponent:GetActorPriority(Actor) end

---@return boolean
function UPreciseInteractionComponent:HasPickUps() end

function UPreciseInteractionComponent:CollectScopeInfos() end

function UPreciseInteractionComponent:FindTracedActor() end

---@param TargetActor AActor
---@return boolean
function UPreciseInteractionComponent:CheckIgnoreScopeInteractionTrace(TargetActor) end

---@return boolean
function UPreciseInteractionComponent:IsUsingSamePriorActor() end

---@return FScopeInteractionInfo
function UPreciseInteractionComponent:SelectPriorScopeInfo() end

---@return FScopeInteractionInfo
function UPreciseInteractionComponent:SelectPriorPickupInfo() end

---@param Actor AActor
---@return boolean
function UPreciseInteractionComponent:CheckIsRelevantToPickUpList(Actor) end

---@return boolean
function UPreciseInteractionComponent:ShouldClearBehaviorsForPickUp() end

function UPreciseInteractionComponent:MergeScopeInteraction() end
