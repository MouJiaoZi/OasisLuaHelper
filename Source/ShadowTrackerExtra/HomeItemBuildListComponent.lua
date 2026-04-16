---@meta

---@class FHomeItemBuildListDirtyDelegate : ULuaSingleDelegate
FHomeItemBuildListDirtyDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHomeItemBuildListDirtyDelegate:Bind(Callback, Obj) end

---执行委托
function FHomeItemBuildListDirtyDelegate:Execute() end


---@class UHomeItemBuildListComponent: UActorComponent, IItemSourceInterface
---@field HomeItemBuildListDirtyDelegate FHomeItemBuildListDirtyDelegate
local UHomeItemBuildListComponent = {}

---@param Name string
---@param Source IItemSourceInterface
function UHomeItemBuildListComponent:AddHomeStorageItemSource(Name, Source) end

---@param Name string
---@param Source IItemSourceInterface
function UHomeItemBuildListComponent:AddHomeMallItemSource(Name, Source) end
