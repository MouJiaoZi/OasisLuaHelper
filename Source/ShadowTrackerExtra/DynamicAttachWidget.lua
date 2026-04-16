---@meta

---@class FButtonInputActionBindingsWithName
---@field ActionName string
---@field Bindings FButtonInputActionBindings
FButtonInputActionBindingsWithName = {}


---@class FAfterAttachToOutter : ULuaSingleDelegate
FAfterAttachToOutter = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAfterAttachToOutter:Bind(Callback, Obj) end

---执行委托
function FAfterAttachToOutter:Execute() end


---@class UDynamicAttachWidget: UUAEUserWidget
---@field AfterAttachToOutter FAfterAttachToOutter
---@field InputPriority number
---@field MyOutter UUAEUserWidget
---@field InputActionBindingMap ULuaMapHelper<number, FButtonInputActionBindingsWithName>
local UDynamicAttachWidget = {}

---@return string
function UDynamicAttachWidget:GetCurActionName() end

---@param InName string
function UDynamicAttachWidget:SetCurActionName(InName) end

---@param InputEvent EInputEvent
---@param FuncName string
---@param bTriggeredEvenNotRendered boolean
---@param bTriggeredWhenPCVisible boolean
---@param bPlaySoundFx boolean
---@param ActionName string
function UDynamicAttachWidget:HandleInputActionWithActionName(InputEvent, FuncName, bTriggeredEvenNotRendered, bTriggeredWhenPCVisible, bPlaySoundFx, ActionName) end

function UDynamicAttachWidget:OnAfterPaint() end
