---@meta

---@class ERailGunMatParamChangingType
---@field None number
---@field Radiating number
---@field Charging number
ERailGunMatParamChangingType = {}


---【【CG31】【主题玩法】电磁步枪】https://tapd.woa.com/tapd_fe/20386762/story/detail/1020386762120130011 电磁步枪特化FM，用于控制枪身Mesh中材质参数
---@class UWeaponFunctionModule_RailGun: UWeaponFunctionModuleBase
---@field RadiatingTime number
---@field ChargingTime number
---@field RadiatingDelay number
---@field BoltChargingDelay number
---@field ReloadChargingDelay number
---@field TacticalReloadChargingDelay number
---@field DefaultMatParam number
---@field MatParamName string
---@field MatSlotName string
---@field MatParamChangeBeginning number
local UWeaponFunctionModule_RailGun = {}

function UWeaponFunctionModule_RailGun:HandleWeaponShoot() end

---@param Type ERailGunMatParamChangingType
function UWeaponFunctionModule_RailGun:HandleMatParamChange(Type) end

---@param LastState EFreshWeaponStateType
---@param NewState EFreshWeaponStateType
function UWeaponFunctionModule_RailGun:HandleWeaponChangeState(LastState, NewState) end

---@param WeaponSlotID number
---@param IsEquipped boolean
function UWeaponFunctionModule_RailGun:HandleWeaponPartsEquipped(WeaponSlotID, IsEquipped) end

function UWeaponFunctionModule_RailGun:InitMatParam() end
