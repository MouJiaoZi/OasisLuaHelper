---@meta

---@class ESwordSniperShootMode
---@field ESwordSniperShootMode_Normal number
---@field ESwordSniperShootMode_Super number
ESwordSniperShootMode = {}


---@class UWeaponFunctionModule_SwordSniper: UWeaponFunctionModuleBase
---@field CurShootMode ESwordSniperShootMode
local UWeaponFunctionModule_SwordSniper = {}

function UWeaponFunctionModule_SwordSniper:RPC_Server_ToggleShootMode() end

---@param ShootMode ESwordSniperShootMode
function UWeaponFunctionModule_SwordSniper:ChangeCurShootModeOnServer(ShootMode) end

function UWeaponFunctionModule_SwordSniper:OnRep_CurShootMode() end

function UWeaponFunctionModule_SwordSniper:BPHandleServerToggleShootMode() end

function UWeaponFunctionModule_SwordSniper:BPHandleRepCurShootMode() end
