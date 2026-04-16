---@meta

---@class AFocusCineCameraActor: ACineCameraActor
---@field TouchInputSpeed FVector2D
---@field CameraRecoverSpeed number
---@field bManualAdjustArmLength boolean
---@field ManualArmLength number
---@field PitchMin number
---@field PitchMax number
---@field YawMin number
---@field YawMax number
---@field bEnableInput boolean
---@field bFocusCharacter boolean
---@field bArmForCamera boolean
local AFocusCineCameraActor = {}

---@param RotationInput FRotator
function AFocusCineCameraActor:UpdateCameraRotation(RotationInput) end

---@param bEnable boolean
function AFocusCineCameraActor:SetInputEnabled(bEnable) end

---@param TouchIndex ETouchIndex
---@param Location FVector
---@param Force number
function AFocusCineCameraActor:InputTouchBegin(TouchIndex, Location, Force) end

---@param TouchIndex ETouchIndex
---@param Location FVector
---@param Force number
function AFocusCineCameraActor:InputTouchEnd(TouchIndex, Location, Force) end

---@param TouchIndex ETouchIndex
---@param Location FVector
---@param Force number
function AFocusCineCameraActor:InputTouchRepeat(TouchIndex, Location, Force) end
