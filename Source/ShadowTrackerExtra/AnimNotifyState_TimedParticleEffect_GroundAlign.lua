---@meta

---UAnimNotifyState_TimedParticleEffect_GroundAlign 继承自 UAnimNotifyState_TimedParticleEffect，通过向下射线检测地面， 将粒子特效对齐到地面位置，并根据地面法线调整朝向。
---@class UAnimNotifyState_TimedParticleEffect_GroundAlign: UAnimNotifyState_TimedParticleEffect
---@field TraceRadius number
---@field TraceDownDistance number
---@field MaxHitDistance number
---@field SurfaceOffset number
---@field TraceChannel ECollisionChannel
---@field TraceStartZOffset number
local UAnimNotifyState_TimedParticleEffect_GroundAlign = {}
