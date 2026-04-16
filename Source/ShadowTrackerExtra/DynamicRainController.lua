---@meta

---@class FDynamicRainControllerThunder : ULuaMulticastDelegate
FDynamicRainControllerThunder = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, angle: number, distance: number, OnlySound: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDynamicRainControllerThunder:Add(Callback, Obj) end

---触发 Lua 广播
---@param angle number
---@param distance number
---@param OnlySound boolean
function FDynamicRainControllerThunder:Broadcast(angle, distance, OnlySound) end


---@class UDynamicRainController: UDynamicWeatherController
---@field OnThunder FDynamicRainControllerThunder
---@field bWetEnable boolean
---@field MaxRainParticle number
---@field MaxRainParticleLow number
---@field MaxRainParticleDummy number
---@field bThunderEnable boolean
---@field ThunderIntervalMin number
---@field ThunderIntervalMax number
---@field ThunderDistanceMin number
---@field ThunderDistanceMax number
---@field ThunderAngleMax number
local UDynamicRainController = {}

function UDynamicRainController:CreateThunderOnServer() end

---@param angle number
---@param distance number
function UDynamicRainController:CreateThunderOnClient(angle, distance) end

---@param renderlevel number
function UDynamicRainController:OnUserQualitySettingChanged(renderlevel) end
