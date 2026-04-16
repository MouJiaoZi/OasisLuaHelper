---@meta

---ParticleSystemUpdateMode Enumeration indicating the method by which the system should be updated
---@class EParticleSystemUpdateMode
---@field EPSUM_RealTime number @RealTime	- update via the delta time passed in
---@field EPSUM_FixedTime number @FixedTime	- update via a fixed time step
EParticleSystemUpdateMode = {}


---ParticleSystemLODMethod
---@class ParticleSystemLODMethod
---@field PARTICLESYSTEMLODMETHOD_Automatic number @Automatic
---@field PARTICLESYSTEMLODMETHOD_DirectSet number @Direct Set
---@field PARTICLESYSTEMLODMETHOD_ActivateAutomatic number @Activate Automatic
ParticleSystemLODMethod = {}


---Occlusion method enumeration
---@class EParticleSystemOcclusionBoundsMethod
---@field EPSOBM_None number @Don't determine occlusion on this particle system
---@field EPSOBM_ParticleBounds number @Use the bounds of the particle system component when determining occlusion
---@field EPSOBM_CustomBounds number @Use the custom occlusion bounds when determining occlusion
EParticleSystemOcclusionBoundsMethod = {}


---Structure containing per-LOD settings that pertain to the entire UParticleSystem.
---@class FParticleSystemLOD
FParticleSystemLOD = {}


---Temporary array for tracking 'solo' emitter mode. Entry will be true if emitter was enabled
---@class FLODSoloTrack
---@field SoloEnableSetting ULuaArrayHelper<number>
FLODSoloTrack = {}


---@class FNamedEmitterMaterial
---@field Name string
FNamedEmitterMaterial = {}


