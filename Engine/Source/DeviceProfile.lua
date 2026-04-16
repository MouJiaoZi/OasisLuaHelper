---@meta

---@class FOnCVarsUpdated : ULuaSingleDelegate
FOnCVarsUpdated = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCVarsUpdated:Bind(Callback, Obj) end

---执行委托
function FOnCVarsUpdated:Execute() end


---@class UDeviceProfile: UTextureLODSettings
---@field DeviceType string @The type of this profile, I.e. IOS, Windows, PS4 etc
---@field BaseProfileName string @The name of the parent profile of this object
---@field CVars ULuaArrayHelper<string> @The collection of CVars which is set from this profile
local UDeviceProfile = {}
