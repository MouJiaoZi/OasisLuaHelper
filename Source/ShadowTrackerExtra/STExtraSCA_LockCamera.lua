---@meta

---@class USTExtraSCA_LockCamera: USightActionNode
---@field bLockCameraUseOffset boolean
---@field bDisableLockToProne boolean
---@field bAwayUseCachedBoneLocation boolean
---@field LockCurveValue number
---@field LockBoneName string
---@field LockCurveName string
---@field ScopeSocketName string
local USTExtraSCA_LockCamera = {}

---@param WeapinInstanceID number
function USTExtraSCA_LockCamera:OnAngleChange(WeapinInstanceID) end

function USTExtraSCA_LockCamera:HandleCompleteParallelAnimationEvaluationEnd() end
