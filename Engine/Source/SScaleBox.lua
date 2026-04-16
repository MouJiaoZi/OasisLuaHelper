---@meta

---@class EStretchDirection
---@field Both number @Will scale the content up or down.
---@field DownOnly number @Will only make the content smaller, will never scale it larger than the content's desired size.
---@field UpOnly number @Will only make the content larger, will never scale it smaller than the content's desired size.
EStretchDirection = {}


---@class EStretch
---@field None number @Does not scale the content.
---@field Fill number @Scales the content non-uniformly filling the entire space of the area.
---@field ScaleToFit number @Scales the content uniformly (preserving aspect ratio) until it can no longer scale the content without clipping it.
---@field ScaleToFitX number @Scales the content uniformly (preserving aspect ratio) until it can no longer scale the content without clipping it along the x-axis, the y-axis can/will be clipped.
---@field ScaleToFitY number @Scales the content uniformly (preserving aspect ratio) until it can no longer scale the content without clipping it along the y-axis, the x-axis can/will be clipped.
---@field ScaleToFill number @Scales the content uniformly (preserving aspect ratio), until all sides meet or exceed the size of the area.  Will result in clipping the longer side.
---@field ScaleBySafeZone number @Scales the content according to the size of the safe zone currently applied to the viewport.
---@field UserSpecified number @Scales the content by the scale specified by the user.
EStretch = {}
