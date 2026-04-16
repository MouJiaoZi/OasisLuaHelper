---@meta

---@class FListenerParam
---@field ListenerName string
---@field CustomFuncName string
FListenerParam = {}


---@class FReceiverList
---@field WeakObjectList ULuaArrayHelper<UObject>
---@field BeginFuncNameList ULuaArrayHelper<string>
---@field EndFuncNameList ULuaArrayHelper<string>
---@field ReceiveRangeList ULuaArrayHelper<boolean>
FReceiverList = {}


---@class UCommonTriggerDelegateMgr: UBlueprintFunctionLibrary
---@field ListenerRelationMap ULuaMapHelper<AActor, FListenerParam>
---@field ReceiverRelationMap ULuaMapHelper<string, FReceiverList>
local UCommonTriggerDelegateMgr = {}

function UCommonTriggerDelegateMgr:ReleaseInstance() end

---@param Actor UObject
---@param Component UObject
---@param ListenerName string
---@param CustomCheckFunc string
function UCommonTriggerDelegateMgr:AddListener(Actor, Component, ListenerName, CustomCheckFunc) end

---@param Object UObject
---@param BeginFuncName string
---@param EndFuncName string
---@param ImmediateCheckActor AActor
---@param ListenerName string
---@param bOnlyCheckObjectSelf boolean
function UCommonTriggerDelegateMgr:AddReceiver(Object, BeginFuncName, EndFuncName, ImmediateCheckActor, ListenerName, bOnlyCheckObjectSelf) end

---@param Object UObject
---@param ImmediateCheckActor AActor
---@param ListenerName string
function UCommonTriggerDelegateMgr:RemoveReceiver(Object, ImmediateCheckActor, ListenerName) end

---@param Actor AActor
---@param CustomCheckFunc string
---@param ListenerName string
function UCommonTriggerDelegateMgr:AddListenerForActor(Actor, CustomCheckFunc, ListenerName) end

---@param ActorClass UClass
---@param CustomCheckFunc string
---@param ListenerName string
function UCommonTriggerDelegateMgr:AddListenerForActorClass(ActorClass, CustomCheckFunc, ListenerName) end

---@param Component UPrimitiveComponent
---@param CustomCheckFunc string
---@param ListenerName string
function UCommonTriggerDelegateMgr:AddListenerForComponent(Component, CustomCheckFunc, ListenerName) end

---@param ActorClass UClass
---@param ComponentClass UClass
---@param CustomCheckFunc string
---@param ListenerName string
function UCommonTriggerDelegateMgr:AddListenerForComponentClass(ActorClass, ComponentClass, CustomCheckFunc, ListenerName) end

---@param OverlappedActor AActor
---@param OtherActor AActor
function UCommonTriggerDelegateMgr:OnActorBeginOverlap(OverlappedActor, OtherActor) end

---@param OverlappedActor AActor
---@param OtherActor AActor
function UCommonTriggerDelegateMgr:OnActorEndOverlap(OverlappedActor, OtherActor) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UCommonTriggerDelegateMgr:OnComponentBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function UCommonTriggerDelegateMgr:OnComponentEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param Object UObject
---@param BeginFuncName string
---@param EndFuncName string
---@param ImmediateCheckActor AActor
---@param ListenerName string
---@param bOnlyCheckObjectSelf boolean
function UCommonTriggerDelegateMgr:AddReceiverInternal(Object, BeginFuncName, EndFuncName, ImmediateCheckActor, ListenerName, bOnlyCheckObjectSelf) end

---@param ReceiverList FReceiverList
---@param Indexs ULuaArrayHelper<number>
---@param bTempNull boolean
function UCommonTriggerDelegateMgr:RemoveReceiverInternal(ReceiverList, Indexs, bTempNull) end
