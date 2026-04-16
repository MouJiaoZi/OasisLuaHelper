---@meta

---武器聚能状态
---@class UBowAccumulateEnergyState: UWeaponStateBase
---@field MaxFallingZSpeedAllowAcc number
---@field ServerConditionWeaponState EFreshWeaponStateType
---@field BlendInSpeed number
---@field BlendOutSpeed number
---@field BlendOutDelayTime number
---@field CurEnergyAccPercent number
---@field CurEnergyAccPercentSmooth number
---@field BlendOutDelayTime_Counter number
---@field AccumulatingDisableTime number
---@field AccumulatingDisableTimeOnPoseChange number
---@field CurAccTime number
---@field bNeedDelayAutoFire boolean
---@field bIsVehicleInFold boolean
local UBowAccumulateEnergyState = {}

---@param bResetAccComp boolean
function UBowAccumulateEnergyState:ResetData(bResetAccComp) end

function UBowAccumulateEnergyState:MarkDelayAccumulateToAutoFire() end

---@param bResetAccComp boolean
function UBowAccumulateEnergyState:ForceEndState(bResetAccComp) end

---@param bCheckNromalCondition boolean
---@param bCheckCanFire boolean
---@return boolean
function UBowAccumulateEnergyState:CheckAccStateAvailable(bCheckNromalCondition, bCheckCanFire) end

---@return boolean
function UBowAccumulateEnergyState:CheckAccStateReleaseAvailable() end

---@return boolean
function UBowAccumulateEnergyState:CheckIsVehicleInFold() end

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function UBowAccumulateEnergyState:OnOwnerCharacterChangePose(LastPose, NewPose) end

---@param DeltaTime number
function UBowAccumulateEnergyState:UpdateAccumulateSmooth(DeltaTime) end

---@return number
function UBowAccumulateEnergyState:GetAccEnergyPercentSmooth() end
