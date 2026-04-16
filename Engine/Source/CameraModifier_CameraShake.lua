---@meta

---@class FCacheCameraShakeData
---@field InsList ULuaArrayHelper<UCameraShake>
FCacheCameraShakeData = {}


---A UCameraModifier_CameraShake is a camera modifier that can apply a UCameraShake to the owning camera.
---@class UCameraModifier_CameraShake: UCameraModifier
---@field ActiveShakes ULuaArrayHelper<UCameraShake> @List of active CameraShake instances
---@field SplitScreenShakeScale number @Scaling factor applied to all camera shakes in when in splitscreen mode. Normally used to reduce shaking, since shakes feel more intense in a smaller viewport.
---@field CacheShakeInsMap ULuaMapHelper<UCameraShake, FCacheCameraShakeData>
local UCameraModifier_CameraShake = {}
