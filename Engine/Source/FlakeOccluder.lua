---@meta

---@class FFlakeSubOccluder_Serialize
---@field Center FVector
---@field QuadVertexData ULuaArrayHelper<number>
FFlakeSubOccluder_Serialize = {}


---@class UFlakeOccluder: UObject
---@field SubOccluders_Serialize ULuaArrayHelper<FFlakeSubOccluder_Serialize>
---@field NumQuads number
---@field OcclusionWeight number
local UFlakeOccluder = {}
