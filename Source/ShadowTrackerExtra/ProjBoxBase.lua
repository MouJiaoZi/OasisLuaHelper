---@meta

---继承可推动球体，修改碰撞体为方形
---@class AProjBoxBase: AProjBallBase
---@field bCanBPOverrideTakeDamage boolean
---@field OverlapCheckBoxExtend FVector
---@field bOverlapCheckIgnoreOwner boolean
---@field bDrawOverBox boolean
local AProjBoxBase = {}

---@param OverlapActor AActor
---@return boolean
function AProjBoxBase:FilterOverlapActor(OverlapActor) end

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function AProjBoxBase:BP_TakeDamage(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

---@param AddVelocity FVector
function AProjBoxBase:ServerAddVelocity(AddVelocity) end
