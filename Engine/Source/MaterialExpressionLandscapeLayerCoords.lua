---@meta

---@class ETerrainCoordMappingType
---@field TCMT_Auto number
---@field TCMT_XY number
---@field TCMT_XZ number
---@field TCMT_YZ number
---@field TCMT_MAX number
ETerrainCoordMappingType = {}


---@class ELandscapeCustomizedCoordType
---@field LCCT_None number @Don't use customized UV, just use original UV.
---@field LCCT_CustomUV0 number
---@field LCCT_CustomUV1 number
---@field LCCT_CustomUV2 number
---@field LCCT_WeightMapUV number @Use original WeightMapUV, which could not be customized.
---@field LCCT_MAX number
ELandscapeCustomizedCoordType = {}


---@class UMaterialExpressionLandscapeLayerCoords: UMaterialExpression
---@field MappingType ETerrainCoordMappingType @Determines the mapping place to use on the terrain.
---@field CustomUVType ELandscapeCustomizedCoordType @Determines the mapping place to use on the terrain.
---@field MappingScaleOverride FExpressionInput
---@field MappingScale number @Uniform scale to apply to the mapping.
---@field MappingRotation number @Rotation to apply to the mapping.
---@field MappingPanU number @Offset to apply to the mapping along U.
---@field MappingPanV number @Offset to apply to the mapping along V.
local UMaterialExpressionLandscapeLayerCoords = {}
