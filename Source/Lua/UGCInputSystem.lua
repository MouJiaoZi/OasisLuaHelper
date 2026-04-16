---@meta

---输入系统接口库
---@class UGCInputSystem
UGCInputSystem = {}

---绑定指定InputTag事件的回调函数
---生效范围：客户端
---@param BindingOwner UObject @绑定输入事件的对象
---@param InputTag UGCGameplayTag|string|FGameplayTag @由Tag标识的输入事件
---@param TriggerEvent ETriggerEvent @输入事件类型
---@param CallbackFunction fun(InputValue:float, ElapsedTime:float, TriggeredTime:float, InputTag:FGameplayTag) @事件触发回调函数
---@return int32 @输入事件绑定的索引，-1时为绑定失败
function UGCInputSystem.BindInputMapping(BindingOwner, InputTag, TriggerEvent, CallbackFunction) end

---解除与目标Object所有相关的输入事件绑定
---生效范围：客户端
---@param BindingOwner UObject @绑定输入事件的对象
function UGCInputSystem.RemoveBindingToObject(BindingOwner) end

---解除指定索引的输入事件绑定
---生效范围：客户端
---@param WorldContext UObject @世界上下文对象
---@param InputBindingHandle int32 @输入事件绑定的索引
function UGCInputSystem.RemoveBinding(WorldContext, InputBindingHandle) end

---通过脚本手动触发某个InputTag
---生效范围：客户端
---@param WorldContext UObject @世界上下文对象
---@param InputTag UGCGameplayTag|string|FGameplayTag @由Tag标识的输入事件
---@param Value float @输入事件的值
function UGCInputSystem.InjectInputMapping(WorldContext, InputTag, Value) end

---设置某个输入事件绑定是否消耗输入，消耗输入后，后续的其他输入事件绑定将不被触发
---生效范围：客户端
---@param WorldContext UObject @世界上下文对象
---@param InputBindingHandle int32 @输入事件绑定的索引
---@param bConsumeInput bool @是否消耗Input
function UGCInputSystem.SetBindingConsumeInput(WorldContext, InputBindingHandle, bConsumeInput) end

---获取指定InputTag对应Input的当前值
---生效范围：客户端
---@param WorldContext UObject @世界上下文对象
---@param InputTag UGCGameplayTag|string|FGameplayTag @由Tag标识的输入事件
---@return float @Input当前值，未找到时返回0
function UGCInputSystem.GetInputValue(WorldContext, InputTag) end