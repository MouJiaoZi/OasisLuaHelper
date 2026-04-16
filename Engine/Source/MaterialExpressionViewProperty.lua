---@meta

---@class EMaterialExposedViewProperty
---@field MEVP_BufferSize number @Horizontal and vertical size of the view's buffer in pixels
---@field MEVP_FieldOfView number @Horizontal and vertical field of view angles in radian
---@field MEVP_TanHalfFieldOfView number @Tan(FieldOfView * 0.5)
---@field MEVP_ViewSize number @Horizontal and vertical size of the view in pixels
---@field MEVP_WorldSpaceViewPosition number @Absolute world space view position (differs from the camera position in the shadow passes)
---@field MEVP_WorldSpaceCameraPosition number @Absolute world space camera position
---@field MEVP_ViewportOffset number @Horizontal and vertical position of the viewport in pixels within the buffer.
---@field MEVP_MAX number
EMaterialExposedViewProperty = {}


---@class UMaterialExpressionViewProperty: UMaterialExpression
---@field Property EMaterialExposedViewProperty @View input property to be accessed
local UMaterialExpressionViewProperty = {}
