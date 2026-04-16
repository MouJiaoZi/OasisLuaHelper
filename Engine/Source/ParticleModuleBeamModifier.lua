---@meta

---What to modify.
---@class BeamModifierType
---@field PEB2MT_Source number @Modify the source of the beam.
---@field PEB2MT_Target number @Modify the target of the beam.
---@field PEB2MT_MAX number
BeamModifierType = {}


---@class FBeamModifierOptions
---@field bModify number @If true, modify the value associated with this grouping.
---@field bScale number @If true, scale the associated value by the given value.
---@field bLock number @If true, lock the modifier to the life of the particle.
FBeamModifierOptions = {}


---@class UParticleModuleBeamModifier: UParticleModuleBeamBase
---@field ModifierType BeamModifierType @Whether this module modifies the Source or the Target.
---@field PositionOptions any @The options associated with the position.
---@field Position any @The value to use when modifying the position.
---@field TangentOptions any @The options associated with the Tangent.
---@field Tangent any @The value to use when modifying the Tangent.
---@field bAbsoluteTangent number @If true, don't transform the tangent modifier into the tangent basis.
---@field StrengthOptions any @The options associated with the Strength.
---@field Strength any @The value to use when modifying the Strength.
local UParticleModuleBeamModifier = {}
