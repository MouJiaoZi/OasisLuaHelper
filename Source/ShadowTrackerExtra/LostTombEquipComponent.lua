---@meta

---@class ELostTombWeaponSlotType
---@field ELostTombWeaponSlotType_None number @NONE
---@field ELostTombWeaponSlotType_MainWeapon number @MainWeapon
---@field ELostTombWeaponSlotType_MeleeWeapon number @MeleeWeapon
ELostTombWeaponSlotType = {}


---@class ULostTombEquipComponent: UActorComponent, ILuaInterface
local ULostTombEquipComponent = {}

---@return string
function ULostTombEquipComponent:GetLuaModule() end

---@param InHandle ULostTombBackpackAvatarHandle
---@return boolean
function ULostTombEquipComponent:PutOnEquip(InHandle) end

---@param InSlot ELostTombEquipSlotType
function ULostTombEquipComponent:PutDownEquip(InSlot) end

---@param InSlot ELostTombWeaponSlotType
---@param InHandle UBackpackWeaponHandle
---@return boolean
function ULostTombEquipComponent:PutOnWeapon(InSlot, InHandle) end

---@param InSlot ELostTombWeaponSlotType
function ULostTombEquipComponent:PutDownWeapon(InSlot) end

---@param InSlot ELostTombEquipSlotType
---@return number
function ULostTombEquipComponent:GetIfPutOffArmorGroupModifiers(InSlot) end

---@param InSlot ELostTombEquipSlotType
---@param DefineID FItemDefineID
---@return number
function ULostTombEquipComponent:GetIfPutOnArmorGroupModifiers(InSlot, DefineID) end

---@param InSlot ELostTombEquipSlotType
---@return number
function ULostTombEquipComponent:GetPreSlotCapacity(InSlot) end
