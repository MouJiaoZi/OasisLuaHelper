---@meta

---@class FTagLogOutputToWidget : ULuaMulticastDelegate
FTagLogOutputToWidget = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTagLogOutputToWidget:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 string
function FTagLogOutputToWidget:Broadcast(Param1) end


---@class FFullTagLogOutputToWidget : ULuaMulticastDelegate
FFullTagLogOutputToWidget = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: string, Param2: number, Param3: string, Param4: FDateTime) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFullTagLogOutputToWidget:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 string
---@param Param2 number
---@param Param3 string
---@param Param4 FDateTime
function FFullTagLogOutputToWidget:Broadcast(Param1, Param2, Param3, Param4) end


---@class FDynamicFullTagLogOutputToWidget : ULuaMulticastDelegate
FDynamicFullTagLogOutputToWidget = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Category: string, Verbosity: number, Content: string, TimeStamp: FDateTime) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDynamicFullTagLogOutputToWidget:Add(Callback, Obj) end

---触发 Lua 广播
---@param Category string
---@param Verbosity number
---@param Content string
---@param TimeStamp FDateTime
function FDynamicFullTagLogOutputToWidget:Broadcast(Category, Verbosity, Content, TimeStamp) end


---@class UTagLogSubSystem: UEngineSubsystem
local UTagLogSubSystem = {}
