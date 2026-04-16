---@meta

---@class USTExtraSCA_FOVFromVehicleWeapon: USightActionLerpNode
---@field LerpFOVStart number
---@field LerpFOVCurrent number
---@field LerpFOVCurrentEnd number
---@field bReportFOV boolean
local USTExtraSCA_FOVFromVehicleWeapon = {}

---@param NodeOwner USTextraSightScopeMgr
---@param InLerpAlpha number
---@return boolean
function USTExtraSCA_FOVFromVehicleWeapon:UpdateFOV(NodeOwner, InLerpAlpha) end
