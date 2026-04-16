---@meta

---@class UEscapeParamoLavaFireEffect: UPersistEffectBase
---@field bIsFiring boolean
---@field FireParticleComponentTag string
---@field bTickFireParticlesLocation boolean
local UEscapeParamoLavaFireEffect = {}

function UEscapeParamoLavaFireEffect:OnRep_bIsFiring() end

function UEscapeParamoLavaFireEffect:UpdateFireParticlesLocation() end


---@class AEscapeParamoLavaDamageApplier: AActor
---@field LowDamageForCharacter number
---@field HighDamageForCharacter number
---@field DamageRate number
---@field LavaDamageType UDamageType
---@field FlowLavaRegionClass AUAEFlowRegionVolumeActor
---@field LavaFireEffectClass UEscapeParamoLavaFireEffect
---@field DamageTimerHandle FTimerHandle
local AEscapeParamoLavaDamageApplier = {}

function AEscapeParamoLavaDamageApplier:ProcessDamageForOneBox() end

---@param Character ASTExtraBaseCharacter
function AEscapeParamoLavaDamageApplier:ProcessCharacterDamage(Character) end
