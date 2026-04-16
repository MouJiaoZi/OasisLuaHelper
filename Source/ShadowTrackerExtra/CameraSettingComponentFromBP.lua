---@meta

---@class FCameraSettings
---@field TargetArmLength number
---@field LagSpeed number
---@field SocketOffset FVector
FCameraSettings = {}


---@class UCameraSettingComponentFromBP: UActorComponent
local UCameraSettingComponentFromBP = {}

---@param LerpAlpha number
---@param CameraSetting FCameraSettings
---@param SpringArm USpringArmComponent
function UCameraSettingComponentFromBP:LerpCameraSettings(LerpAlpha, CameraSetting, SpringArm) end

---@param SpringArm USpringArmComponent
function UCameraSettingComponentFromBP:SaveCurCameraSetting(SpringArm) end
