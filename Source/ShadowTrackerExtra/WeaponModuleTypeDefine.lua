---@meta

---@class EWeaponModuleModifyAttrType
---@field EWeaponModuleModifyAttrType_Base number @基础属性词条
---@field EWeaponModuleModifyPartApplyType_ScopeSpeed number @开镜速度相关词条
---@field EWeaponModuleModifyPartApplyType_Recoil number @后坐力相关词条
---@field EWeaponModuleModifyPartApplyType_Spread number @散布相关词条
---@field EWeaponModuleModifyPartApplyType_Stability number @稳定性相关词条
---@field EWeaponModuleModifyPartApplyType_MoveSpeed number @移动速度相关词条
EWeaponModuleModifyAttrType = {}


---@class FWeaponModuleModifyAttrCacheData
---@field AttrID number
---@field AttrType EWeaponModuleModifyAttrType
---@field AttrName string
---@field ModifyAttrName string
---@field ModifyOp number
---@field bRepClient boolean
---@field FinalModifyValue number
---@field EnableAttrNeededPlayerStateList ULuaArrayHelper<number>
---@field EnableAttrFatalPlayerStateList ULuaArrayHelper<number>
---@field EnableAttrNoLessPlayerStateList ULuaArrayHelper<number>
---@field bHasExtraEnableCondition boolean
FWeaponModuleModifyAttrCacheData = {}
