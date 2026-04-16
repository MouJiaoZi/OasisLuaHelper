---@meta

---@class UPlayerTargetingComponent: UActorComponent
---@field DefaultTargetingSpeed number
---@field DefaultTargetingSocket string
---@field TargetingPitchRange FVector2D
---@field ManualInputSkipTargetingTime number
---@field TargetingSelectConfig FMeleeTargetSelectData
---@field AutoCancelTargetingConfig FMeleeTargetSelectData
---@field TargetingRepData FMeleeAttackTargetingRepData
local UPlayerTargetingComponent = {}

---@return boolean
function UPlayerTargetingComponent:StartTargetingServer() end

function UPlayerTargetingComponent:CancelTargetingServer() end

---@param bStart boolean
function UPlayerTargetingComponent:OnTargetingDataChangeBP(bStart) end

function UPlayerTargetingComponent:OnRep_TargetingRepData() end
