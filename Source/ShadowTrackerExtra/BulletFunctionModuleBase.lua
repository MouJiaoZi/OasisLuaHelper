---@meta

---子弹功能模块基类
---@class UBulletFunctionModuleBase: UObject
---@field bServerAvailable boolean
---@field bClientAvailable boolean
---@field bEnableTick boolean
local UBulletFunctionModuleBase = {}

---@param InOwnerBullet ASTExtraShootWeaponBulletBase
function UBulletFunctionModuleBase:Init(InOwnerBullet) end

---@param InOwnerWeapon ASTExtraShootWeapon
function UBulletFunctionModuleBase:OnOwnerBulletLaunch(InOwnerWeapon) end

---@param DeltaTime number
function UBulletFunctionModuleBase:Tick(DeltaTime) end

function UBulletFunctionModuleBase:EndPlay() end
