---@meta

---@class FOnColorSpinBoxValueChangedEvent : ULuaMulticastDelegate
FOnColorSpinBoxValueChangedEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InValue: FLinearColor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnColorSpinBoxValueChangedEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param InValue FLinearColor
function FOnColorSpinBoxValueChangedEvent:Broadcast(InValue) end


---@class FOnInteractiveChangeBeginEvent : ULuaSingleDelegate
FOnInteractiveChangeBeginEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnInteractiveChangeBeginEvent:Bind(Callback, Obj) end

---执行委托
function FOnInteractiveChangeBeginEvent:Execute() end


---@class FOnInteractiveChangeEndEvent : ULuaSingleDelegate
FOnInteractiveChangeEndEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnInteractiveChangeEndEvent:Bind(Callback, Obj) end

---执行委托
function FOnInteractiveChangeEndEvent:Execute() end


---@class UColorSlider: UWidget
---@field OnInteractiveChangeBegin FOnInteractiveChangeBeginEvent
---@field OnInteractiveChangeEnd FOnInteractiveChangeEndEvent
---@field OnValueChanged FOnColorSpinBoxValueChangedEvent
---@field ColorHSVDelegate FGetLinearColor
---@field SliderHandleColorDelegate FGetLinearColor
---@field bUseHandleColorOrCurrentColor boolean
---@field ColorHSV FLinearColor
---@field SliderHandleColor FLinearColor
---@field Channel EColorSliderChannels
---@field SliderStyle FSliderStyle
---@field SliderBarFrame FSlateBrush
local UColorSlider = {}

---@return FLinearColor
function UColorSlider:GetColor() end

---@param InColorHSV FLinearColor
function UColorSlider:SetColor(InColorHSV) end

---@param InSliderHandleColor FLinearColor
function UColorSlider:SetSliderHandleColor(InSliderHandleColor) end

---@return EColorSliderChannels
function UColorSlider:GetColorSliderChannels() end

---@param InChannel EColorSliderChannels
function UColorSlider:SetColorSliderChannels(InChannel) end

---@param bUse boolean
function UColorSlider:SetUseHandleColorOrCurrentColor(bUse) end
