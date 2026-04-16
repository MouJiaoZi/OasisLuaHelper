---@meta

---@class USTExtraSCA_FOV: USightActionLerpNode
---@field LerpFOVStart number
---@field LerpFOVScopeDestin number
---@field LerpFOVCurrent number
---@field LerpFOVSourceEnd number
---@field LerpFOVDestinEnd number
---@field LerpFOVCurrentEnd number
---@field CurrentWeaponID number
---@field LerpMeshFOVStart number
---@field LerpMeshFOVCurrent number
---@field LerpMeshFOVCurrentEnd number
---@field LerpMeshFOVSourceEnd number
---@field LerpMeshFOVDestinEnd number
---@field bReportFOV boolean
---@field CurrentIsAngleSight boolean
---@field bIsLerppingAngle boolean
---@field bLastIsLerppingAngle boolean
---@field LerpAngleTime number
---@field LerpSwitchAngleChangeSpeed number
---@field LerpAngleCurrentTime number
---@field LerpEndAlpha number
---@field bIsLerppingZoomChange boolean
---@field bLastIsLerppingZoomChange boolean
---@field LerpZoomChangeTime number
---@field LerpZoomChangeSpeed number
---@field OBOrReplayLerpZoomChangeSpeed number
---@field ZoomChangeSouece number
---@field ZoomChangeDestin number
---@field LerpZoomChangeCurrentTime number
---@field bIsFirstViewScope boolean
---@field CacheFirstViewFOV number
local USTExtraSCA_FOV = {}

---@param NodeOwner USTextraSightScopeMgr
---@param InLerpAlpha number
---@return boolean
function USTExtraSCA_FOV:UpdateFOV(NodeOwner, InLerpAlpha) end

---@param NodeOwner USTextraSightScopeMgr
---@param InCurTime number
function USTExtraSCA_FOV:UpdateAngleFOV(NodeOwner, InCurTime) end

---@param NodeOwner USTextraSightScopeMgr
---@param DeltaTime number
function USTExtraSCA_FOV:UpdateAngle(NodeOwner, DeltaTime) end

---@param NodeOwner USTextraSightScopeMgr
---@param InCurTime number
function USTExtraSCA_FOV:UpdateZoomChangeFOV(NodeOwner, InCurTime) end

---@param NodeOwner USTextraSightScopeMgr
---@param DeltaTime number
function USTExtraSCA_FOV:UpdateZoomChange(NodeOwner, DeltaTime) end

---@param NodeOwner USTextraSightScopeMgr
---@param DeltaTime number
function USTExtraSCA_FOV:UpdateZoomChangeLerpFOV(NodeOwner, DeltaTime) end

---@param NodeOwner USTextraSightScopeMgr
---@param IsBind boolean
function USTExtraSCA_FOV:BindSameEvent(NodeOwner, IsBind) end

---@param WeaponID number
---@param ScopeID number
---@param LastValue number
---@param NewValue number
function USTExtraSCA_FOV:OnScopeZoomChange(WeaponID, ScopeID, LastValue, NewValue) end

---@param WeapinInstanceID number
function USTExtraSCA_FOV:OnAngleChange(WeapinInstanceID) end

function USTExtraSCA_FOV:OnSightIDChange() end
