---@meta

---@class FCharacterAvatarAbilityAttrModify
---@field ModifyAttr string
---@field ResPath FSoftObjectPath
---@field bUseClientOverride boolean
---@field OverrideResPath FSoftObjectPath
FCharacterAvatarAbilityAttrModify = {}


---@class UBackpackCharacterAvatarTombBoxSkinHandle: UBackpackCharacterAvatarAbilityHandle
---@field EffectDuration number
---@field CharacterAvatarSkinTable string
---@field ModifyList ULuaArrayHelper<FCharacterAvatarAbilityAttrModify>
---@field ModifyPropertyList ULuaArrayHelper<string>
local UBackpackCharacterAvatarTombBoxSkinHandle = {}

---@param InFocusTarget UObject
---@return boolean
function UBackpackCharacterAvatarTombBoxSkinHandle:IsFocusOnTargetObject(InFocusTarget) end

---@return boolean
function UBackpackCharacterAvatarTombBoxSkinHandle:ModifyFocusTarget() end

function UBackpackCharacterAvatarTombBoxSkinHandle:RegisterModifyProperty() end

---@return number
function UBackpackCharacterAvatarTombBoxSkinHandle:GetFinalTypeSpecificID() end
