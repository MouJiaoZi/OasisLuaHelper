---@meta

---@class FNetAlienationDataChangeDelegate : ULuaSingleDelegate
FNetAlienationDataChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetAlienationDataChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FNetAlienationDataChangeDelegate:Execute() end


---@class FNetAlienationDataChangeDelegateNew : ULuaMulticastDelegate
FNetAlienationDataChangeDelegateNew = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InData: UNetAlienationData, bAdd: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetAlienationDataChangeDelegateNew:Add(Callback, Obj) end

---触发 Lua 广播
---@param InData UNetAlienationData
---@param bAdd boolean
function FNetAlienationDataChangeDelegateNew:Broadcast(InData, bAdd) end


---@class UNetAlienationDataComponent: UActorComponent
---@field OnAlienationDataChange FNetAlienationDataChangeDelegate
---@field OnAlienationDataChangeNew FNetAlienationDataChangeDelegateNew
---@field NetAlienationDataArray ULuaArrayHelper<UNetAlienationData>
---@field NetAlienationLocalDataArray ULuaArrayHelper<UNetAlienationData>
---@field NetAlienationViaPCDataArray ULuaArrayHelper<UNetAlienationData>
---@field LocalPendingNetUpdateObjs ULuaSetHelper<UNetAlienationData>
---@field InitializeNetDataClassConfig ULuaArrayHelper<UNetAlienationData>
---@field bUseLocalPendingNetUpdate boolean
---@field bRepNetAlienDataViaPC boolean
local UNetAlienationDataComponent = {}

---@param Class UNetAlienationData
function UNetAlienationDataComponent:GetAlienationDataByClass(Class) end

---@param Data UNetAlienationData
function UNetAlienationDataComponent:RemoveAlienationDataByClass(Data) end

---@param InData UNetAlienationData
function UNetAlienationDataComponent:MarkPendingNetUpdate(InData) end

function UNetAlienationDataComponent:HandleObChange() end

function UNetAlienationDataComponent:CreateInitializeNetData() end

function UNetAlienationDataComponent:ReceivePreDestroy() end
