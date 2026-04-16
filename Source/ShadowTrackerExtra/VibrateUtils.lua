---@meta

---@class UVibrateUtils: UObject
local UVibrateUtils = {}

---@param ContextObject UObject
---@param MainItemType EVibrateTriggerMainItemType
---@param EventType EVibrateTriggerEventType
---@param ActionType EVibrateTriggerActionType
function UVibrateUtils:PostSimpleVibrateTriggerAction(ContextObject, MainItemType, EventType, ActionType) end

---@param Player ASTExtraCharacter
---@param MainItemType EVibrateTriggerMainItemType
---@param EventType EVibrateTriggerEventType
---@param ActionType EVibrateTriggerActionType
function UVibrateUtils:PostPlayerSimpleVibrateTriggerAction(Player, MainItemType, EventType, ActionType) end

---@param Player ASTExtraCharacter
---@param Weapon ASTExtraWeapon
---@param EventType EVibrateTriggerEventType
---@param ActionType EVibrateTriggerActionType
function UVibrateUtils:PostPlayerWeaponSimpleVibrateTriggerAction(Player, Weapon, EventType, ActionType) end

---@return number
function UVibrateUtils:GetRichTapSupport() end

---@param Weapon ASTExtraWeapon
---@param OwnerPlayer ASTExtraCharacter
---@param SoundType EWeaponSpecialSoundType
function UVibrateUtils:OnPlayWeaponSpecialSound(Weapon, OwnerPlayer, SoundType) end

---@param ContextObject UObject
---@param ID number
---@param VibrateAlpha number
function UVibrateUtils:PostVibrateByAssetID(ContextObject, ID, VibrateAlpha) end

---@param ContextObject UObject
---@param ID number
---@param VibrateAlpha number
function UVibrateUtils:PostVibrateByAssetIDDirectly(ContextObject, ID, VibrateAlpha) end
