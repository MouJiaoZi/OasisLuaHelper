---@meta

---@class ATeslaBalloon: ACollidedByVehicleBase, IHitEffectInterface
---@field BiggerCheckRadius number
---@field BiggerCheckInterval number
---@field SmallerCheckRadius number
---@field SmallerCheckInterval number
---@field MaxSmallCheckTime number
---@field objectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field TempHitReses ULuaArrayHelper<FHitResult>
---@field IgnoreActors ULuaArrayHelper<AActor>
local ATeslaBalloon = {}
