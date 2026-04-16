---@meta

---@class FOnMouseCaptureBeginEvent : ULuaSingleDelegate
FOnMouseCaptureBeginEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMouseCaptureBeginEvent:Bind(Callback, Obj) end

---执行委托
function FOnMouseCaptureBeginEvent:Execute() end


---@class FOnMouseCaptureEndEvent : ULuaSingleDelegate
FOnMouseCaptureEndEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMouseCaptureEndEvent:Bind(Callback, Obj) end

---执行委托
function FOnMouseCaptureEndEvent:Execute() end


---@class FOnControllerCaptureBeginEvent : ULuaSingleDelegate
FOnControllerCaptureBeginEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnControllerCaptureBeginEvent:Bind(Callback, Obj) end

---执行委托
function FOnControllerCaptureBeginEvent:Execute() end


---@class FOnControllerCaptureEndEvent : ULuaSingleDelegate
FOnControllerCaptureEndEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnControllerCaptureEndEvent:Bind(Callback, Obj) end

---执行委托
function FOnControllerCaptureEndEvent:Execute() end


---@class FOnFloatValueChangedEvent : ULuaMulticastDelegate
FOnFloatValueChangedEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Value: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFloatValueChangedEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Value number
function FOnFloatValueChangedEvent:Broadcast(Value) end


---A simple widget that shows a sliding bar with a handle that allows you to control the value between 0..1. * No Children
---@class USlider: UWidget
---@field Value number @The volume value to display.
---@field ValueDelegate FGetFloat @A bindable delegate to allow logic to drive the value of the widget
---@field WidgetStyle FSliderStyle @The progress bar style
---@field Orientation EOrientation @The slider's orientation.
---@field SliderBarColor FLinearColor @The color to draw the slider bar in.
---@field SliderHandleColor FLinearColor @The color to draw the slider handle in.
---@field IndentHandle boolean @Whether the slidable area should be indented to fit the handle.
---@field Locked boolean @Whether the handle is interactive or fixed.
---@field StepSize number @The amount to adjust the value by, when using a controller or keyboard
---@field IsFocusable boolean @Should the slider be focusable?
---@field SupportClickChange boolean
---@field OnMouseCaptureBegin FOnMouseCaptureBeginEvent @Invoked when the mouse is pressed and a capture begins.
---@field OnMouseCaptureEnd FOnMouseCaptureEndEvent @Invoked when the mouse is released and a capture ends.
---@field OnControllerCaptureBegin FOnControllerCaptureBeginEvent @Invoked when the controller capture begins.
---@field OnControllerCaptureEnd FOnControllerCaptureEndEvent @Invoked when the controller capture ends.
---@field OnValueChanged FOnFloatValueChangedEvent @Called when the value is changed by slider or typing.
local USlider = {}

---Gets the current value of the slider.
---@return number
function USlider:GetValue() end

---Sets the current value of the slider.
---@param InValue number
function USlider:SetValue(InValue) end

---Sets if the slidable area should be indented to fit the handle
---@param InValue boolean
function USlider:SetIndentHandle(InValue) end

---Sets the handle to be interactive or fixed
---@param InValue boolean
function USlider:SetLocked(InValue) end

---Sets the amount to adjust the value by, when using a controller or keyboard
---@param InValue number
function USlider:SetStepSize(InValue) end

---Sets the color of the slider bar
---@param InValue FLinearColor
function USlider:SetSliderBarColor(InValue) end

---Sets the color of the handle bar
---@param InValue FLinearColor
function USlider:SetSliderHandleColor(InValue) end
