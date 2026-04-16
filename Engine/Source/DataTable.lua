---@meta

---Base class for all table row structs to inherit from.
---@class FTableRowBase
FTableRowBase = {}


---Handle to a particular row in a table
---@class FDataTableRowHandle
---@field RowName string @Name of row in the table that we want
FDataTableRowHandle = {}


---Handle to a particular row in a table
---@class FDataTableCategoryHandle
---@field ColumnName string @Name of column in the table that we want
---@field RowContents string @Contents of rows in the table that we want
FDataTableCategoryHandle = {}


---@class FOnDataSaved : ULuaSingleDelegate
FOnDataSaved = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UDataTable) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDataSaved:Bind(Callback, Obj) end

---执行委托
---@param Param1 UDataTable
function FOnDataSaved:Execute(Param1) end


---@class UDataTable: UObject
local UDataTable = {}
