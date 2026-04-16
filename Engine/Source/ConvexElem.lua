---@meta

---One convex hull, used for simplified collision.
---@class FKConvexElem
---@field VertexData ULuaArrayHelper<FVector> @Array of indices that make up the convex hull.
---@field ElemBox FBox @Bounding box of this convex hull.
---@field Transform FTransform @Transform of this element
FKConvexElem = {}
