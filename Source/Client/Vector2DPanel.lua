---@meta

---@class FOnVector2DMouseCaptureBeginEvent : ULuaSingleDelegate
FOnVector2DMouseCaptureBeginEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVector2DMouseCaptureBeginEvent:Bind(Callback, Obj) end

---执行委托
function FOnVector2DMouseCaptureBeginEvent:Execute() end


---@class FOnVector2DMouseCaptureEndEvent : ULuaSingleDelegate
FOnVector2DMouseCaptureEndEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVector2DMouseCaptureEndEvent:Bind(Callback, Obj) end

---执行委托
function FOnVector2DMouseCaptureEndEvent:Execute() end


---@class FOnVect2DValueChangedEvent : ULuaMulticastDelegate
FOnVect2DValueChangedEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, value: FVector2D) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVect2DValueChangedEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param value FVector2D
function FOnVect2DValueChangedEvent:Broadcast(value) end


---@class UVector2DPanel: UWidget
---@field BackGroundBrush FSlateBrush @Image to draw
---@field SelectorBrush FSlateBrush
---@field IsOnlyHorizontal boolean
---@field IsOnlyVerital boolean
---@field SelectorValue FVector2D
---@field OnMouseCaptureBegin FOnVector2DMouseCaptureBeginEvent @Invoked when the mouse is pressed and a capture begins.
---@field OnMouseCaptureEnd FOnVector2DMouseCaptureEndEvent @Invoked when the mouse is released and a capture ends.
---@field OnVector2DPanelValueChanged FOnVect2DValueChangedEvent @Called when the checked state has changed
local UVector2DPanel = {}

---@param InBrush FSlateBrush
function UVector2DPanel:SetBackgroundBrush(InBrush) end

---@param InBrush FSlateBrush
function UVector2DPanel:SetSelectorBrush(InBrush) end

---Returns true if this button is currently pressed
---@return boolean
function UVector2DPanel:IsPressed() end

---Gets the current value of the vector2DPanel.
---@return FVector2D
function UVector2DPanel:GetValue() end

---@param value FVector2D
function UVector2DPanel:SetSelectorValue(value) end

---@param x number
---@param y number
function UVector2DPanel:SetSelectorValueXY(x, y) end

---@param isHorizontal boolean
function UVector2DPanel:SetIsOnlyHorizontal(isHorizontal) end

---@param isVertical boolean
function UVector2DPanel:SetIsOnlyVertical(isVertical) end
