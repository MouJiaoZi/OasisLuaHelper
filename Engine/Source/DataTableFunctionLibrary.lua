---@meta

---Enum used to indicate success or failure of EvaluateCurveTableRow.
---@class EEvaluateCurveTableResult
---@field RowFound number @Found the row successfully.
---@field RowNotFound number @Failed to find the row.
EEvaluateCurveTableResult = {}


---@class FOnPostLoadDataTable : ULuaSingleDelegate
FOnPostLoadDataTable = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UDataTable) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostLoadDataTable:Bind(Callback, Obj) end

---执行委托
---@param Param1 UDataTable
function FOnPostLoadDataTable:Execute(Param1) end


---@class FOnGetDataTableByName : ULuaSingleDelegate
FOnGetDataTableByName = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGetDataTableByName:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
function FOnGetDataTableByName:Execute(Param1) end


---@class FOnJudgeBigWorldTable : ULuaSingleDelegate
FOnJudgeBigWorldTable = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnJudgeBigWorldTable:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
function FOnJudgeBigWorldTable:Execute(Param1) end


---@class FOnRefreshDataTable : ULuaMulticastDelegate
FOnRefreshDataTable = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRefreshDataTable:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 string
function FOnRefreshDataTable:Broadcast(Param1) end


---@class FOnCheckReadDataTable : ULuaSingleDelegate
FOnCheckReadDataTable = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCheckReadDataTable:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 number
function FOnCheckReadDataTable:Execute(Param1, Param2) end


---@class UDataTableFunctionLibrary: UBlueprintFunctionLibrary
local UDataTableFunctionLibrary = {}

---@param CurveTable UCurveTable
---@param RowName string
---@param InXY number
---@param OutResult EEvaluateCurveTableResult
---@param OutXY number
---@param ContextString string
function UDataTableFunctionLibrary:EvaluateCurveTableRow(CurveTable, RowName, InXY, OutResult, OutXY, ContextString) end

---@param Table UDataTable
---@param OutRowNames ULuaArrayHelper<string>
function UDataTableFunctionLibrary:GetDataTableRowNames(Table, OutRowNames) end

---Get a Row from a DataTable given a RowName
---@param Table UDataTable
---@param RowName string
---@param OutRow FTableRowBase
---@return boolean
function UDataTableFunctionLibrary:GetDataTableRowFromName(Table, RowName, OutRow) end
