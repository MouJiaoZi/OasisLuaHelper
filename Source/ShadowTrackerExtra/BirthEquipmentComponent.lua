---@meta

---@class FItemTypeEnum
---@field Weapon number
---@field Accessories number
---@field Bullet number
---@field Cloth number
---@field DefenceandBack number
---@field MedicineAndGrenade number
---@field Pendant number
FItemTypeEnum = {}


---@class FWeaponInformation
FWeaponInformation = {}


---@class UBirthEquipmentComponent: UGameModeBaseComponent
---@field ItemDropList ULuaArrayHelper<number>
---@field WeaponConfigData ULuaMapHelper<number, FWeaponInformation>
local UBirthEquipmentComponent = {}

---@param TableName string
function UBirthEquipmentComponent:InitVariableWithTableName(TableName) end

---@param DataTable UDataTable
function UBirthEquipmentComponent:InitVariableWithTable(DataTable) end

---@param InDataTable UDataTable
function UBirthEquipmentComponent:SetDataTable(InDataTable) end

---@param PlayerController ASTExtraPlayerController
---@param Capacity number
function UBirthEquipmentComponent:SetBackpackCapacity(PlayerController, Capacity) end

---@param PlayerController ASTExtraPlayerController
---@param ID number
---@param WeaponSlot ESurviveWeaponPropSlot
function UBirthEquipmentComponent:EquipWeapons(PlayerController, ID, WeaponSlot) end

---@param PlayerController ASTExtraPlayerController
function UBirthEquipmentComponent:DropItems(PlayerController) end

---@param WeaponManager UWeaponManagerComponent
---@param WeaponSlot ESurviveWeaponPropSlot
function UBirthEquipmentComponent:InfiniteBullets(WeaponManager, WeaponSlot) end

---@param BackpackComponent UBackpackComponent
---@param WeaponManager UWeaponManagerComponent
function UBirthEquipmentComponent:EquipInitialWeapon_Internal(BackpackComponent, WeaponManager) end

---@param ID number
---@param BackpackComponent UBackpackComponent
---@param WeaponManager UWeaponManagerComponent
---@param WeaponSlot ESurviveWeaponPropSlot
function UBirthEquipmentComponent:EquipSpecificWeapon_Internal(ID, BackpackComponent, WeaponManager, WeaponSlot) end

---@param BackpackComponent UBackpackComponent
---@param WeaponManager UWeaponManagerComponent
function UBirthEquipmentComponent:EquipInitialBullets_Internal(BackpackComponent, WeaponManager) end

---@param ID number
---@param BackpackComponent UBackpackComponent
---@param WeaponManager UWeaponManagerComponent
---@param WeaponSlot ESurviveWeaponPropSlot
function UBirthEquipmentComponent:EquipSpecificBullets_Internal(ID, BackpackComponent, WeaponManager, WeaponSlot) end

---@param Weapon FWeaponInformation
---@param BackpackComponent UBackpackComponent
---@param WeaponManager UWeaponManagerComponent
---@param Slot ESurviveWeaponPropSlot
function UBirthEquipmentComponent:EquipCurrentWeapon(Weapon, BackpackComponent, WeaponManager, Slot) end

---@param ID number
---@param BackpackComponent UBackpackComponent
---@param WeaponManager UWeaponManagerComponent
---@param WeaponSlot ESurviveWeaponPropSlot
function UBirthEquipmentComponent:EquipCurrentBullet(ID, BackpackComponent, WeaponManager, WeaponSlot) end
