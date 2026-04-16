---@meta

---Derived GeometryCacheTrack class, used for Transform animation.
---@class UGeometryCacheTrack_FlipbookAnimation: UGeometryCacheTrack
---@field NumMeshSamples number @Number of Mesh Sample within this track
local UGeometryCacheTrack_FlipbookAnimation = {}

---Add a GeometryCacheMeshData sample to the Track
---@param MeshData FGeometryCacheMeshData
---@param SampleTime number
function UGeometryCacheTrack_FlipbookAnimation:AddMeshSample(MeshData, SampleTime) end
