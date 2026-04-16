---@meta

---@class AAsianGopherActor: AAsianGameEasyBaseTarget
---@field DamageTypeSet ULuaSetHelper<EDamageType>
local AAsianGopherActor = {}

---@param Damage number
---@param HitResult FHitResult
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function AAsianGopherActor:TakeDamageBlueprint(Damage, HitResult, EventInstigator, DamageCauser) end

---@param DamageType number
---@return boolean
function AAsianGopherActor:CheckBaseCondition(DamageType) end

function AAsianGopherActor:PlayDeadSound() end

function AAsianGopherActor:BP_PlayDeadSound() end
