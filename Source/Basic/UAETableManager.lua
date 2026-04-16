---@meta

---@class FTableAsyncLoadRequest
---@field TableName string
FTableAsyncLoadRequest = {}


---@class FTableLoadSuccessDelegate : ULuaSingleDelegate
FTableLoadSuccessDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, DataTable: UUAEDataTable) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTableLoadSuccessDelegate:Bind(Callback, Obj) end

---执行委托
---@param DataTable UUAEDataTable
function FTableLoadSuccessDelegate:Execute(DataTable) end


---@class UUAETableManager: UObject
---@field TableRelativeDir string
---@field InitalizedTables ULuaArrayHelper<string>
---@field TableObjList ULuaArrayHelper<UUAEDataTable>
---@field TableObjList_Legacy ULuaArrayHelper<UDataTable>
---@field TableObjMap ULuaMapHelper<string, UUAEDataTable>
---@field TableObjMap_Legacy ULuaMapHelper<string, UDataTable>
---@field PendingTableAsyncRequestList ULuaArrayHelper<FTableAsyncLoadRequest>
---@field TransientTableMap ULuaMapHelper<string, UUAEDataTable>
---@field TablesNeedReleasedInBattle ULuaArrayHelper<string>
local UUAETableManager = {}

---@param TableName string
---@param SuccDelegate FTableLoadSuccessDelegate
function UUAETableManager:GetTablePtrAsync(TableName, SuccDelegate) end

---@param TableName string
function UUAETableManager:OnAsyncLoadedCallback(TableName) end

---根据正则表达式获取 TableManager 中存储的表格的名字列表
---@param RegexPattern string
function UUAETableManager:GetTableNamesWithRegex(RegexPattern) end

---@param TableName string
function UUAETableManager:ReleaseTable(TableName) end

---@param TableName string
---@param SuccDelegate FTableLoadSuccessDelegate
function UUAETableManager:GetDataTableStaticAsync(TableName, SuccDelegate) end

function UUAETableManager:LoadTranslateTables() end
