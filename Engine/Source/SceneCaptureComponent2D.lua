---@meta

---Used to capture a 'snapshot' of the scene from a single plane and feed it to a render target.
---@class USceneCaptureComponent2D: USceneCaptureComponent
---@field ProjectionType ECameraProjectionMode
---@field FOVAngle number @Camera field of view (in degrees).
---@field OrthoWidth number @The desired width (in world units) of the orthographic view (ignored in Perspective mode)
---@field CaptureSource ESceneCaptureSource
---@field CompositeMode ESceneCaptureCompositeMode @When enabled, the scene capture will composite into the render target instead of overwriting its contents.
---@field PostProcessSettings any
---@field PostProcessBlendWeight number @Range (0.0, 1.0) where 0 indicates no effect, 1 indicates full effect.
---@field bUseCustomProjectionMatrix boolean @Whether a custom projection matrix will be used during rendering. Use with caution. Does not currently affect culling
---@field CustomProjectionMatrix FMatrix @The custom projection matrix to use
---@field bEnableClipPlane boolean @Enables a clip plane while rendering the scene capture which is useful for portals. The global clip plane must be enabled in the renderer project settings for this to work.
---@field ClipPlaneBase FVector @Base position for the clip plane, can be any position on the plane.
---@field ClipPlaneNormal FVector @Normal for the plane.
---@field bCameraCutThisFrame number @True if we did a camera cut this frame. Automatically reset to false at every capture. This flag affects various things in the renderer (such as whether to use the occlusion queries from last frame, and motion blur). Similar to UPlayerCameraManager::bGameCameraCutThisFrame.
local USceneCaptureComponent2D = {}

---Render the scene to the texture target immediately. This should not be used if bCaptureEveryFrame is enabled, or the scene capture will render redundantly.
function USceneCaptureComponent2D:CaptureScene() end
