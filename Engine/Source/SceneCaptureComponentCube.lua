---@meta

---Used to capture a 'snapshot' of the scene from a 6 planes and feed it to a render target.
---@class USceneCaptureComponentCube: USceneCaptureComponent
local USceneCaptureComponentCube = {}

---Render the scene to the texture target immediately. This should not be used if bCaptureEveryFrame is enabled, or the scene capture will render redundantly.
function USceneCaptureComponentCube:CaptureScene() end
