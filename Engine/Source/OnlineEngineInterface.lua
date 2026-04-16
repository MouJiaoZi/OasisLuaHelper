---@meta

---Delegate fired when an AutoLogin request is complete
---@class FOnlineAutoLoginComplete : ULuaSingleDelegate
FOnlineAutoLoginComplete = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: boolean, Param3: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnlineAutoLoginComplete:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 boolean
---@param Param3 string
function FOnlineAutoLoginComplete:Execute(Param1, Param2, Param3) end


---Delegate fired when an online StartSession call has completed
---@class FOnlineSessionStartComplete : ULuaSingleDelegate
FOnlineSessionStartComplete = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnlineSessionStartComplete:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 boolean
function FOnlineSessionStartComplete:Execute(Param1, Param2) end


---Delegate fired when an online EndSession call has completed
---@class FOnlineSessionEndComplete : ULuaSingleDelegate
FOnlineSessionEndComplete = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnlineSessionEndComplete:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 boolean
function FOnlineSessionEndComplete:Execute(Param1, Param2) end


---Delegate fired when an external UI is opened or closed
---@class FOnlineExternalUIChanged : ULuaSingleDelegate
FOnlineExternalUIChanged = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnlineExternalUIChanged:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
function FOnlineExternalUIChanged:Execute(Param1) end


---Delegate executed when the web url UI has been closed
---@class FOnlineShowWebUrlClosed : ULuaSingleDelegate
FOnlineShowWebUrlClosed = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnlineShowWebUrlClosed:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
function FOnlineShowWebUrlClosed:Execute(Param1) end


---Delegate fired when a PIE login has completed
---@class FOnPIELoginComplete : ULuaSingleDelegate
FOnPIELoginComplete = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: boolean, Param3: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPIELoginComplete:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 boolean
---@param Param3 string
function FOnPIELoginComplete:Execute(Param1, Param2, Param3) end


---Interface class between engine and OnlineSubsystem to remove dependencies between the two The real work is implemented in UOnlineEngineInterfaceImpl in OnlineSubsystemUtils The expectation is that this basic group of functions will not expand/change and that OnlineSubsystem can remain independent of the engine Games should not use this interface, use the OnlineSubsystem plugins directly Better functionality descriptions can be found in the OnlineSubsystem interfaces Adding code here is discouraged, there is probably a better way, talk to the OGS team
---@class UOnlineEngineInterface: UObject
local UOnlineEngineInterface = {}
