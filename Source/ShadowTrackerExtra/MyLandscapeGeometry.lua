---@meta

---@class FSubLevelComponentMapValue
---@field Name string
---@field IndexOffsetArray ULuaArrayHelper<number>
---@field VertexOffsetIndex ULuaArrayHelper<number>
---@field BorderIndex1 ULuaArrayHelper<number>
---@field BorderIndex2 ULuaArrayHelper<number>
---@field BorderIndex3 ULuaArrayHelper<number>
---@field BorderIndex4 ULuaArrayHelper<number>
---@field UnderBorderIndex1 ULuaArrayHelper<number>
---@field UnderBorderIndex2 ULuaArrayHelper<number>
---@field UnderBorderIndex3 ULuaArrayHelper<number>
---@field UnderBorderIndex4 ULuaArrayHelper<number>
---@field BorderIndicesBuffer1 ULuaArrayHelper<number>
---@field BorderIndicesBuffer2 ULuaArrayHelper<number>
---@field BorderIndicesBuffer3 ULuaArrayHelper<number>
---@field BorderIndicesBuffer4 ULuaArrayHelper<number>
---@field Sibling1Name string
---@field Sibling2Name string
---@field Sibling3Name string
---@field Sibling4Name string
---@field Sibling1Idx number
---@field Sibling2Idx number
---@field Sibling3Idx number
---@field Sibling4Idx number
FSubLevelComponentMapValue = {}


---@class UMyLandscapeGeometry: UDataAsset
---@field Vertex ULuaArrayHelper<FVector>
---@field Normals ULuaArrayHelper<FVector>
---@field UV ULuaArrayHelper<FVector2D>
---@field Indices ULuaArrayHelper<number>
---@field ComponentIndexOffset ULuaMapHelper<FIntPoint, number>
---@field ComponentIndexCount number
---@field ComponentVertexCount number
---@field SubLevelComponentMap ULuaMapHelper<string, FSubLevelComponentMapValue>
---@field HighQualityMesh UStaticMesh
---@field HighQualityMeshDestroyHight number
local UMyLandscapeGeometry = {}
