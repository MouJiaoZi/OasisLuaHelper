---@meta

---@class FOnFloatValueChangedWithIndexEvent : ULuaMulticastDelegate
FOnFloatValueChangedWithIndexEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Idx: number, InPercent: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFloatValueChangedWithIndexEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Idx number
---@param InPercent number
function FOnFloatValueChangedWithIndexEvent:Broadcast(Idx, InPercent) end


---@class FOnInt32ValueChangedEvent : ULuaMulticastDelegate
FOnInt32ValueChangedEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Idx: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnInt32ValueChangedEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Idx number
function FOnInt32ValueChangedEvent:Broadcast(Idx) end


---@class UColorGradientSlider: UColorGradient
---@field OnPercentChanged FOnFloatValueChangedWithIndexEvent
---@field OnChildSelected FOnInt32ValueChangedEvent
---@field SliderStyle FSliderStyle
---@field BarFrameNormal FSlateBrush
---@field BarFrameSelect FSlateBrush
---@field DefaultSelectIndex number
local UColorGradientSlider = {}

---@param Idx number
function UColorGradientSlider:SetCurSelectIndex(Idx) end

---@param datas ULuaArrayHelper<FColorGradientCellInfo>
function UColorGradientSlider:SetDatas(datas) end
