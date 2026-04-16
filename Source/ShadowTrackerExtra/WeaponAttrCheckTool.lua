---@meta

---@class EWeaponAttrCheckConfigType
---@field Attr_Int number
---@field Attr_Float number
---@field Attr_None number
EWeaponAttrCheckConfigType = {}


---@class FWeaponAttrCheckConfig
---@field ComponentName string
---@field AttrName string
---@field MinValue number
---@field MaxValue number
---@field Type EWeaponAttrCheckConfigType
---@field bCheckOnServer boolean
---@field bCheckOnSimulate boolean
FWeaponAttrCheckConfig = {}


---@class UWeaponAttrCheckTool: UObject
---@field CheckConfigAndData ULuaArrayHelper<FWeaponAttrCheckConfig>
---@field CheckRate number
---@field MsgURL string
local UWeaponAttrCheckTool = {}
