---@meta

---可弹跳子弹抛体子弹基类
---@class ABouncProjectileBulletBase: AProjectileBulletBase
---@field bCanEnterWarter boolean
---@field bCanBreakGlass boolean
---@field bDestroyWhenImpact boolean
---@field ApplyDamageTargetClassList ULuaArrayHelper<AActor>
---@field bHasEnterWater boolean
local ABouncProjectileBulletBase = {}

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function ABouncProjectileBulletBase:OnBounce(ImpactResult, ImpactVelocity) end

---@param _ImpactResult FHitResult
function ABouncProjectileBulletBase:OnImpact(_ImpactResult) end

---@param _ImpactResult FHitResult
function ABouncProjectileBulletBase:OnImpactEnd(_ImpactResult) end
