---@meta

---The importance of a mesh feature when automatically generating mesh LODs.
---@class EMeshFeatureImportance
---@field Off number
---@field Lowest number
---@field Low number
---@field Normal number
---@field High number
---@field Highest number
EMeshFeatureImportance = {}


---@class EChartAggregationMode
---@field TextureSize number
---@field SurfaceArea number
---@field PixelDensity number
---@field UVSize number
EChartAggregationMode = {}


---@class ELandscapeCullingPrecision
---@field High number @High memory intensity and computation time
---@field Medium number @Medium memory intensity and computation time
---@field Low number @Low memory intensity and computation time
ELandscapeCullingPrecision = {}


---@class EProxyNormalComputationMethod
---@field AngleWeighted number @Angle Weighted
---@field AreaWeighted number @Area  Weighted
---@field EqualWeighted number @Equal Weighted
EProxyNormalComputationMethod = {}


---@class EMeshLODSelectionType
---@field AllLODs number @Use all LOD levels
---@field SpecificLOD number @Use specific LOD level
---@field CalculateLOD number @Calculate correct LOD level
---@field LowestDetailLOD number @Always use the lowest-detail LOD (i.e. the highest LOD index)
EMeshLODSelectionType = {}


---Settings used to reduce a mesh.
---@class FMeshReductionSettings
---@field BaseLODModel number
---@field MetricToUse EOptimizationMetric
---@field PercentTriangles number @Percentage of triangles to keep. 1.0 = no reduction, 0.0 = no triangles.
---@field ScreenSize number
---@field MaxDeviation number @The maximum distance in object space by which the reduced mesh may deviate from the original mesh.
---@field PixelError number @The amount of error in pixels allowed for this LOD.
---@field WeldingThreshold number @Threshold in object space at which vertices are welded together.
---@field SilhouetteImportance EMeshFeatureImportance @Higher values minimize change to border edges.
---@field TextureImportance EMeshFeatureImportance @Higher values reduce texture stretching.
---@field ShadingImportance EMeshFeatureImportance @Higher values try to preserve normals better.
---@field VertexColorImportance EMeshFeatureImportance @Higher values minimize change to vertex color data.
---@field bRecalculateNormals boolean
---@field HardAngleThreshold number @Angle at which a hard edge is introduced between faces.
---@field bActive_DEPRECATED boolean
---@field bGenerateUniqueLightmapUVs boolean
---@field bKeepSymmetry boolean
---@field bVisibilityAided boolean
---@field bCullOccluded boolean
---@field VisibilityAggressiveness EMeshFeatureImportance @Higher values generates fewer samples
---@field bUseVertexWeights boolean @Vertex colors are converted to weights. The weights are used to determine how important it is to keep the vertices when the static mesh is reduced. - Green: Vertices more important and less probable to be removed - Red: Vertices will be less important
---@field bSimplifyMaterials boolean
---@field MaterialLODSettings_DEPRECATED FSimplygonMaterialLODSettings
---@field MaterialProxySettings FMaterialProxySettings
FMeshReductionSettings = {}
