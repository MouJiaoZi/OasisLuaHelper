---@meta

---@class UShakeComponent: UActorComponent, IVNInstigatorInterface
---@field ShakeClass UCameraShake
---@field shakeScale number
---@field shakeDuration number
---@field maxAtten number
---@field minShakeScale number
local UShakeComponent = {}

function UShakeComponent:EndShaking() end
