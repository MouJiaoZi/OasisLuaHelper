---@meta

---@class ASimulateSyncSmoothActor: AActor
local ASimulateSyncSmoothActor = {}

---@param Velocity FVector
function ASimulateSyncSmoothActor:SetVelocity(Velocity) end

---@param PitchSpeed number
---@param YawSpeed number
---@param RollSpeed number
function ASimulateSyncSmoothActor:SetAngularVelocity(PitchSpeed, YawSpeed, RollSpeed) end
