---@meta

---绳索所处阶段，控制噪声幅度和行为
---@class ECableNoiseState
---@field Idle number
---@field Flying number
---@field Impact number
---@field Settling number
---@field Taut number
ECableNoiseState = {}


---在 UCableComponent 基础上，模拟 Apex 风格钩锁绳索的视觉效果： 飞行中绳索自然弯曲，命中后张力脉冲，随后丝滑绷紧。 依赖：UCableComponent 上新增的接口 TArray<FCableParticle>& GetParticles()
---@class UGrappleHookCableComponent: UCableComponent
---@field FlyingHorizontalStrength number @飞行中水平弯曲幅度 (cm)
---@field FlyingVerticalStrength number @飞行中垂直下垂幅度 (cm)
---@field FlyingNoiseFrequency number @飞行中噪声频率
---@field ImpactPulseStrength number @命中时张力脉冲强度 (cm)，产生绳索弹跳感
---@field ImpactDecaySpeed number @命中脉冲衰减速度，越大衰减越快（越快拉直）
---@field TautIdleStrength number @绷紧后的持续微颤幅度 (cm)，0 = 完全静止
---@field TautIdleFrequency number @绷紧后微颤频率（慢速飘动感）
---@field SmoothPasses number @偏移量平滑迭代次数，越高绳索越柔滑，0 = 不平滑
local UGrappleHookCableComponent = {}

---通知绳索：钩爪已命中目标，触发张力脉冲并开始绷紧
function UGrappleHookCableComponent:NotifyImpact() end

---重置为 Idle 状态
function UGrappleHookCableComponent:NotifyReset() end

---通知绳索：钩爪开始飞行
function UGrappleHookCableComponent:NotifyFired() end
