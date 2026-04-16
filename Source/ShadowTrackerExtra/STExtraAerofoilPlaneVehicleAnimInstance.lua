---@meta

---@class USTExtraAerofoilPlaneVehicleAnimInstance: USTVehicleAnimInstance
---@field HeightToShowWheel number
---@field bCurWheelVisible boolean
---@field SuspensionExtendSpeed number
---@field MaxWingRot number
---@field CurWingRot number
---@field MaxRudderRot number
---@field CurRudderRot number
---@field MaxElevatorRot number
---@field CurElevatorRot number
---@field WingRotateBackDelayTime number
---@field RotateBackDelayTimer number
---@field RotateBackInterpSpeed number
---@field IncreaseData FMappedData
local USTExtraAerofoilPlaneVehicleAnimInstance = {}

function USTExtraAerofoilPlaneVehicleAnimInstance:OnWheelVisibleChange() end
