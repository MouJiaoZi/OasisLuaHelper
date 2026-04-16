---@meta

---@class FUpdateBTReuseNewDelegate : ULuaMulticastDelegate
FUpdateBTReuseNewDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, item: UUserWidget, LogicID: number, index: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUpdateBTReuseNewDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param item UUserWidget
---@param LogicID number
---@param index number
function FUpdateBTReuseNewDelegate:Broadcast(item, LogicID, index) end


---@class UBTReuseItem: UCanvasPanel
local UBTReuseItem = {}
