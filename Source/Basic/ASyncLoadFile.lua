---@meta

---@class FOnFileLoadCompleted : ULuaSingleDelegate
FOnFileLoadCompleted = {}

---绑定回调函数
---@param Callback fun(Obj: any, Loader: UASyncLoadFileLoader, InParam: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFileLoadCompleted:Bind(Callback, Obj) end

---执行委托
---@param Loader UASyncLoadFileLoader
---@param InParam number
function FOnFileLoadCompleted:Execute(Loader, InParam) end


---@class UASyncLoadFileLoader: UObject
---@field ReadBufferData ULuaArrayHelper<number>
---@field CacheFilePath string
---@field ReadBufferString string
local UASyncLoadFileLoader = {}

---@param FilePath string
function UASyncLoadFileLoader:LoadFileAsync(FilePath) end

---@param InResult boolean
function UASyncLoadFileLoader:OnLoadCompleted(InResult) end

---@param FilePath string
---@return boolean
function UASyncLoadFileLoader:LoadFileToByteFromDisk(FilePath) end
