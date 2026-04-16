---@meta

---Utility component for drawing a view frustum. Origin is at the component location, frustum points down position X axis.
---@class UDrawFrustumComponent: UPrimitiveComponent
---@field FrustumColor FColor @Color to draw the wireframe frustum.
---@field FrustumAngle number @Angle of longest dimension of view shape. If the angle is 0 then an orthographic projection is used
---@field FrustumAspectRatio number @Ratio of horizontal size over vertical size.
---@field FrustumStartDist number @Distance from origin to start drawing the frustum.
---@field FrustumEndDist number @Distance from origin to stop drawing the frustum.
local UDrawFrustumComponent = {}
