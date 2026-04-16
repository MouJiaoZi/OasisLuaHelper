---@meta

---@class UWeaponDyingUsingComponent: UWeaponLogicBaseComponent
---@field DefaultDyingUsingWeaponAnimLayer EAnimLayerType
---@field DyingUsingWeaponAnimListName string
local UWeaponDyingUsingComponent = {}

---@param IsNearDeath boolean
function UWeaponDyingUsingComponent:HandlePlayerNearDeath(IsNearDeath) end

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function UWeaponDyingUsingComponent:HandlePostLocalEquipWeapon(IsEquip, SelfRef, Weapon) end

function UWeaponDyingUsingComponent:BP_PreDestroyed() end

function UWeaponDyingUsingComponent:UpdateWeaponAnimList() end

function UWeaponDyingUsingComponent:HandleOnDyingUsingWeaponCharAnimLoadingFinished() end

function UWeaponDyingUsingComponent:RemoveCachedDyingUsingWeaponAnimList() end
