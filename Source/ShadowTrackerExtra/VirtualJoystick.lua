---@meta

---@class FOnPressedEvent : ULuaSingleDelegate
FOnPressedEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPressedEvent:Bind(Callback, Obj) end

---执行委托
function FOnPressedEvent:Execute() end


---@class FOnReleasedEvent : ULuaSingleDelegate
FOnReleasedEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReleasedEvent:Bind(Callback, Obj) end

---执行委托
function FOnReleasedEvent:Execute() end


---@class FOnMovedEvent : ULuaMulticastDelegate
FOnMovedEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Offset: FVector2D) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMovedEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Offset FVector2D
function FOnMovedEvent:Broadcast(Offset) end


---@class UVirtualJoystick: UWidget
---@field OnPressed FOnPressedEvent
---@field OnReleased FOnReleasedEvent
---@field OnMoved FOnMovedEvent
---@field Brush1 FSlateBrush
---@field Brush2 FSlateBrush
---@field Center FVector2D
---@field VisualSize FVector2D
---@field ThumbSize FVector2D
---@field InteractionSize FVector2D
---@field InputScale FVector2D
---@field InputTagX FGameplayTag
---@field InputTagY FGameplayTag
---@field IsPassMouseEvent boolean
local UVirtualJoystick = {}

---@param bVisible boolean
function UVirtualJoystick:SetVirtualJoystickVisibility(bVisible) end

---@param bBackGroundBrush boolean
---@param Color FLinearColor
function UVirtualJoystick:SetBrushTintColor(bBackGroundBrush, Color) end

---@param bForceStart boolean
function UVirtualJoystick:SetForceTouchStart(bForceStart) end

---@param Index number
function UVirtualJoystick:SetForceStartTouchIndex(Index) end

function UVirtualJoystick:SetDelayForceTouchStartFrameCount() end

---@param JSInteractionSize FVector2D
function UVirtualJoystick:SetJoyStickInteractionSize(JSInteractionSize) end

---@param JSInput FVector2D
---@param Size FVector2D
function UVirtualJoystick:ReceiveJoystickInput(JSInput, Size) end
