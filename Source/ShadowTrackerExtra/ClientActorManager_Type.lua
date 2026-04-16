---@meta

---@class ECAM_ActorState
---@field CAM_None number
---@field CAM_Relevant number
---@field CAM_NotRelevant number
---@field CAM_WatingRemove number
ECAM_ActorState = {}


---@class FCAM_ActorHandle
---@field Handle number
FCAM_ActorHandle = {}


---@class FCAM_SpawnActorInfo
---@field ActorClass AActor
---@field Transform FTransform
---@field ActorHandle FCAM_ActorHandle
FCAM_SpawnActorInfo = {}


---@class FCAM_SpawnActorInfoList
---@field ClientSpawnList ULuaArrayHelper<FCAM_SpawnActorInfo>
FCAM_SpawnActorInfoList = {}


---@class FCAM_StateChangeDelegateList
---@field DelegateList ULuaArrayHelper<FCAMOnActorStateChange>
FCAM_StateChangeDelegateList = {}


---@class FCAM_ActorItem
---@field ActorClass AActor
FCAM_ActorItem = {}


---@class FCAM_ExternalActorItem
---@field ExternalActor AActor
FCAM_ExternalActorItem = {}


---@class FCAM_RegionHandlesWrapper
FCAM_RegionHandlesWrapper = {}


---@class FCAM_ActorItemList
---@field ActorItemList ULuaArrayHelper<FCAM_ActorItem>
---@field ExternalActorItemList ULuaArrayHelper<FCAM_ExternalActorItem>
FCAM_ActorItemList = {}


---@class FCAMOnActorStateChange : ULuaSingleDelegate
FCAMOnActorStateChange = {}

---绑定回调函数
---@param Callback fun(Obj: any, ClientActorManager: UObject, ActorState: ECAM_ActorState, ActorHandle: FCAM_ActorHandle) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCAMOnActorStateChange:Bind(Callback, Obj) end

---执行委托
---@param ClientActorManager UObject
---@param ActorState ECAM_ActorState
---@param ActorHandle FCAM_ActorHandle
function FCAMOnActorStateChange:Execute(ClientActorManager, ActorState, ActorHandle) end
