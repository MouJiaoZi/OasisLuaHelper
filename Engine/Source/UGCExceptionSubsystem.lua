---@meta

---@class FOnKeyLogFightingLog : ULuaSingleDelegate
FOnKeyLogFightingLog = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnKeyLogFightingLog:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 string
function FOnKeyLogFightingLog:Execute(Param1, Param2) end


---@class FOnExceptionFightingLog : ULuaSingleDelegate
FOnExceptionFightingLog = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnExceptionFightingLog:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 string
function FOnExceptionFightingLog:Execute(Param1, Param2) end


---@class FOnUGCExceptionDelegate : ULuaSingleDelegate
FOnUGCExceptionDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUGCExceptionDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 string
function FOnUGCExceptionDelegate:Execute(Param1, Param2) end


---@class UUGCExceptionSubsystem: UEngineSubsystem
local UUGCExceptionSubsystem = {}
