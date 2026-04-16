---@meta

---持续按下开火按键的功能模块
---@class UWeaponFunctionModule_PressingFuncBtn: UWeaponFunctionModuleBase
---@field UpdateInterval number
---@field CurUpdateInterval number
local UWeaponFunctionModule_PressingFuncBtn = {}

---@param DeltaTime number
function UWeaponFunctionModule_PressingFuncBtn:Update(DeltaTime) end

function UWeaponFunctionModule_PressingFuncBtn:CheckAndProcess() end

---@return boolean
function UWeaponFunctionModule_PressingFuncBtn:CheckEventCondition() end
