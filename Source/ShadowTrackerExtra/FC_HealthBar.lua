---@meta

---@class FShowAndChangeHP : ULuaSingleDelegate
FShowAndChangeHP = {}

---绑定回调函数
---@param Callback fun(Obj: any, rate: number, showTime: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FShowAndChangeHP:Bind(Callback, Obj) end

---执行委托
---@param rate number
---@param showTime number
function FShowAndChangeHP:Execute(rate, showTime) end


---@class UFC_HealthBar: UFeatureCustomModule
---@field isForTestOnly boolean
---@field bShowHealthBar boolean
---@field healthBarShowTime number
---@field HpBarDisplayHeight number
---@field showAndChangeHP FShowAndChangeHP
local UFC_HealthBar = {}
