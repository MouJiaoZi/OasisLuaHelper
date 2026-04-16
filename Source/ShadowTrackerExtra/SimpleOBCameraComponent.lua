---@meta

---这个类只是为了开镜OB Peek 解决抖动问题
---@class USimpleOBCameraComponent: UCameraComponent
---@field bFlipControlRotation boolean
---@field CameraRotatorOffset FRotator
---@field bActiveCameraRotatorOffset boolean
---@field CamShakeBoneName string
---@field CamShakeFlagAfter string
local USimpleOBCameraComponent = {}

---@param DeltaTime number
---@param DesiredView FMinimalViewInfo
function USimpleOBCameraComponent:UpdateCamShakeOffset(DeltaTime, DesiredView) end
