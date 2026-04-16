---@meta

---Struct that is used to store an array of asset import data as an asset registry tag
---@class FAssetImportInfo
FAssetImportInfo = {}


---@class FOnImportDataChanged : ULuaMulticastDelegate
FOnImportDataChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FAssetImportInfo, Param2: UAssetImportData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnImportDataChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FAssetImportInfo
---@param Param2 UAssetImportData
function FOnImportDataChanged:Broadcast(Param1, Param2) end


---@class UAssetImportData: UObject
local UAssetImportData = {}
