---@meta

---@class FApplicationActivationStateChangedDelegate : ULuaMulticastDelegate
FApplicationActivationStateChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsActive: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FApplicationActivationStateChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsActive boolean
function FApplicationActivationStateChangedDelegate:Broadcast(bIsActive) end


---@class AInputActionActor: AActor
---@field OnApplicationActivateStateChangedDelegate FApplicationActivationStateChangedDelegate
local AInputActionActor = {}

---@param Widget UUAEUserWidget
---@return boolean
function AInputActionActor:IsIgnoringWidgetCreateBinding(Widget) end

---@param Widget UUAEUserWidget
function AInputActionActor:OnUAEUserWidgetCreated(Widget) end

---@param Widget UUAEUserWidget
function AInputActionActor:OnUAEUserWidgetCreated_ScriptCustom(Widget) end

function AInputActionActor:GetAllGISButtons() end

---@param OnWidget UWidget
function AInputActionActor:MoveMouseCursorToWidget(OnWidget) end
