---@meta

---@class EPropReplacePlatform
---@field EPropReplacePlatform_NONE number
---@field EPropReplacePlatform_Mobile number
---@field EPropReplacePlatform_WinRelease number
---@field EPropReplacePlatform_OpenHarmony number
EPropReplacePlatform = {}


---Object属性替换管理器
---@class FPropReplaceDataItem
---@field DataSetClassPath FSoftClassPath
FPropReplaceDataItem = {}


---@class UPropReplaceManager: UObject
---@field ClassLoadSuccessDelegateWithID FClassLoadSuccessDelegateWithID
---@field PendingReplaceMap ULuaMapHelper<number, FPropReplaceDataItem>
---@field TaskID number
---@field PropReplaceDataSetClassCacheList ULuaArrayHelper<UClass>
local UPropReplaceManager = {}

---@param DstObj UObject
---@param SpesificPlatform EPropReplacePlatform
function UPropReplaceManager:InitPlatformDataSet(DstObj, SpesificPlatform) end

---@param DstObj UObject
---@param DataSetSoftClass UPropReplaceDataSet
function UPropReplaceManager:StartReplacePropsByDataSetSoftClassAsync(DstObj, DataSetSoftClass) end

---@param DstObj UObject
---@param DataSetClassPath FSoftClassPath
function UPropReplaceManager:StartReplacePropsByDataSetSoftClassPathAsync(DstObj, DataSetClassPath) end

---@param DstObj UObject
---@param DataSetClass UClass
function UPropReplaceManager:StartReplacePropsByDataSetClass(DstObj, DataSetClass) end

---@param DstObj UObject
---@param InDataSetObj UObject
function UPropReplaceManager:StartReplacePropsByDataSetObject(DstObj, InDataSetObj) end

---@param DstObj UObject
---@param DataTable UUAEDataTable
---@param KeyName string
---@param PropToCompNameMap ULuaMapHelper<string, string>
function UPropReplaceManager:StartReplacePropsByDataTable(DstObj, DataTable, KeyName, PropToCompNameMap) end

---@param LoadedClass UClass
---@param ResID number
function UPropReplaceManager:HandleDataSetClassLoadFinished(LoadedClass, ResID) end
