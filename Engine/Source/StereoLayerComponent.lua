---@meta

---Used by IStereoLayer
---@class EStereoLayerType
---@field SLT_WorldLocked number @Location within the world
---@field SLT_TrackerLocked number @Location within the HMD tracking space
---@field SLT_FaceLocked number @Location within the view space
---@field SLT_MAX number
EStereoLayerType = {}


---The shape to use for the stereo layer.  Note that some shapes might not be supported on all platforms!
---@class EStereoLayerShape
---@field SLSH_QuadLayer number @Quad layer
---@field SLSH_CylinderLayer number @Cylinder layer
---@field SLSH_CubemapLayer number @Cubemap layer
---@field SLSH_MAX number
EStereoLayerShape = {}


---A geometry layer within the stereo rendered viewport.
---@class UStereoLayerComponent: USceneComponent
---@field bLiveTexture number @True if the stereo layer texture needs to update itself every frame(scene capture, video, etc.)
---@field bSupportsDepth number @True if the stereo layer needs to support depth intersections with the scene geometry, if available on the platform
---@field bNoAlphaChannel number @True if the texture should not use its own alpha channel (1.0 will be substituted)
---@field bQuadPreserveTextureRatio number @True if the quad should internally set it's Y value based on the set texture's dimensions
---@field QuadSize FVector2D @Size of the rendered stereo layer quad *
---@field UVRect FBox2D @UV coordinates mapped to the quad face *
---@field CylinderRadius number @Radial size of the rendered stereo layer cylinder *
---@field CylinderOverlayArc number @Arc angle for the stereo layer cylinder *
---@field CylinderHeight number @Height of the stereo layer cylinder *
---@field StereoLayerType EStereoLayerType @Specifies how and where the quad is rendered to the screen *
---@field StereoLayerShape EStereoLayerShape @Specifies which type of layer it is.  Note that some shapes will be supported only on certain platforms! *
---@field Priority number @Render priority among all stereo layers, higher priority render on top of lower priority *
local UStereoLayerComponent = {}

---Change the texture displayed on the stereo layer quad
---@param InTexture UTexture
function UStereoLayerComponent:SetTexture(InTexture) end

---Change the quad size. This is the unscaled height and width, before component scale is applied.
---@param InQuadSize FVector2D
function UStereoLayerComponent:SetQuadSize(InQuadSize) end

---Change the UV coordinates mapped to the quad face
---@param InUVRect FBox2D
function UStereoLayerComponent:SetUVRect(InUVRect) end

---Change the layer's render priority, higher priorities render on top of lower priorities
---@param InPriority number
function UStereoLayerComponent:SetPriority(InPriority) end

function UStereoLayerComponent:MarkTextureForUpdate() end
