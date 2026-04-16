---@meta

---@class FBiParticleSystemComponentTemplateLoaded : ULuaMulticastDelegate
FBiParticleSystemComponentTemplateLoaded = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Component: UBiParticleComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBiParticleSystemComponentTemplateLoaded:Add(Callback, Obj) end

---触发 Lua 广播
---@param Component UBiParticleComponent
function FBiParticleSystemComponentTemplateLoaded:Broadcast(Component) end


---@class UBiParticleComponent: UParticleSystemComponent
---@field LowTemplate UParticleSystem
---@field HighTemplate UParticleSystem
---@field OnTemplateLoadedDelegate FBiParticleSystemComponentTemplateLoaded
---@field ForceSyncLoad number
---@field HighEffectGrade number
local UBiParticleComponent = {}

function UBiParticleComponent:OnTemplateLoaded() end
