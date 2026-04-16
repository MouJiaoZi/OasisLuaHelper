---@meta

---@class EVehicleTeleportSkillState
---@field None number
---@field StartTeleport number
---@field Teleporting number
---@field EndTeleport number
EVehicleTeleportSkillState = {}


---@class FVehicleTeleportDesc
---@field TeleportSkillState EVehicleTeleportSkillState
---@field TeleportDestination FVector
---@field OriginalLinearVelocity FVector
---@field OriginalAngularVelocity FVector
---@field TeleportDir FVector
---@field TeleportDistance number
---@field bBlocked boolean
FVehicleTeleportDesc = {}


---@class UVehicleTeleportSkillComponent: UVehicleSkillBaseComponent
---@field bUseMultiDirSweep boolean
---@field SweepChannel ECollisionChannel
---@field SweepBoxScale number
---@field MinValidTeleportDistance number
---@field MaxUseTeleportTime number
---@field CurrentCanUseTeleportTime number
---@field MaxTeleportZDiff number
---@field MaxAccumulateTime number
---@field CurAccumulateLeftTime number
---@field MaxCoolDownTime number
---@field LeftCDTime number
---@field MaxTeleportDistance number
---@field UseVelocityDirThreshold number
---@field MaxStartPhaseTime number
---@field LeftStartPhaseTime number
---@field CurTeleportSkillDesc FVehicleTeleportDesc
---@field LastTeleportSkillState EVehicleTeleportSkillState
---@field bNeedCorrectClientPosAtStartTeleport boolean
---@field bNeedCorrectClientPostAtEndTeleport boolean
---@field TeleportSpeed number
---@field bForceUpdateVerticalUpDis boolean
---@field bDrawSweepPawn boolean
---@field BlockCantTeleportTips number
---@field bTeleportInWater boolean
---@field InWaterCantTeleportTips number
---@field bSimulateClientUseLastTeleportLoc boolean
---@field bForceClientUseLastTeleportLoc boolean
---@field bCantUseInCoolDownTips number
---@field SystemErrorTips number
---@field LastTeleportLoc FVector
---@field bIgnoreProcessCharacterWithAttachParent boolean
local UVehicleTeleportSkillComponent = {}

---@return EVehicleSkillErrorCode
function UVehicleTeleportSkillComponent:CheckCanDoVehicleTeleporting() end

---@param DeltaTime number
function UVehicleTeleportSkillComponent:DoTeleporting(DeltaTime) end

---@param DeltaTime number
function UVehicleTeleportSkillComponent:NativeTeleportTick(DeltaTime) end

function UVehicleTeleportSkillComponent:OnRep_CurrentCanUseTime() end

---@param NewValue number
function UVehicleTeleportSkillComponent:SetTeleportCanUseTime(NewValue) end

---@param TeleportSkillState EVehicleTeleportSkillState
function UVehicleTeleportSkillComponent:SetTeleportSkillState(TeleportSkillState) end

---@return EVehicleTeleportSkillState
function UVehicleTeleportSkillComponent:GetTeleportSkillState() end

function UVehicleTeleportSkillComponent:OnRepTeleportSkillDesc_ReplicatedUsing() end

function UVehicleTeleportSkillComponent:OnVehicleTeleportSkillStateChange() end

function UVehicleTeleportSkillComponent:CheckPassagerLocation() end

---@param StartLoc FVector
---@param EndLoc FVector
---@return FVector
function UVehicleTeleportSkillComponent:ProcessTeleportPath(StartLoc, EndLoc) end

---@param EndLoc FVector
function UVehicleTeleportSkillComponent:TeleportNewEndAtServer(EndLoc) end
