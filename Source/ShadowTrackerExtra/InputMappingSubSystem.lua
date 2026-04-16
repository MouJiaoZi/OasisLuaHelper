---@meta

---@class FInputActionMappingDelegate : ULuaSingleDelegate
FInputActionMappingDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: EInputEvent) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputActionMappingDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 EInputEvent
function FInputActionMappingDelegate:Execute(Param1, Param2) end


---@class FOnInputActionTagTriggered : ULuaSingleDelegate
FOnInputActionTagTriggered = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnInputActionTagTriggered:Bind(Callback, Obj) end

---执行委托
function FOnInputActionTagTriggered:Execute() end


---@class FAxisMappingDelegate : ULuaSingleDelegate
FAxisMappingDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAxisMappingDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 number
function FAxisMappingDelegate:Execute(Param1, Param2) end


---@class FInputMappingHandlerSignature : ULuaSingleDelegate
FInputMappingHandlerSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputMappingHandlerSignature:Bind(Callback, Obj) end

---执行委托
function FInputMappingHandlerSignature:Execute() end


---@class FInputMappingHandlerValueSignature : ULuaSingleDelegate
FInputMappingHandlerValueSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FInputMappingValue) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputMappingHandlerValueSignature:Bind(Callback, Obj) end

---执行委托
---@param Param1 FInputMappingValue
function FInputMappingHandlerValueSignature:Execute(Param1) end


---@class FInputMappingHandlerInstanceSignature : ULuaSingleDelegate
FInputMappingHandlerInstanceSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FInputMappingInstance) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputMappingHandlerInstanceSignature:Bind(Callback, Obj) end

---执行委托
---@param Param1 FInputMappingInstance
function FInputMappingHandlerInstanceSignature:Execute(Param1) end


---@class FInputMappingHandlerDynamicSignature : ULuaSingleDelegate
FInputMappingHandlerDynamicSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, InputValue: number, ElapsedTime: number, TriggeredTime: number, SourceInputTag: FGameplayTag) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputMappingHandlerDynamicSignature:Bind(Callback, Obj) end

---执行委托
---@param InputValue number
---@param ElapsedTime number
---@param TriggeredTime number
---@param SourceInputTag FGameplayTag
function FInputMappingHandlerDynamicSignature:Execute(InputValue, ElapsedTime, TriggeredTime, SourceInputTag) end


---@class UInputMappingSubSystem: UWorldSubsystem
---@field InputActionTagMapping FInputActionTagMapping
---@field MappingInstanceData ULuaMapHelper<FGameplayTag, FInputMappingInstance>
---@field InputsInjectedThisTick ULuaMapHelper<FGameplayTag, FInjectedInputArray>
---@field LastInjectedActions ULuaSetHelper<FGameplayTag>
local UInputMappingSubSystem = {}

---@param MappingTag FGameplayTag
---@param TriggerEvent ETriggerEvent
---@param Delegate FInputMappingHandlerDynamicSignature
---@param WorldContext UObject
---@return number
function UInputMappingSubSystem:BindInputMapping_Static(MappingTag, TriggerEvent, Delegate, WorldContext) end

---@param MappingTag FGameplayTag
---@param TriggerEvent ETriggerEvent
---@param Delegate FInputMappingHandlerDynamicSignature
---@param BindObject UObject
---@return number
function UInputMappingSubSystem:BindInputMapping_Lua(MappingTag, TriggerEvent, Delegate, BindObject) end

---@param Object UObject
function UInputMappingSubSystem:RemoveBindingToObject_Static(Object) end

---@param InputBindingHandle number
---@param WorldContext UObject
function UInputMappingSubSystem:RemoveBinding_Static(InputBindingHandle, WorldContext) end

---@param MappingTag FGameplayTag
---@param Value number
---@param Modifiers ULuaArrayHelper<UInputMappingModifier>
---@param Triggers ULuaArrayHelper<UInputMappingTrigger>
---@param WorldContext UObject
function UInputMappingSubSystem:InjectInputMapping_Static(MappingTag, Value, Modifiers, Triggers, WorldContext) end

---@param WorldContext UObject
---@param InputBindingHandle number
---@param bConsumeInput boolean
function UInputMappingSubSystem:SetBindingConsumeInput_Static(WorldContext, InputBindingHandle, bConsumeInput) end

---@param InputTag FGameplayTag
---@param WorldContext UObject
---@return number
function UInputMappingSubSystem:GetInputValue_Static(InputTag, WorldContext) end

---@param ActionTag FGameplayTag
---@param KeyEvent EInputEvent
---@param Delegate FOnInputActionTagTriggered
---@param WorldContext UObject
---@return number
function UInputMappingSubSystem:BindInputAction_Static(ActionTag, KeyEvent, Delegate, WorldContext) end

---@param ActionTag FGameplayTag
---@param KeyEvent EInputEvent
---@param WorldContext UObject
function UInputMappingSubSystem:TriggerInputAction_Static(ActionTag, KeyEvent, WorldContext) end
