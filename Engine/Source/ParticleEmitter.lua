---@meta

---@class EParticleBurstMethod
---@field EPBM_Instant number @Instant
---@field EPBM_Interpolated number @Interpolated
---@field EPBM_MAX number
EParticleBurstMethod = {}


---@class EParticleSubUVInterpMethod
---@field PSUVIM_None number @None
---@field PSUVIM_Linear number @Linear
---@field PSUVIM_Linear_Blend number @Linear Blend
---@field PSUVIM_Random number @Random
---@field PSUVIM_Random_Blend number @Random Blend
---@field PSUVIM_MAX number
EParticleSubUVInterpMethod = {}


---@class EEmitterRenderMode
---@field ERM_Normal number @Normal
---@field ERM_Point number @Point
---@field ERM_Cross number @Cross
---@field ERM_LightsOnly number @Lights Only
---@field ERM_None number @None
---@field ERM_MAX number
EEmitterRenderMode = {}


---@class FParticleBurst
---@field Count number @The number of particles to burst
---@field CountLow number @If >= 0, use as a range [CountLow..Count]
---@field Time number @The time at which to burst them (0..1: emitter lifetime)
FParticleBurst = {}


---@class UParticleEmitter: UObject
---@field EmitterName string @The name of the emitter.
---@field SubUVDataOffset number
---@field EmitterRenderMode EEmitterRenderMode @How to render the emitter particles. Can be one of the following: ERM_Normal	- As the intended sprite/mesh ERM_Point	- As a 2x2 pixel block with no scaling and the color set in EmitterEditorColor ERM_Cross	- As a cross of lines, scaled to the size of the particle in EmitterEditorColor ERM_None	- Do not render
---@field LODLevels ULuaArrayHelper<UParticleLODLevel> @The color of the emitter in the curve editor and debug rendering modes.
---@field ConvertedModules number
---@field PeakActiveParticles number
---@field InitialAllocationCount number @Initial allocation count - overrides calculated peak count if > 0
---@field MediumDetailSpawnRateScale_DEPRECATED number @Scales the spawn rate of this emitter when the engine is running in medium or low detail mode. This can be used to optimize particle draw cost in splitscreen. A value of 0 effectively disables this emitter outside of high detail mode, And this does not affect spawn per unit, unless the value is 0.
---@field QualityLevelSpawnRateScale number
---@field GPUToCPUEmitterSpawnRateScale number
---@field DetailMode EDetailMode @If detail mode is >= system detail mode, primitive won't be rendered.
---@field bIsSoloing number @If true, then show only this emitter in the editor
---@field bCookedOut number @If true, then this emitter was 'cooked out' by the cooker. This means it was completely disabled, but to preserve any indexing schemes, it is left in place.
---@field bDisabledLODsKeepEmitterAlive number @When true, if the current LOD is disabled the emitter will be kept alive. Otherwise, the emitter will be considered complete if the current LOD is disabled.
---@field bDisableWhenInsignficant number @When true, emitters deemed insignificant will have their tick and render disabled Instantly. When false they will simple stop spawning new particles.
---@field SignificanceLevel EParticleSignificanceLevel @The significance level required of this emitter's owner for this emitter to be active.
---@field bSupportParticleDynamicInstance number @When true, if r.ParticleDynamicinstance = 1 and the particle emitter type support dynamic instance,the same particle emitter will use 1 draw call command to render
local UParticleEmitter = {}
