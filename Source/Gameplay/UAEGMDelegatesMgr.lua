---@meta

---@class FInitGameModeProbeDelegate : ULuaSingleDelegate
FInitGameModeProbeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInitGameModeProbeDelegate:Bind(Callback, Obj) end

---执行委托
function FInitGameModeProbeDelegate:Execute() end


---@class FUninitGameModeProbeDelegate : ULuaSingleDelegate
FUninitGameModeProbeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUninitGameModeProbeDelegate:Bind(Callback, Obj) end

---执行委托
function FUninitGameModeProbeDelegate:Execute() end


---@class UUAEGMDelegatesMgr: UBlueprintFunctionLibrary
---@field InitGameModeProbeDelegate FInitGameModeProbeDelegate
---@field UninitGameModeProbeDelegate FUninitGameModeProbeDelegate
local UUAEGMDelegatesMgr = {}

function UUAEGMDelegatesMgr:ReleaseInstance() end
