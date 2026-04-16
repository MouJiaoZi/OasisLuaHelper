---@meta

---@class FScriptNetworkRemoteContent
---@field Content ULuaArrayHelper<number>
---@field ContentNumBits number
FScriptNetworkRemoteContent = {}


---@class FScriptNetworkReplicatedPropertyDescBase
FScriptNetworkReplicatedPropertyDescBase = {}


---@class FScriptNetworkReplicatedPropertyWrapper
FScriptNetworkReplicatedPropertyWrapper = {}


---@class FOnRepScriptNetworkReplicatedPropertyWrapperDelegate : ULuaSingleDelegate
FOnRepScriptNetworkReplicatedPropertyWrapperDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: AActor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRepScriptNetworkReplicatedPropertyWrapperDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 AActor
function FOnRepScriptNetworkReplicatedPropertyWrapperDelegate:Execute(Param1) end


---@class FReceiveScriptNetworkRemoteContentDelegate : ULuaSingleDelegate
FReceiveScriptNetworkRemoteContentDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UObject, Param2: FScriptNetworkRemoteContent) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReceiveScriptNetworkRemoteContentDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 UObject
---@param Param2 FScriptNetworkRemoteContent
function FReceiveScriptNetworkRemoteContentDelegate:Execute(Param1, Param2) end
