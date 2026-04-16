---@meta

---@class FWeaponAttrCheckWhiteListConfig
---@field ComponentName string
---@field AttrName string
---@field WeaponClassName string
FWeaponAttrCheckWhiteListConfig = {}


---@class FWeaponAttrCheckWhiteListRuntimeData
---@field ComponentName string
---@field AttrName string
FWeaponAttrCheckWhiteListRuntimeData = {}


---@class FWeaponAttrCheckWhiteListRuntimeDataList
---@field DataList ULuaArrayHelper<FWeaponAttrCheckWhiteListRuntimeData>
FWeaponAttrCheckWhiteListRuntimeDataList = {}


---@class UWeaponAttrCheckWhiteList: UObject
---@field WhiteListConfigs ULuaArrayHelper<FWeaponAttrCheckWhiteListConfig>
---@field RuntimeWhiteList ULuaMapHelper<string, FWeaponAttrCheckWhiteListRuntimeDataList>
local UWeaponAttrCheckWhiteList = {}
