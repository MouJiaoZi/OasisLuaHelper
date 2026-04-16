---@meta

---@class AAirMissile: AActor
---@field FlyAudioHeight number
---@field MaxCheckNumPerFrame number
---@field HouseDamageRadius number
---@field ActorDamageRadius number
---@field PlayerNotInHouseDamagePer number
---@field VehicleNotInHouseDamagePer number
---@field IndoorUpperCheckDistance number
---@field IndoorDownCheckDistance number
---@field CollidedPlayers ULuaArrayHelper<AActor>
---@field InHousePlayers ULuaArrayHelper<AActor>
---@field NotInHousePlayers ULuaArrayHelper<AActor>
---@field CollidedVehicle ULuaArrayHelper<AActor>
---@field InHouseVehicle ULuaArrayHelper<AActor>
---@field NotInHouseVehicle ULuaArrayHelper<AActor>
---@field HitPos FVector
---@field Velocity FVector
local AAirMissile = {}

---@param Pos FVector
function AAirMissile:SetExplosionPos(Pos) end

---@param Caller AActor
function AAirMissile:SetCaller(Caller) end

---@param TargetActor AActor
function AAirMissile:SetTarget(TargetActor) end

function AAirMissile:CheckHitResult() end

---@param _FinalImpactResult FHitResult
function AAirMissile:HandleExplosion(_FinalImpactResult) end

function AAirMissile:DestroyMissile() end

function AAirMissile:PlayEffectAndSound() end

---@param Damage number
---@param Pos FVector
---@return FSTAirAttackRadialDamageEvent
function AAirMissile:GetDamgeEvent(Damage, Pos) end
