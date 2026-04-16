---@meta

---@class USTExtraSCA_SubmitFOVToServer: USightActionNode
---@field bSyncDataImmedate boolean
---@field LastZoomValue number
---@field LastSyncZoomTime number
---@field ToleranceZoom number
---@field LastFOVValue number
---@field LastSyncFOVTime number
---@field ToleranceFOV number
---@field SyncInterval number
local USTExtraSCA_SubmitFOVToServer = {}

---@param WeapinInstanceID number
function USTExtraSCA_SubmitFOVToServer:OnAngleChange(WeapinInstanceID) end

---@param WeaponID number
---@param ScopeID number
---@param LastValue number
---@param NewValue number
function USTExtraSCA_SubmitFOVToServer:OnScopeZoomChange(WeaponID, ScopeID, LastValue, NewValue) end

function USTExtraSCA_SubmitFOVToServer:SubmitSyncData() end
