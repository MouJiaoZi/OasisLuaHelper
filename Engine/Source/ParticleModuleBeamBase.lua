---@meta

---The method to use in determining the source/target.
---@class Beam2SourceTargetMethod
---@field PEB2STM_Default number @Default	- use the distribution. This is the fallback for when other modes can't be resolved.
---@field PEB2STM_UserSet number @UserSet	- use the user set value. Primarily intended for weapon effects.
---@field PEB2STM_Emitter number @Emitter	- use the emitter position as the source/target.
---@field PEB2STM_Particle number @Particle	- use the particles from a given emitter in the system. The name of the emitter should be set in <Source/Target>Name.
---@field PEB2STM_Actor number @Actor		- use the actor as the source/target. The name of the actor should be set in <Source/Target>Name.
---@field PEB2STM_MAX number
Beam2SourceTargetMethod = {}


---The method to use in determining the source/target tangent.
---@class Beam2SourceTargetTangentMethod
---@field PEB2STTM_Direct number @Direct - a direct line between source and target.
---@field PEB2STTM_UserSet number @UserSet	- use the user set value.
---@field PEB2STTM_Distribution number @Distribution - use the distribution.
---@field PEB2STTM_Emitter number @Emitter	- use the emitter direction.
---@field PEB2STTM_MAX number
Beam2SourceTargetTangentMethod = {}


---@class UParticleModuleBeamBase: UParticleModule
local UParticleModuleBeamBase = {}
