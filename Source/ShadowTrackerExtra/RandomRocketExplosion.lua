---@meta

---@class FRandomRocketDamageData
---@field MinDamage number
---@field MaxDamage number
---@field ExplosionRadius number
---@field explosionOffset FVector
---@field DamageTypeClass UDamageType
FRandomRocketDamageData = {}


---@class ARandomRocketExplosion: AActor
---@field TraceDepth number
---@field EdgeWidthPercentage number
---@field TraceToGround boolean
---@field DelayExplosion number
---@field AlertFlashDuration number
---@field AlertRange number
---@field IconID number
---@field DispatchType EMarkDispatchRange
---@field DefaultRandomRange number
---@field ExplosionConfig FRandomRocketDamageData
---@field DelayTimeHandle FTimerHandle
local ARandomRocketExplosion = {}

---@param Location FVector
function ARandomRocketExplosion:OnLocationGenerated(Location) end

---@param pos FVector
---@param _TraceToGround boolean
function ARandomRocketExplosion:NetMulticast_PlayExplosionEffect(pos, _TraceToGround) end

---@param ExplosionLoc FVector
function ARandomRocketExplosion:DoExplosion(ExplosionLoc) end

---@return FVector
function ARandomRocketExplosion:GenerateExplosionLocation() end

---@param loc FVector
function ARandomRocketExplosion:EnqueueAlertData(loc) end
