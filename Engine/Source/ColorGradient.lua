---@meta

---@class FGetColorGradientInfos : ULuaSingleDelegate
FGetColorGradientInfos = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetColorGradientInfos:Bind(Callback, Obj) end

---执行委托
function FGetColorGradientInfos:Execute() end


---@class UColorGradient: UWidget
---@field ColorRGBsDelegate FGetColorGradientInfos
---@field ColorRGBs ULuaArrayHelper<FColorGradientCellInfo>
local UColorGradient = {}

---@return number
function UColorGradient:GetNum() end

---@param Idx number
---@param OutPercent number
---@param OutColorRGB FLinearColor
---@return boolean
function UColorGradient:GetCellByIndex(Idx, OutPercent, OutColorRGB) end

---@param InPercent number
---@return number
function UColorGradient:FindIndexByPercent(InPercent) end

---@param datas ULuaArrayHelper<FColorGradientCellInfo>
function UColorGradient:SetDatas(datas) end
