---@meta

---@class EDynaConsoleVariableNetExecutionPolicy
---@field Both number
---@field ServerOnly number
---@field ClientOnly number
EDynaConsoleVariableNetExecutionPolicy = {}


---@class FDynaConsoleVariableInfo
---@field ConsoleVariableName string
---@field ConsoleVariableValue string
---@field Policy EDynaConsoleVariableNetExecutionPolicy
FDynaConsoleVariableInfo = {}


---@class FDynaConsoleVariableSectionInfo
---@field Description string
---@field Import string
---@field Imports ULuaArrayHelper<string>
---@field Infos ULuaArrayHelper<FDynaConsoleVariableInfo>
FDynaConsoleVariableSectionInfo = {}


---Replication helper struct, will be replicated from server to client Hold a bunch of DynaConsoleVariables, aggregate functions of net compression, revert, and reentrant activation
---@class FDynaConsoleVariableRep
---@field DynaConsoleVariableBunch_Group ULuaArrayHelper<FDynaConsoleVariableInfo>
---@field DynaConsoleVariableBunch_BigWorld ULuaArrayHelper<FDynaConsoleVariableInfo>
---@field DynaConsoleVariableBunch_Permanent ULuaArrayHelper<FDynaConsoleVariableInfo>
FDynaConsoleVariableRep = {}


---@class FClientClearDynaCVarDelegate : ULuaSingleDelegate
FClientClearDynaCVarDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClientClearDynaCVarDelegate:Bind(Callback, Obj) end

---执行委托
function FClientClearDynaCVarDelegate:Execute() end
