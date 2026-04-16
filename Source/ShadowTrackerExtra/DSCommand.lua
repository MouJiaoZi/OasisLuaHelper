---@meta

---@class FOnCommandCVarsUpdated : ULuaSingleDelegate
FOnCommandCVarsUpdated = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCommandCVarsUpdated:Bind(Callback, Obj) end

---执行委托
function FOnCommandCVarsUpdated:Execute() end


---@class UDSCommand: UObject
---@field DeviceType string @The type of this Command, I.e. IOS, Windows, Android
---@field BaseName string @The name of the parent Command of this object
---@field CVars ULuaArrayHelper<string> @The collection of CVars which is set from this Command
local UDSCommand = {}
