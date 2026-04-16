---@meta

---@class EColorPickerModes
---@field Spectrum number
---@field Wheel number
EColorPickerModes = {}


---@class FOnMouseCaptureBeginColorEvent : ULuaSingleDelegate
FOnMouseCaptureBeginColorEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMouseCaptureBeginColorEvent:Bind(Callback, Obj) end

---执行委托
function FOnMouseCaptureBeginColorEvent:Execute() end


---@class FOnMouseCaptureEndColorEvent : ULuaSingleDelegate
FOnMouseCaptureEndColorEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMouseCaptureEndColorEvent:Bind(Callback, Obj) end

---执行委托
function FOnMouseCaptureEndColorEvent:Execute() end


---@class FOnLinearColorValueChangedEvent : ULuaMulticastDelegate
FOnLinearColorValueChangedEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InValue: FLinearColor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLinearColorValueChangedEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param InValue FLinearColor
function FOnLinearColorValueChangedEvent:Broadcast(InValue) end


---@class UColorPicker: UWidget
---@field OnValueChanged FOnLinearColorValueChangedEvent
---@field OnMouseCaptureBegin FOnMouseCaptureBeginColorEvent
---@field OnMouseCaptureEnd FOnMouseCaptureEndColorEvent
---@field ColorHSV FLinearColor
---@field ColorHSVDelegate FGetLinearColor
---@field Brush FSlateBrush
local UColorPicker = {}

---@return FLinearColor
function UColorPicker:GetColor() end

---@param InColorHSV FLinearColor
function UColorPicker:SetColor(InColorHSV) end

---@return string
function UColorPicker:HandleHexSRGBBoxText() end

---@return string
function UColorPicker:HandleHexLinearString() end
