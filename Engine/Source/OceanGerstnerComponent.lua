---@meta

---Raw wave parameters for one gerstner wave
---@class FGerstnerWave
---@field WaveLength number
---@field Amplitude number
---@field Steepness number
---@field GerstnerAngle number
---@field WaveVector FVector2D
---@field WaveSpeed number
---@field WKA number
---@field Q number
---@field PhaseOffset number
FGerstnerWave = {}


---Default implementation of a gerstner wave generator using a simple custom range based set of parameters to generate waves.
---@class FGerstnerWaterWaveGeneratorSimple
---@field NumWaves number
---@field Seed number
---@field Randomness number
---@field MinWavelength number
---@field MaxWavelength number
---@field WavelengthFalloff number
---@field MinAmplitude number
---@field MaxAmplitude number
---@field AmplitudeFalloff number
---@field DirectionAngularSpreadDeg number
---@field SmallWaveSteepness number
---@field LargeWaveSteepness number
---@field SteepnessFalloff number
---@field WaveSpeed number
---@field Gerstnersamplesize number
---@field GerstnerParallelness number
---@field GerstnerWaves ULuaArrayHelper<FGerstnerWave>
FGerstnerWaterWaveGeneratorSimple = {}


---@class UOceanGerstnerComponent: UGerstnerWaves
---@field GerstnerWaveGenerators ULuaArrayHelper<FGerstnerWaterWaveGeneratorSimple>
---@field MaxWaveHeight number
local UOceanGerstnerComponent = {}
