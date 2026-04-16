---@meta

---@class FFootEffectConfig
---@field ParticleSocket string
FFootEffectConfig = {}


---@class UFootEffectComponent: UActorComponent
---@field FootParticleConfig ULuaMapHelper<EPhysicalSurface, FFootEffectConfig>
---@field NotPlayConditions ULuaArrayHelper<FNotPlayParticleCondition>
local UFootEffectComponent = {}

---@param PhysicalSurface EPhysicalSurface
---@return string
function UFootEffectComponent:GetFootParticleSocket(PhysicalSurface) end

---@param PhysicalSurface EPhysicalSurface
---@return EAttachLocation
function UFootEffectComponent:GetFootParticleAttachType(PhysicalSurface) end
