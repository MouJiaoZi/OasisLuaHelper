---@meta

---@class FClusterLeaf
---@field SocketName string
---@field TransformOffset FTransform
---@field bOcuppied boolean
FClusterLeaf = {}


---@class FClusterLeafInst
---@field Msg ULuaArrayHelper<string>
FClusterLeafInst = {}


---@class FOnAttachToClusterActorOver : ULuaSingleDelegate
FOnAttachToClusterActorOver = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UMeshComponent, Param2: ULuaArrayHelper<string>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAttachToClusterActorOver:Bind(Callback, Obj) end

---执行委托
---@param Param1 UMeshComponent
---@param Param2 ULuaArrayHelper<string>
function FOnAttachToClusterActorOver:Execute(Param1, Param2) end


---@class FOnMeshComponentCreated : ULuaSingleDelegate
FOnMeshComponentCreated = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UMeshComponent, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMeshComponentCreated:Bind(Callback, Obj) end

---执行委托
---@param Param1 UMeshComponent
---@param Param2 number
function FOnMeshComponentCreated:Execute(Param1, Param2) end


---@class FOnClusterActorAnimationLoadCompleted : ULuaSingleDelegate
FOnClusterActorAnimationLoadCompleted = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClusterActorAnimationLoadCompleted:Bind(Callback, Obj) end

---执行委托
function FOnClusterActorAnimationLoadCompleted:Execute() end


---@class AClusterActor: AActor
---@field AttachConfigs ULuaArrayHelper<FClusterLeaf>
---@field NeedUpdateAnimEveryFrame boolean
---@field OnAnimationPlayCompleted FOnClusterActorAnimationLoadCompleted
---@field AllLeafMeshInst ULuaArrayHelper<FClusterLeafInst>
local AClusterActor = {}

---@param LeafMesh UObject
---@param PlayerKey number
---@return boolean
function AClusterActor:AttachToFrame(LeafMesh, PlayerKey) end

---@param Index number
function AClusterActor:AttachToFrameEnd(Index) end

function AClusterActor:OnAnimationHasPlayCompleted() end
