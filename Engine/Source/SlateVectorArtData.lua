---@meta

---@class FSlateMeshVertex
---@field Position FVector2D
---@field Color FColor
---@field UV0 FVector2D
---@field UV1 FVector2D
---@field UV2 FVector2D
---@field UV3 FVector2D
---@field UV4 FVector2D
---@field UV5 FVector2D
FSlateMeshVertex = {}


---Turn static mesh data into Slate's simple vector art format.
---@class USlateVectorArtData: UObject
---@field VertexData ULuaArrayHelper<FSlateMeshVertex>
---@field IndexData ULuaArrayHelper<number>
---@field ExtentMin FVector2D
---@field ExtentMax FVector2D
local USlateVectorArtData = {}
