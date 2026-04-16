---@meta

---@class FEffectModifierDebugReqContext
FEffectModifierDebugReqContext = {}


---@class FOnEffectModifierDebugDisplayDataRecivedDelegate : ULuaSingleDelegate
FOnEffectModifierDebugDisplayDataRecivedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, DataList: ULuaArrayHelper<FEffectModifierDebugDisplayData>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEffectModifierDebugDisplayDataRecivedDelegate:Bind(Callback, Obj) end

---执行委托
---@param DataList ULuaArrayHelper<FEffectModifierDebugDisplayData>
function FOnEffectModifierDebugDisplayDataRecivedDelegate:Execute(DataList) end


---@class FOnEffectModifierDebugOperationChangeDelegate : ULuaMulticastDelegate
FOnEffectModifierDebugOperationChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: ENetRole, Param2: EGenericAbilityOperationType, Param3: FEffectModifierDebugDisplayData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEffectModifierDebugOperationChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 ENetRole
---@param Param2 EGenericAbilityOperationType
---@param Param3 FEffectModifierDebugDisplayData
function FOnEffectModifierDebugOperationChangeDelegate:Broadcast(Param1, Param2, Param3) end


---@class UEffectModifierDebugComponent: UActorComponent
---@field RequestContextMap ULuaMapHelper<number, FEffectModifierDebugReqContext>
local UEffectModifierDebugComponent = {}

---@param bQueryServerData boolean
---@param Delegate FOnEffectModifierDebugDisplayDataRecivedDelegate
function UEffectModifierDebugComponent:QueryDebugDisplayDataAsync(bQueryServerData, Delegate) end

---@param RequestID number
function UEffectModifierDebugComponent:RequestDebugDisplayDataServer(RequestID) end

---@param DataList ULuaArrayHelper<FEffectModifierDebugDisplayData>
---@param RequestID number
function UEffectModifierDebugComponent:NotifyClientRequestData(DataList, RequestID) end

---@param OpType EGenericAbilityOperationType
---@param DebugData FEffectModifierDebugDisplayData
function UEffectModifierDebugComponent:NotifyClientEffectModifierOperation(OpType, DebugData) end
