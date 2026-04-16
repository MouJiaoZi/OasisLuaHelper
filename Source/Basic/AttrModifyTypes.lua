---@meta

---@class FWeaponAttrModifyData
---@field ModifyAttr string
---@field ComponentClassName string
---@field Op EAttrOperator
---@field ModifyValue number
FWeaponAttrModifyData = {}


---@class FWeaponAttrModifyConfig
---@field ModifyConfigID string
---@field WeaponAttrModifiers ULuaArrayHelper<FWeaponAttrModifyData>
FWeaponAttrModifyConfig = {}
