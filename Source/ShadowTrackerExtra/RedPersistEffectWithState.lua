---@meta

---For RedPersistEffectWithStateAnimation MultipleDeviceGrade Feature Start *************************************************************
---@class FRedPersistEffectWithStateAnimation_MultipleDeviceGrade
---@field DeviceGrade_Min number
---@field DeviceGrade_Max number
---@field AnimMontageSoftRef UAnimMontage @The animation this section plays
FRedPersistEffectWithStateAnimation_MultipleDeviceGrade = {}


---@class URedPersistEffectWithState: UPersistEffectWithState
---@field MontageLength number
local URedPersistEffectWithState = {}

function URedPersistEffectWithState:GetDefaultAnim() end

function URedPersistEffectWithState:GetMultipleDeviceGradeAnimConfigList() end

function URedPersistEffectWithState:GetAnimByMultipleDeviceGradeConfig() end
