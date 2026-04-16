---@meta

---ShapeComponent is a PrimitiveComponent that is represented by a simple geometrical shape (sphere, capsule, box, etc).
---@class UShapeComponent: UPrimitiveComponent
---@field ShapeColor FColor @Color used to draw the shape.
---@field bDrawOnlyIfSelected number @Only show this component if the actor is selected
---@field bShouldCollideWhenPlacing number @If true it allows Collision when placing even if collision is not enabled
---@field bDynamicObstacle number @If set, shape will be exported for navigation as dynamic modifier instead of using regular collision data
---@field AreaClass UNavArea @Navigation area type (empty = default obstacle)
local UShapeComponent = {}
