---@meta

---@class FGuideNotifyFramePaintEvent : ULuaMulticastDelegate
FGuideNotifyFramePaintEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGuideNotifyFramePaintEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param number
function FGuideNotifyFramePaintEvent:Broadcast(Param) end


---@class UGuideNotifyWidget: UUAEUserWidget
---@field OnFrameNotify FGuideNotifyFramePaintEvent
local UGuideNotifyWidget = {}

---@param Param number
function UGuideNotifyWidget:MarkNextFrameNotify(Param) end
