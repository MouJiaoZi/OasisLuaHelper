---@meta

---@class UBackpackKillTipsInfoHandle: UBackpackWeaponAbilityHandle
---@field ValidGameModeTypeList ULuaArrayHelper<EGameModeType>
---@field FriendStateToShowPropertyName string
---@field ValidFriendStateToShowList ULuaArrayHelper<string>
---@field ValidModeIDList ULuaArrayHelper<number>
local UBackpackKillTipsInfoHandle = {}

---@return number
function UBackpackKillTipsInfoHandle:GetHistoryKillsNum() end

---@param InWorldObject UObject
---@return boolean
function UBackpackKillTipsInfoHandle:IsGameModeTypeValid(InWorldObject) end

---@param InHex string
---@return FColor
function UBackpackKillTipsInfoHandle:GetColorFromHex(InHex) end
