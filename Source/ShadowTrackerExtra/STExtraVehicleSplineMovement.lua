---@meta

---Specialized movement component for airplanes following route defined by a spline. 现在这个类的功能是没用使用的, 因为同步spline的distance 这个不可靠 所以没用使用 没有太好的办法 从distance反向算出对应的位置 -->yufeiili
---@class USTExtraVehicleSplineMovement: UPawnMovementComponent
---@field bUseServerAuthToMove boolean
---@field BaseSpeed number
---@field SimulationTimeStep number
---@field InterpolationTime number
---@field LinearInterpolationTime number
---@field MaxDistanceErrorToCorrect number
---@field bMoveInverseMode boolean
---@field bUseSpeedScaling boolean
---@field bUseLinearInterpolation boolean
---@field StopMoveThreshold number
---@field bCalculatePitch number
---@field PitchInterpRate number
---@field ThottleInputRate FVehicleInputRate
---@field ZeroInputRate FVehicleInputRate
---@field SplineMoveDir number
---@field ServerDistanceTraveled number
---@field DistanceTraveled number
---@field DistanceError number
---@field TimeAccumulator number
---@field CurrentSpeedScale number
---@field LinInterpSpeed number
---@field PendingTraveledDistance number
---@field bStopped boolean
---@field RawMoveForward number
---@field ThrottleInput number
---@field RepMoveForward number
---@field OnMoveHitActorEvent FOnMoveHitActor
local USTExtraVehicleSplineMovement = {}

---@param NewActor AActor
function USTExtraVehicleSplineMovement:SetRailActor(NewActor) end

function USTExtraVehicleSplineMovement:OnRep_RailActor() end

function USTExtraVehicleSplineMovement:OnRep_SplineMoveDir() end

---@param NewValue number
function USTExtraVehicleSplineMovement:SetSplineMoveDir(NewValue) end

function USTExtraVehicleSplineMovement:ReqChangeSplineMoveDir() end

---@param InSpline USplineComponent
function USTExtraVehicleSplineMovement:SetSpline(InSpline) end

---@param InDist number
function USTExtraVehicleSplineMovement:SetDistanceTraveled(InDist) end

---@param InDistance number
function USTExtraVehicleSplineMovement:SetDesiredSplineLocation(InDistance) end

---@param DeltaTime number
function USTExtraVehicleSplineMovement:CalculateVehicleTransform(DeltaTime) end

---@param NewValue number
function USTExtraVehicleSplineMovement:SetServerDistanceTraveled(NewValue) end

function USTExtraVehicleSplineMovement:OnRep_SeverDistance() end

function USTExtraVehicleSplineMovement:InitBornDistance() end

function USTExtraVehicleSplineMovement:UpdateSpeedScale() end

---@return FRotator
function USTExtraVehicleSplineMovement:CalculateRotation() end

---@param CurForward number
function USTExtraVehicleSplineMovement:SyncMoveForwardToServer(CurForward) end

function USTExtraVehicleSplineMovement:OnRep_MoveForward() end
