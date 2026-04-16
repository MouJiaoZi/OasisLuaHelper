---@meta

---@class USTExtraKiteMovementComponent: USTExtraAircraftMovementComponent
---@field BackwardMovePitchAngle number
---@field NoForwardInputPitchAngle number
---@field ForwardMovePitchAngle number
---@field KiteFreeMoveRadius number
---@field KiteDisconnectToPivotRadius number
---@field bDrawPivotInfo boolean
---@field bDrawVehicleDrivenInfo boolean
---@field MaxForceByPivot number
---@field PivotCalculateFactor number
---@field ForceByPivot FVector
---@field DragForceMagBackToConnectedVehicle FVector
---@field MaxForceDrivenByVehicle number
---@field ForceDrivenByVehicle FVector
---@field SupportForceFactorLosePower number
---@field bShouldDsControl boolean
---@field MaxDSControlTime number
---@field CurDSControlTimeLeft number
---@field MaxSpeedDeltaPerSeconds number
---@field NeedCheckSpeedDelta boolean
---@field LastSecondSpeed number
---@field CheckSpeedTimeElapse number
---@field bEnableDSForceCheckPenetrate boolean
---@field DSForceCheckPenetrateTime number
---@field DSForceCorrectPenetrateCount number
---@field bUseCacheFrameVelocity boolean
---@field ReplicatedNowDisToLand number
---@field NowDisToLandTolerance number
---@field CurFrameVelocity FVector
---@field DefaultGravityZ number
---@field DefaultGravityDelta number
---@field KiteCurDistanceToPivot number
---@field KitePivotLocation FVector
local USTExtraKiteMovementComponent = {}

---@return FVector
function USTExtraKiteMovementComponent:GetCurVelocity() end

---@return FVector
function USTExtraKiteMovementComponent:GetKitePivotLocation() end

---@param InLocation FVector
function USTExtraKiteMovementComponent:SetKitePivotLocation(InLocation) end
