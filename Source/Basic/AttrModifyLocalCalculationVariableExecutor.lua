---@meta

---@class FLocalCalculationBindingKey
---@field BindingClass UObject
FLocalCalculationBindingKey = {}


---@class FGetValidLocalModifiersDelegate : ULuaSingleDelegate
FGetValidLocalModifiersDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Context: FGameMagnitudeContext) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetValidLocalModifiersDelegate:Bind(Callback, Obj) end

---执行委托
---@param Context FGameMagnitudeContext
function FGetValidLocalModifiersDelegate:Execute(Context) end


---@class ULocalCalculationVariableExecutor: UObject
---@field GetValidLocalModifiersDelegate FGetValidLocalModifiersDelegate
---@field BindingKey FLocalCalculationBindingKey
local ULocalCalculationVariableExecutor = {}

---@param Context FGameMagnitudeContext
---@param RetModifiers ULuaArrayHelper<FAttrModifyItemSimple>
---@return boolean
function ULocalCalculationVariableExecutor:GetValidModifiers(Context, RetModifiers) end


---@class ULocalCalculationVariableExecutorByInterface: ULocalCalculationVariableExecutor
---@field BoundObj UObject
local ULocalCalculationVariableExecutorByInterface = {}
