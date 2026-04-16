---@meta

---@class FOnChildActorRep : ULuaSingleDelegate
FOnChildActorRep = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnChildActorRep:Bind(Callback, Obj) end

---执行委托
function FOnChildActorRep:Execute() end


---A component that spawns an Actor when registered, and destroys it when unregistered.
---@class UChildActorComponent: USceneComponent
---@field ChildActorClass AActor @The class of Actor to spawn
---@field bAllowTemplateModification boolean
---@field IsDestoryChildActor boolean
---@field OnChildActorRep FOnChildActorRep
---@field bKeepChildActorComponet boolean
---@field bEnableReplication boolean
---@field bDumpChildActorLocation boolean
---@field bRedirectComps number
---@field bPCOnlyComps number
local UChildActorComponent = {}

---@param InClass AActor
function UChildActorComponent:SetChildActorClass(InClass) end

function UChildActorComponent:OnRep_ChildActor() end

---Create the child actor
function UChildActorComponent:CreateChildActor() end

---Kill any currently present child actor
---@param bNeedInstanceData boolean
function UChildActorComponent:DestroyChildActor(bNeedInstanceData) end
