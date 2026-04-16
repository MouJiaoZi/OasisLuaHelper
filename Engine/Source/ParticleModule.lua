---@meta

---ModuleType Indicates the kind of emitter the module can be applied to. ie, EPMT_Beam - only applies to beam emitters. The TypeData field is present to speed up finding the TypeData module.
---@class EModuleType
---@field EPMT_General number @General - all emitter types can use it
---@field EPMT_TypeData number @TypeData - TypeData modules
---@field EPMT_Beam number @Beam - only applied to beam emitters
---@field EPMT_Trail number @Trail - only applied to trail emitters
---@field EPMT_Spawn number @Spawn - all emitter types REQUIRE it
---@field EPMT_Required number @Required - all emitter types REQUIRE it
---@field EPMT_Event number @Event - event related modules
---@field EPMT_Light number @Light related modules
---@field EPMT_SubUV number @SubUV related modules
---@field EPMT_MAX number
EModuleType = {}


---Particle Selection Method, for any emitters that utilize particles as the source points.
---@class EParticleSourceSelectionMethod
---@field EPSSM_Random number @Random		- select a particle at random
---@field EPSSM_Sequential number @Sequential	- select a particle in order
---@field EPSSM_MAX number
EParticleSourceSelectionMethod = {}


---@class FParticleCurvePair
---@field CurveName string
FParticleCurvePair = {}


---@class FParticleRandomSeedInfo
---@field ParameterName string @The name to expose to the placed instances for setting this seed
---@field bGetSeedFromInstance number @If true, the module will attempt to get the seed from the owner instance. If that fails, it will fall back to getting it from the RandomSeeds array.
---@field bInstanceSeedIsIndex number @If true, the seed value retrieved from the instance will be an index into the array of seeds.
---@field bResetSeedOnEmitterLooping number @If true, then reset the seed upon the emitter looping. For looping environmental effects this should likely be set to false to avoid a repeating pattern.
---@field bRandomlySelectSeedArray number @If true, then randomly select a seed entry from the RandomSeeds array
---@field RandomSeeds ULuaArrayHelper<number> @The random seed values to utilize for the module. More than 1 means the instance will randomly select one.
FParticleRandomSeedInfo = {}


---@class UParticleModule: UObject
---@field bSpawnModule number @If true, the module performs operations on particles during Spawning
---@field bUpdateModule number @If true, the module performs operations on particles during Updating
---@field bFinalUpdateModule number @If true, the module performs operations on particles during final update
---@field bUpdateForGPUEmitter number @If true, the module performs operations on particles during update and/or final update for GPU emitters
---@field bCurvesAsColor number @If true, the module displays FVector curves as colors
---@field b3DDrawMode number @If true, the module should render its 3D visualization helper
---@field bSupported3DDrawMode number @If true, the module supports rendering a 3D visualization helper
---@field bEnabled number @If true, the module is enabled
---@field bEditable number @If true, the module has had editing enabled on it
---@field LODDuplicate number @If true, this flag indicates that auto-generation for LOD will result in an exact duplicate of the module, regardless of the percentage. If false, it will result in a module with different settings.
---@field bSupportsRandomSeed number @If true, the module supports RandomSeed setting
---@field bRequiresLoopingNotification number @If true, the module should be told when looping
---@field LODValidity number @The LOD levels this module is present in. Bit-flags are used to indicate validity for a given LOD level. For example, if ((1 << Level) & LODValidity) != 0 then the module is used in that LOD.
local UParticleModule = {}
