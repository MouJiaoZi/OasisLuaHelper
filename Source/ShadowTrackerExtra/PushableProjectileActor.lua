---@meta

---@class APushableProjectileActor: AProjectileActorBase
---@field RepLaunchVeocity FVector
---@field PushableComponentSelector FActorComponentSelector
local APushableProjectileActor = {}

function APushableProjectileActor:OnRep_RepLaunchVeocity() end
