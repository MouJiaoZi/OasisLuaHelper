---@meta

---@class FOnDisplayPercentageChanged : ULuaMulticastDelegate
FOnDisplayPercentageChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DiplayPercentage: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDisplayPercentageChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param DiplayPercentage number
function FOnDisplayPercentageChanged:Broadcast(DiplayPercentage) end


---@class FOnRedCompleted : ULuaSingleDelegate
FOnRedCompleted = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRedCompleted:Bind(Callback, Obj) end

---执行委托
function FOnRedCompleted:Execute() end


---@class USignalUIWidget: UUAEUserWidget
---@field RedBarActualPercentage number
---@field RedBarDisplayPercentage number
---@field DelayTimeBeforeLerp number
---@field RedBarDisplayLerpSpeed number
---@field DisplayPercentageChanged FOnDisplayPercentageChanged
---@field OnRedCompleted FOnRedCompleted
---@field MoFoTickRate number
---@field AnimStartTimer FTimerHandle
---@field MaunalTickHandle FTimerHandle
local USignalUIWidget = {}

---@param NewActualPercentage number
function USignalUIWidget:StartRedbarAnimation(NewActualPercentage) end
