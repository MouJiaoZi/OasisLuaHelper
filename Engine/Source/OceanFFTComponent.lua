---@meta

---@class UOceanFFTComponent: UActorComponent
---@field FFTGridSize number @Size of grid for FFT
---@field WaveAmplitude number
---@field FetchLength number
---@field WaveSwell number
---@field WindSpeed FVector2D
---@field SamplePatch FVector2D
---@field WaveSpeed number @Speed of time for FFT
---@field XYDisplaceFactor number
---@field JacobianFactor number
---@field FoamDissipationSpeed number
---@field FoamFalloffSpeed number
---@field FoamGenerationAmount number
---@field FoamGenerationThreshold number
---@field DisplaceTextureArray ULuaArrayHelper<UTexture2D>
---@field NormalTextureArray ULuaArrayHelper<UTexture2D>
---@field Frameinterval number
---@field FrameNum number
---@field UpdateNeeded boolean
---@field DisRTArray ULuaArrayHelper<UTextureRenderTarget2D>
---@field NormalRTArray ULuaArrayHelper<UTextureRenderTarget2D>
local UOceanFFTComponent = {}

---@param DeltaTime number
function UOceanFFTComponent:Update(DeltaTime) end
