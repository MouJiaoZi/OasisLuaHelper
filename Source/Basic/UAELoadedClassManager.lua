---@meta

---@class EClassLoadType
---@field EClassLoadType_None number
---@field EClassLoadType_Cach number
EClassLoadType = {}


---@class EClassLoadBeginTime
---@field ELoadBegin_None number
---@field ELoadBegin_ClientLobby number
---@field ELoadBegin_StartFight number
EClassLoadBeginTime = {}


---@class FUAEResList
---@field ResIndex number
---@field ResPathName string
---@field ServerNeedLoad boolean
---@field ClientNeedLoad boolean
---@field iEditorLoadType boolean
---@field BuildClientNeed boolean
---@field BuildServerNeed boolean
---@field IsResident boolean
FUAEResList = {}


---@class FBPTableItem
---@field ID number
---@field Name string
---@field Path string
FBPTableItem = {}


---@class FCookResTableRow
---@field resId string
---@field resPath string
FCookResTableRow = {}


---@class FAssetLoadSuccessDelegate : ULuaSingleDelegate
FAssetLoadSuccessDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, LoadObject: UObject) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAssetLoadSuccessDelegate:Bind(Callback, Obj) end

---执行委托
---@param LoadObject UObject
function FAssetLoadSuccessDelegate:Execute(LoadObject) end


---@class FAssetLoadSuccessDelegateWithID : ULuaSingleDelegate
FAssetLoadSuccessDelegateWithID = {}

