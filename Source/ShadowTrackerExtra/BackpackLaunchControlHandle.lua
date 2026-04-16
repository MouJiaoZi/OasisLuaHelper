---@meta

---@class UBackpackLaunchControlHandle: UBackpackVehicleAbilityHandle
---@field LaunchControlEnergyMaxValue number
---@field LaunchControlEnergyUpRate number
---@field LaunchControlEnergyDownRate number
---@field LaunchControlEnergyReadyValue number
---@field LaunchControlTime number
---@field LaunchControlFadeOutTime number
---@field LaunchControlTopRPMCurveTime number
---@field LaunchControlRPMLerpTime number
---@field LaunchControlRPMLerpSpeed number
---@field LaunchControlDriverCameraShake UCameraShake
---@field LaunchControlPassengerNormalCameraShake UCameraShake
---@field LaunchControlPassengerLeanOutCameraShake UCameraShake
---@field LaunchControlPassengerCameraFadeInDataOffsetType ECameraDataType
---@field LaunchControlPassengerCameraLaunchDataOffsetType ECameraDataType
---@field LaunchControlPassengerCameraFadeOutDataOffsetType ECameraDataType
---@field LaunchControlDriverCameraOffsetData_In FCameraOffsetData
---@field LaunchControlDriverCameraOffsetData_Launch FCameraOffsetData
---@field LaunchControlDriverCameraOffsetData_Out FCameraOffsetData
---@field STBurnTirePsArray FBurnTirePSArray
---@field BurnTireDiffType EBurnTireDifferentialType
---@field BurnTireShakePitchMax number
---@field BurnTireShakeRollMax number
---@field BurnTireCreatePSMinSpeed number
local UBackpackLaunchControlHandle = {}

---@return boolean
function UBackpackLaunchControlHandle:ModifyFocusTarget() end
