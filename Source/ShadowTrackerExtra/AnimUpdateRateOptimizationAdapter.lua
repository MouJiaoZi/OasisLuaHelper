---@meta

---@class FAnimUpdateRateOptimizationAdapterParam
---@field DisableUpdateRateOptimizationRangeSquared number
---@field DisableUpdateRateOptimizationLOD number
---@field AdapterUpdateInterval number
FAnimUpdateRateOptimizationAdapterParam = {}


---@class FAnimUpdateRateOptimizationAdapter_Injector
---@field bEnableAdapter boolean
---@field AnimUpdateRateAdaptParam FAnimUpdateRateOptimizationAdapterParam
FAnimUpdateRateOptimizationAdapter_Injector = {}


---@class UAnimUpdateRateOptimizationAdapter: UObject
---@field AdaptTargetComp USkeletalMeshComponent
---@field OwnerPawn APawn
---@field AdapterParam FAnimUpdateRateOptimizationAdapterParam
local UAnimUpdateRateOptimizationAdapter = {}

---@param InTargetLODLevel number
function UAnimUpdateRateOptimizationAdapter:OnMeshLODChanged(InTargetLODLevel) end

---@param InDeltaTime number
function UAnimUpdateRateOptimizationAdapter:UpdateMeshCompUpdateRate(InDeltaTime) end
