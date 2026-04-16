---@meta

---@class FOnProcessingComplete : ULuaSingleDelegate
FOnProcessingComplete = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnProcessingComplete:Bind(Callback, Obj) end

---执行委托
function FOnProcessingComplete:Execute() end


---@class UMRMeshComponent: UPrimitiveComponent, IMRMesh
---@field bEnableCollision boolean
---@field BodySetups ULuaArrayHelper<UBodySetup>
local UMRMeshComponent = {}

---@param Reconstructor UMeshReconstructorBase
function UMRMeshComponent:ConnectReconstructor(Reconstructor) end
