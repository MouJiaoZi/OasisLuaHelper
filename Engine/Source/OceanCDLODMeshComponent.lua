---@meta

---@class FCDLODMeshNodeData
FCDLODMeshNodeData = {}


---@class UOceanCDLODMeshComponent: UMeshComponent
---@field MaxViewDistance number
---@field MaxCDLODDistance number
---@field LODDistanceRatio number
---@field LOD0Size number
---@field LODCount number
---@field WaveFadeDistance number
---@field SeaLevel number
---@field Occlusioncoff number
---@field FFTSampleCount number
---@field FFTSampleSize number
---@field FFTFoamBlurNormalZ FVector2D
---@field GerstnerFFTSoftness FVector2D
---@field GridSize number
---@field ShapeUniformValue ULuaArrayHelper<number>
local UOceanCDLODMeshComponent = {}
