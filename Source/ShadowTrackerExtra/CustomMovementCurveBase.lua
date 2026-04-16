---@meta

---@class FCustomMovementCurveInfo
---@field FinishTimes ULuaArrayHelper<number>
FCustomMovementCurveInfo = {}


---@class FSimulateMovementCurveBaseRepData
---@field JumpedCount number
---@field CurveTime number
---@field CurveIdx number
---@field BaseLocation FVector
---@field BaseRotation FRotator
---@field RelativeYaw number
---@field BoneName string
FSimulateMovementCurveBaseRepData = {}


---@class UCustomMovementCurveBase: UCustomMovementBase
---@field NetworkSimulatorSmoothTime number
---@field AllowableCurveTimeError number
---@field Curves ULuaArrayHelper<FCustomMovementCurveInfo>
---@field MaxTrustClientCnt number
---@field bCanStepup boolean
---@field bSimulatorAlignCurve boolean
---@field bEnableOnlyZSlide boolean
---@field CurveIdx number
---@field SimulatorRepData FSimulateMovementCurveBaseRepData
local UCustomMovementCurveBase = {}

---@param deltaTime number
---@param Iterations number
function UCustomMovementCurveBase:PhysCustom(deltaTime, Iterations) end

---@return boolean
function UCustomMovementCurveBase:ShouldSkipReplicateMovement() end

---@return boolean
function UCustomMovementCurveBase:ShouldForceSimulatePredict() end
