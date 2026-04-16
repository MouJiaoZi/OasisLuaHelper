---@meta

---@class EComputeNTBsOptions
---@field None number
---@field Normals number
---@field Tangents number
---@field WeightedNTBs number
EComputeNTBsOptions = {}


---@class FMeshTriangle
---@field VertexInstanceID0 FVertexInstanceID @First vertex instance that makes up this triangle.  Indices must be ordered counter-clockwise.
---@field VertexInstanceID1 FVertexInstanceID @Second vertex instance that makes up this triangle.  Indices must be ordered counter-clockwise.
---@field VertexInstanceID2 FVertexInstanceID @Third vertex instance that makes up this triangle.  Indices must be ordered counter-clockwise.
FMeshTriangle = {}


---@class UDEPRECATED_MeshDescription: UObject
local UDEPRECATED_MeshDescription = {}
