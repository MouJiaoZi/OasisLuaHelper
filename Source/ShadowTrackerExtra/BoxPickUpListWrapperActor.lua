---@meta

---@class FOnPlayerFinishPickedUp : ULuaSingleDelegate
FOnPlayerFinishPickedUp = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerFinishPickedUp:Bind(Callback, Obj) end

---执行委托
function FOnPlayerFinishPickedUp:Execute() end


---@class ABoxPickUpListWrapperActor: APickUpListWrapperActor
local ABoxPickUpListWrapperActor = {}

---@param DataList ULuaArrayHelper<FPickUpItemData>
function ABoxPickUpListWrapperActor:ModifyPickUpDataList(DataList) end

---@param OwnerTarget AActor
---@param AdditionalParam number
---@param pickCount number
---@return boolean
function ABoxPickUpListWrapperActor:FinishPickedUp(OwnerTarget, AdditionalParam, pickCount) end
