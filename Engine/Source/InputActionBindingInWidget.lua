---@meta

---@class EButtonInputActionEvent
---@field IE_Pressed number
---@field IE_Released number
---@field IE_Repeat number
---@field IE_DoubleClick number
---@field IE_Axis number
---@field IE_MAX number
EButtonInputActionEvent = {}


---@class FWidgetInputBinding
---@field HandlerFunctionName string
---@field bTriggeredEvenNotRendered boolean
---@field bTriggeredWhenPCVisible boolean
---@field bPlaySoundFx boolean
FWidgetInputBinding = {}


---@class FButtonInputActionBinding
---@field InputEvent EButtonInputActionEvent
FButtonInputActionBinding = {}


---@class FWidgetInputAxisBinding
FWidgetInputAxisBinding = {}


---@class FButtonInputActionBindings
---@field ActionMappings ULuaArrayHelper<FButtonInputActionBinding>
FButtonInputActionBindings = {}


---@class FWidgetInputAxisBindings
---@field AxisMappings ULuaArrayHelper<FWidgetInputAxisBinding>
FWidgetInputAxisBindings = {}


---@class FButtonInputActionSelector
---@field ActionName string
FButtonInputActionSelector = {}


---@class FButtonInputAxisSelector
---@field AxisName string
FButtonInputAxisSelector = {}


---@class FButtonInputActionBindingsStruct
---@field InputActionBindings ULuaMapHelper<FButtonInputActionSelector, FButtonInputActionBindings>
---@field InputAxisBindings ULuaMapHelper<FButtonInputAxisSelector, FWidgetInputAxisBindings>
FButtonInputActionBindingsStruct = {}
