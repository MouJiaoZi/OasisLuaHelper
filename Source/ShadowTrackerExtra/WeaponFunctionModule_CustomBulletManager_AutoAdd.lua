---@meta

---@class UWeaponFunctionModule_CustomBulletManager_AutoAdd: UWeaponFunctionModule_CustomBulletManager
---@field BulletAddCD number
---@field BulletAddNum number
---@field CurBulletNum number
---@field InitBulletNum number
---@field MaxBulletNum number
local UWeaponFunctionModule_CustomBulletManager_AutoAdd = {}

---@param OldNum number
function UWeaponFunctionModule_CustomBulletManager_AutoAdd:OnRep_CurBulletNum(OldNum) end

function UWeaponFunctionModule_CustomBulletManager_AutoAdd:AddBullet() end
