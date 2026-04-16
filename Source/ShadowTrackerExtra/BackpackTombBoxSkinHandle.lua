---@meta

---@class FWeaponAbilityAttrModify
---@field ModifyAttr string
---@field ResPath FSoftObjectPath
---@field bUseClientOverride boolean
---@field OverrideResPath FSoftObjectPath
FWeaponAbilityAttrModify = {}


---@class UBackpackTombBoxSkinHandle: UBackpackWeaponAbilityHandle
---@field NeedCleanModifyListBeforeRegisteModify boolean
---@field ModifyList ULuaArrayHelper<FWeaponAbilityAttrModify>
---@field ModifyPropertyList ULuaArrayHelper<string>
local UBackpackTombBoxSkinHandle = {}

---@param InFocusTarget UObject
---@return boolean
function UBackpackTombBoxSkinHandle:IsFocusOnTargetObject(InFocusTarget) end

---@return boolean
function UBackpackTombBoxSkinHandle:ModifyFocusTarget() end

function UBackpackTombBoxSkinHandle:RegisteModifyProperty() end
