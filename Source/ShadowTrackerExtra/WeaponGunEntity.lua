---@meta

---@class UWeaponGunEntity: UWeaponAvatarEntity
local UWeaponGunEntity = {}

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function UWeaponGunEntity:PutOnEquipmentLogic(ItemHandle) end

---@param ForceClear boolean
function UWeaponGunEntity:ClearEntity(ForceClear) end

---@param AssetRef FSoftObjectPath
function UWeaponGunEntity:RenderEntity(AssetRef) end

function UWeaponGunEntity:Apply3DUI_Implementation() end

---@param DisableCheck boolean
function UWeaponGunEntity:ResetEntityBeforePushToPool(DisableCheck) end

---@param InMarkTag string
function UWeaponGunEntity:MarkGunMeshOperationInfo(InMarkTag) end

---@param OutVariantResList ULuaArrayHelper<FSoftObjectPath>
function UWeaponGunEntity:CollectAbilityHandleResource(OutVariantResList) end