---A ParticleSystem is a complete particle effect that contains any number of ParticleEmitters. By allowing multiple emitters in a system, the designer can create elaborate particle effects that are held in a single system. Once created using Cascade, a ParticleSystem can then be inserted into a level or created in script.
---@class UParticleSystem: UObject
---@field SystemUpdateMode EParticleSystemUpdateMode
---@field UpdateTime_FPS number @UpdateTime_FPS	- the frame per second to update at in FixedTime mode
---@field UpdateTime_Delta number @UpdateTime_Delta	- internal
---@field WarmupTime number @WarmupTime - the time to warm-up the particle system when first rendered Warning: WarmupTime is implemented by simulating the particle system for the time requested upon activation. This is extremely prone to cause hitches, especially with large particle counts - use with caution.
---@field WarmupTickRate number @WarmupTickRate - the time step for each tick during warm up. Increasing this improves performance. Decreasing, improves accuracy. Set to 0 to use the default tick time.
---@field bEnableSeparateRendering boolean
---@field Emitters ULuaArrayHelper<UParticleEmitter> @Emitters	- internal - the array of emitters in the system
---@field bOrientZAxisTowardCamera number @If true, the system's Z axis will be oriented toward the camera
---@field LODDistanceCheckTime number @How often (in seconds) the system should perform the LOD distance check.
---@field bUseDeviceConstBias boolean
---@field bUseUltraDeviceBias boolean
---@field bUseDeviceQualityBias boolean
---@field bUsePCDeviceConstBias boolean
---@field bUseCustomCullDistance boolean
---@field bUseAbsoluteDistance boolean @default false ,use for cull distance not affected by r.ViewDistanceScale
---@field CustomCullDistance number @default 0 ,use for mobile particle distance cull
---@field CustomPCCullDistance number @default -1 then use same distance as mobile do
---@field CullDistanceCheckTime number
---@field LODMethod ParticleSystemLODMethod @The method of LOD level determination to utilize for this particle system PARTICLESYSTEMLODMETHOD_Automatic - Automatically set the LOD level, checking every LODDistanceCheckTime seconds. PARTICLESYSTEMLODMETHOD_DirectSet - LOD level is directly set by the game code. PARTICLESYSTEMLODMETHOD_ActivateAutomatic - LOD level is determined at Activation time, then left alone unless directly set by game code.
---@field LODDistances ULuaArrayHelper<number> @The array of distances for each LOD level in the system. Used when LODMethod is set to PARTICLESYSTEMLODMETHOD_Automatic. Example: System with 3 LOD levels LODDistances(0) = 0.0 LODDistances(1) = 2500.0 LODDistances(2) = 5000.0 In this case, when the system is [   0.0 ..   2499.9] from the camera, LOD level 0 will be used. [2500.0 ..   4999.9] from the camera, LOD level 1 will be used. [5000.0 .. INFINITY] from the camera, LOD level 2 will be used.
---@field bRegenerateLODDuplicate number @Internal value that tracks the regenerate LOD levels preference. If true, when autoregenerating LOD levels in code, the low level will be a duplicate of the high.
---@field LODSettings ULuaArrayHelper<FParticleSystemLOD>
---@field bUseFixedRelativeBoundingBox number @Whether to use the fixed relative bounding box or calculate it every frame.
---@field FixedRelativeBoundingBox FBox @Fixed relative bounding box for particle system.
---@field SecondsBeforeInactive number @Number of seconds of emitter not being rendered that need to pass before it no longer gets ticked/ becomes inactive.
---@field bShouldResetPeakCounts number @EDITOR ONLY: Indicates that Cascade would like to have the PeakActiveParticles count reset
---@field bHasPhysics number @Set during load time to indicate that physics is used...
---@field bUseRealtimeThumbnail number @Inidicates the old 'real-time' thumbnail rendering should be used
---@field ThumbnailImageOutOfDate number @Internal: Indicates the PSys thumbnail image is out of date
---@field Delay number @How long this Particle system should delay when ActivateSystem is called on it.
---@field DelayLow number @The low end of the emitter delay if using a range.
---@field bUseDelayRange number @If true, select the emitter delay from the range [DelayLow..Delay]
---@field bAllowGcCluster number
---@field bAllowRenderDataUpdateLag number
---@field bAllowManagedTicking number
---@field bAutoDeactivate boolean
---@field MinTimeBetweenTicks number
---@field InsignificantReaction EParticleSystemInsignificanceReaction @The reaction this system takes when all emitters are insignificant.
---@field InsignificanceDelay number @Time delay between all emitters becoming insignificant and the systems insignificant reaction.
---@field MaxSignificanceLevel EParticleSignificanceLevel @The maximum level of significance for emitters in this system. Any emitters with a higher significance will be capped at this significance level.
---@field bAllowTickOptimization number
---@field bAllowSlowTickWhenInVisiable number
---@field bAllowSlowTickWhenFarAway number
---@field MacroUVPosition FVector @Local space position that UVs generated with the ParticleMacroUV material node will be centered on.
---@field MacroUVRadius number @World space radius that UVs generated with the ParticleMacroUV material node will tile based on.
---@field OcclusionBoundsMethod EParticleSystemOcclusionBoundsMethod @Which occlusion bounds method to use for this particle system. EPSOBM_None - Don't determine occlusion for this system. EPSOBM_ParticleBounds - Use the bounds of the component when determining occlusion.
---@field CustomOcclusionBounds FBox @The occlusion bounds to use if OcclusionBoundsMethod is set to EPSOBM_CustomBounds
---@field SoloTracking ULuaArrayHelper<FLODSoloTrack>
---@field NamedMaterialSlots ULuaArrayHelper<FNamedEmitterMaterial> @Array of named material slots for use by emitters of this system. Emitters can use these instead of their own materials by providing the name to the NamedMaterialOverrides property of their required module. These materials can be overridden using CreateNamedDynamicMaterialInstance() on a ParticleSystemComponent.
---@field bInitParticlesOnCanNotEverRender number
---@field AvailableDeviceLevel number
local UParticleSystem = {}

---Returns true if this system contains an emitter of the pasesd type.
---@param TypeData UClass
---@return boolean
function UParticleSystem:ContainsEmitterType(TypeData) end
