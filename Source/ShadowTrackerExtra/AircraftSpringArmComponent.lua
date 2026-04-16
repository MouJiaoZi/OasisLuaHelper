---@meta

---@class UAircraftSpringArmComponent: USpringArmComponent
---@field FreeCamRotationExtra FRotator
local UAircraftSpringArmComponent = {}

---@param bEnabled boolean
---@param Time number
function UAircraftSpringArmComponent:DelayRotationLagEnabled(bEnabled, Time) end

function UAircraftSpringArmComponent:DelayRotationLagEnabledEnd() end
