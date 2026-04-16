---@meta

---@class UWeaponDriverUsingComponent: UWeaponLogicBaseComponent
---@field DefaultDriverUsingWeaponAnimLayer EAnimLayerType
---@field DriverPistolWeaponAnimInstance UAnimInstance
---@field CachedDriverUsingWeaponDynamicGroupName string
---@field CachedOriginalWeaponAnimInstanceClass UAnimInstance
local UWeaponDriverUsingComponent = {}

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function UWeaponDriverUsingComponent:HandlePostLocalEquipWeapon(IsEquip, SelfRef, Weapon) end

---@param InVehicle ASTExtraVehicleBase
function UWeaponDriverUsingComponent:OnOwnerAttachedToVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function UWeaponDriverUsingComponent:OnOwnerDetachFromVehicle(InVehicle) end

function UWeaponDriverUsingComponent:TryRegisterDynamicAnimList() end

---@param GroupName string
function UWeaponDriverUsingComponent:OnWeaponDynamicAnimListRegistered(GroupName) end

function UWeaponDriverUsingComponent:UpdateWeaponAnimList() end

function UWeaponDriverUsingComponent:HandleSimulatedWeaponChanged() end

function UWeaponDriverUsingComponent:HandleOnDriverUsingWeaponCharAnimLoadingFinished() end

function UWeaponDriverUsingComponent:RemoveCachedDriverUsingWeaponAnimList() end
