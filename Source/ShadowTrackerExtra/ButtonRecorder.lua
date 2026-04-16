---@meta

---@class EButtonEventType
---@field OnClick number
---@field Press number
---@field OnRelase number
---@field OnMouseButtonDown number
---@field OnMouseButtonUp number
EButtonEventType = {}


---@class FInputButtonEvent
---@field EventID string
---@field CurrentFrameIndex number
---@field CurrentDelta number
---@field EventType EButtonEventType
---@field TouchEvent FPointerEvent
FInputButtonEvent = {}


---@class FInputButtonName
---@field WidgetName string
---@field OuterName string
---@field bUseContains boolean
---@field LogicManger string
---@field EventID number
FInputButtonName = {}


---@class FOnAnyEventTrigger : ULuaMulticastDelegate
FOnAnyEventTrigger = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAnyEventTrigger:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventName string
function FOnAnyEventTrigger:Broadcast(EventName) end


---@class UButtonRecorder: UObject
---@field OnEventTrigger FOnAnyEventTrigger
local UButtonRecorder = {}

function UButtonRecorder:StartRecoder() end

function UButtonRecorder:StopRecoder() end

function UButtonRecorder:StartPlay() end

function UButtonRecorder:StopPlay() end

---@param Event FInputButtonEvent
function UButtonRecorder:TriggerEvent(Event) end

function UButtonRecorder:OnButtonPress() end

function UButtonRecorder:OnButtonRealse() end

function UButtonRecorder:OnButtonClick() end

---@param Gem FGeometry
---@param Point FPointerEvent
function UButtonRecorder:OnMouseButtonDown(Gem, Point) end

---@param Gem FGeometry
---@param Point FPointerEvent
function UButtonRecorder:OnMouseButtonUp(Gem, Point) end
