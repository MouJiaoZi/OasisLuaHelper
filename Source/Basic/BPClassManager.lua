---@meta

---@class FBPClassItem
---@field ClassTagName string
---@field NativeClass UObject
---@field BPClass UObject
FBPClassItem = {}


---@class UBPClassManager: UDataAsset
---@field BPClassList ULuaArrayHelper<FBPClassItem>
---@field OptionalUIFilterList ULuaArrayHelper<FOptionalUIFilterItem>
---@field BPClassLookUp ULuaMapHelper<UClass, UObject>
---@field BPClassNameLookUp ULuaMapHelper<string, UObject>
---@field OptionalUIFilterLookUp ULuaMapHelper<string, UOptionalUIFilterInterface>
---@field OptionalUIFilterInitTriggerObj UObject
---@field BPClassManagerPath string
local UBPClassManager = {}

---@param InNativeClass UClass
---@param BPClass UObject
function UBPClassManager:ModifyClass(InNativeClass, BPClass) end

---@param UILuaName string
---@return boolean
function UBPClassManager:HasOptionalUIFilter(UILuaName) end
