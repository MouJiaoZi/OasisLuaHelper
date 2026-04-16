---@meta

---@class FGunKickItemData
FGunKickItemData = {}


---@class FGunKickMapData
FGunKickMapData = {}


---@class FGunKickBlendData
FGunKickBlendData = {}


---@class FGunKickRuntimeData
FGunKickRuntimeData = {}


---@class FGunKickTypeData
FGunKickTypeData = {}


---@class UNewFPPAnimFMObj_WeaponFire: UAnimFunctionModule_ObjInstance
---@field ScopingSpeed number
---@field bIsWeaponFiring boolean
---@field ScopeAlpha number
---@field OutGunKickPosition FVector
---@field OutGunKickRotation FVector
local UNewFPPAnimFMObj_WeaponFire = {}

---@param NewState EFreshWeaponStateType
function UNewFPPAnimFMObj_WeaponFire:HandlePlayerWeaponStateChanged(NewState) end

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function UNewFPPAnimFMObj_WeaponFire:HandlePostLocalEquipWeapon(IsEquip, SelfRef, Weapon) end

---@param SelfRef AActor
function UNewFPPAnimFMObj_WeaponFire:HandleWeaponEquipmentUpdate(SelfRef) end

---@param Slot ESurviveWeaponPropSlot
function UNewFPPAnimFMObj_WeaponFire:HandleWeaponPropSlotChange(Slot) end