---绑定回调函数
---@param Callback fun(Obj: any, LoadObject: UObject, resID: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAssetLoadSuccessDelegateWithID:Bind(Callback, Obj) end

---执行委托
---@param LoadObject UObject
---@param resID number
function FAssetLoadSuccessDelegateWithID:Execute(LoadObject, resID) end


---@class FAssetLoadListSuccessDelegateWithID : ULuaSingleDelegate
FAssetLoadListSuccessDelegateWithID = {}

---绑定回调函数
---@param Callback fun(Obj: any, LoadObject: ULuaArrayHelper<UObject>, resID: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAssetLoadListSuccessDelegateWithID:Bind(Callback, Obj) end

---执行委托
---@param LoadObject ULuaArrayHelper<UObject>
---@param resID number
function FAssetLoadListSuccessDelegateWithID:Execute(LoadObject, resID) end


---@class FClassLoadSuccessDelegate : ULuaSingleDelegate
FClassLoadSuccessDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, LoadClass: UClass) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClassLoadSuccessDelegate:Bind(Callback, Obj) end

---执行委托
---@param LoadClass UClass
function FClassLoadSuccessDelegate:Execute(LoadClass) end


---@class FClassLoadSuccessDelegateWithID : ULuaSingleDelegate
FClassLoadSuccessDelegateWithID = {}

---绑定回调函数
---@param Callback fun(Obj: any, LoadClass: UClass, resID: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClassLoadSuccessDelegateWithID:Bind(Callback, Obj) end

---执行委托
---@param LoadClass UClass
---@param resID number
function FClassLoadSuccessDelegateWithID:Execute(LoadClass, resID) end


---@class FClassLoadListSuccessDelegateWithID : ULuaSingleDelegate
FClassLoadListSuccessDelegateWithID = {}

---绑定回调函数
---@param Callback fun(Obj: any, LoadClass: ULuaArrayHelper<UClass>, resID: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClassLoadListSuccessDelegateWithID:Bind(Callback, Obj) end

---执行委托
---@param LoadClass ULuaArrayHelper<UClass>
---@param resID number
function FClassLoadListSuccessDelegateWithID:Execute(LoadClass, resID) end


---@class FAssetLoadSucDelegateWithIDAndPath : ULuaSingleDelegate
FAssetLoadSucDelegateWithIDAndPath = {}

---绑定回调函数
---@param Callback fun(Obj: any, LoadObj: UObject, ResID: number, resPath: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAssetLoadSucDelegateWithIDAndPath:Bind(Callback, Obj) end

---执行委托
---@param LoadObj UObject
---@param ResID number
---@param resPath string
function FAssetLoadSucDelegateWithIDAndPath:Execute(LoadObj, ResID, resPath) end


---@class UBPTable: UObject
---@field BPTableName string
---@field BPTableItemMap ULuaMapHelper<number, FBPTableItem>
local UBPTable = {}

---@param ID number
---@return string
function UBPTable:GetPath(ID) end


---@class UUAELoadedClassManager: UObject
---@field m_CachClass ULuaArrayHelper<UClass>
---@field m_CookClass ULuaMapHelper<number, UClass>
---@field m_ResTableData ULuaMapHelper<number, FUAEResList>
---@field ItemTypeID2BPIDMap ULuaMapHelper<number, number>
---@field BPID2BPPathMap ULuaMapHelper<number, FSoftObjectPath>
---@field OverrideBPID2BPPathMap ULuaMapHelper<number, FSoftObjectPath>
---@field ItemID2BPPathMap ULuaMapHelper<number, FSoftObjectPath>
---@field BPTablePathMap ULuaMapHelper<string, string>
---@field BPTableMap ULuaMapHelper<string, UBPTable>
---@field LoadedClassManagerClassName string
---@field AsyncLoadDict ULuaMapHelper<UObject, FStringAssetReference>
---@field AsyncLoadClassDict ULuaMapHelper<UObject, FStringClassReference>
local UUAELoadedClassManager = {}

function UUAELoadedClassManager:Init() end

function UUAELoadedClassManager:ClearAllData() end

function UUAELoadedClassManager:ClearResPathDataCache() end

function UUAELoadedClassManager:ClearAllAsyncLoadRef() end

function UUAELoadedClassManager:InitTableData() end

---@return boolean
function UUAELoadedClassManager:SupportItemTypeID2BPPathMapCollection() end

---@param InItemTypeID2BPIDMap ULuaMapHelper<number, number>
---@param InBPID2AssetPathMap ULuaMapHelper<number, string>
function UUAELoadedClassManager:CollectItemTypeID2BPPathMap(InItemTypeID2BPIDMap, InBPID2AssetPathMap) end

function UUAELoadedClassManager:InitOverrideBPID2BPPathMap() end

---@param InBPID2AssetPathMap ULuaMapHelper<number, string>
function UUAELoadedClassManager:CollectOverrideItemTypeID2BPPathMap(InBPID2AssetPathMap) end

---@param BPID number
---@return string
function UUAELoadedClassManager:OverrideItemBPPath(BPID) end

---@param BPID number
---@return string
function UUAELoadedClassManager:GetBPPathByItemBPID(BPID) end

---@param InItemTypeID number
---@return string
function UUAELoadedClassManager:GetBPPathByItemTypeID(InItemTypeID) end

---@param BPID number
---@return string
function UUAELoadedClassManager:GetPickupWrapperPathByBPID(BPID) end

---@param InItemID number
---@return string
function UUAELoadedClassManager:GetPickupWrapperPathByItemID(InItemID) end

function UUAELoadedClassManager:GetEditorNotLoadLevels() end

function UUAELoadedClassManager:GetEditorBlackLevels() end

function UUAELoadedClassManager:ReInitialize() end

function UUAELoadedClassManager:InitBPTableMap() end

---@param BPTableName string
---@param ID number
---@return string
function UUAELoadedClassManager:GetPath(BPTableName, ID) end

---@param BPTableName string
---@param BPID number
---@return FSoftObjectPath
function UUAELoadedClassManager:GetSoftPath(BPTableName, BPID) end

---@param InItemTypeID number
---@return FSoftObjectPath
function UUAELoadedClassManager:GetBPSoftPathByItemTypeID(InItemTypeID) end

---@param BPID number
---@return FSoftObjectPath
function UUAELoadedClassManager:GetBPSoftPathByItemBPID(BPID) end

---@param ItemId number
function UUAELoadedClassManager:AddExtraSoftPathCache(ItemId) end
