---@meta

---@class FCharacterAvatar_WearItemMetaInfo
---@field ItemID number
---@field ItemType number
---@field ItemSubType number
---@field ItemLevel number
---@field ValidInfo boolean
FCharacterAvatar_WearItemMetaInfo = {}


---@class FCharacterAvatar_EquipSkinInfo
---@field ReplacedItemID number
---@field SkinMetaInfo FCharacterAvatar_WearItemMetaInfo
FCharacterAvatar_EquipSkinInfo = {}


---@class FCharacterAvatar_PendantInfo
---@field PendantItemID number
---@field AttachedItemMetaInfo FCharacterAvatar_WearItemMetaInfo
FCharacterAvatar_PendantInfo = {}


---@class FCharacterAvatar_WearInfo
---@field EquipedSkinList ULuaArrayHelper<FCharacterAvatar_EquipSkinInfo>
---@field EquipedPendantList ULuaArrayHelper<FCharacterAvatar_PendantInfo>
FCharacterAvatar_WearInfo = {}


---@class UOBPlayer_WearInfo: UObject
---@field OBAvatarWearInfo FCharacterAvatar_WearInfo
---@field BattlePrepareWearWeaponPendantList ULuaArrayHelper<number>
---@field BattlePrepareWearWeaponSkinList ULuaArrayHelper<number>
---@field BattlePrepareWearWeapon number
---@field BattlePrepareWearBackpackPendantList ULuaArrayHelper<number>
---@field BattlePrepareWearBackpack number
---@field BattlePrepareWearHelmet number
---@field BattlePrepareVehicle number
local UOBPlayer_WearInfo = {}

---@param LobbyBattlePrepareWearWeaponInfoList ULuaArrayHelper<number>
---@param InTarget UObject
---@return number
function UOBPlayer_WearInfo:ExtractLobbyBattlePrepareWearWeapon(LobbyBattlePrepareWearWeaponInfoList, InTarget) end

---@param AvatarItemID number
---@param MatchedSkin number
---@return boolean
function UOBPlayer_WearInfo:TryMatchAvatarSkinForItem(AvatarItemID, MatchedSkin) end

---@param AvatarItemID number
---@param MatchedPendant number
---@return boolean
function UOBPlayer_WearInfo:TryMatchAvatarPendantForItem(AvatarItemID, MatchedPendant) end

---@param WeaponItemID number
---@param MatchedSkin number
---@return boolean
function UOBPlayer_WearInfo:TryMatchWeaponSkinForItem(WeaponItemID, MatchedSkin) end

---@return number
function UOBPlayer_WearInfo:GetPrepareVehicle() end

---@return number
function UOBPlayer_WearInfo:GetPrepareWearBackpack() end

---@return number
function UOBPlayer_WearInfo:GetPrepareWearHelmet() end
