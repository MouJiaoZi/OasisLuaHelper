---@meta

---@class FBackpackWeaponInitialItemAbilityHandleItemConfig
---@field ItemID number
---@field ItemCount number
FBackpackWeaponInitialItemAbilityHandleItemConfig = {}


---@class UBackpackWeaponInitialItemAbilityHandle: UBackpackWeaponAbilityHandle
---@field GameModeIDs ULuaArrayHelper<number>
---@field Items ULuaArrayHelper<FBackpackWeaponInitialItemAbilityHandleItemConfig>
---@field bShouldCheckOwnerCharacter boolean
---@field CachePickUpInfo FBattleItemPickupInfo
local UBackpackWeaponInitialItemAbilityHandle = {}

---@param Pawn APawn
function UBackpackWeaponInitialItemAbilityHandle:OnPlayerCharacterPossessed(Pawn) end
