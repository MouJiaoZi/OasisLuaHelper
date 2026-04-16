---@meta

---@class UDelayFlyProjMovementComponent: UProjectileMovementComponent
---@field ThrowLowGravityScale number
---@field ThrowHighGravityScale number
---@field bResumeMoveAfterImpactWithNoLostFlag boolean
---@field LastVelocityBeforeStop FVector
local UDelayFlyProjMovementComponent = {}

---@param flyVelocity FVector
---@param isThrowHigh boolean
function UDelayFlyProjMovementComponent:StartFly(flyVelocity, isThrowHigh) end

function UDelayFlyProjMovementComponent:ResumeMoveAfterImpactWithNoLost() end
