---@meta

---@class EControllerAnalogStick
---@field CAS_LeftStick number
---@field CAS_RightStick number
---@field CAS_MAX number
EControllerAnalogStick = {}


---Delegate signature for action events.
---@class FInputActionHandlerSignature : ULuaSingleDelegate
FInputActionHandlerSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputActionHandlerSignature:Bind(Callback, Obj) end

---执行委托
function FInputActionHandlerSignature:Execute() end


---@class FInputActionHandlerWithKeySignature : ULuaSingleDelegate
FInputActionHandlerWithKeySignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FKey) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputActionHandlerWithKeySignature:Bind(Callback, Obj) end

---执行委托
---@param Param1 FKey
function FInputActionHandlerWithKeySignature:Execute(Param1) end


---@class FInputActionHandlerDynamicSignature : ULuaSingleDelegate
FInputActionHandlerDynamicSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, Key: FKey) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputActionHandlerDynamicSignature:Bind(Callback, Obj) end

---执行委托
---@param Key FKey
function FInputActionHandlerDynamicSignature:Execute(Key) end


---Delegate signature for touch handlers.
---@class FInputTouchHandlerSignature : ULuaSingleDelegate
FInputTouchHandlerSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ETouchIndex, Param2: FVector, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputTouchHandlerSignature:Bind(Callback, Obj) end

---执行委托
---@param Param1 ETouchIndex
---@param Param2 FVector
---@param Param3 number
function FInputTouchHandlerSignature:Execute(Param1, Param2, Param3) end


---@class FInputTouchHandlerDynamicSignature : ULuaSingleDelegate
FInputTouchHandlerDynamicSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, FingerIndex: ETouchIndex, Location: FVector, force: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputTouchHandlerDynamicSignature:Bind(Callback, Obj) end

---执行委托
---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function FInputTouchHandlerDynamicSignature:Execute(FingerIndex, Location, force) end


---Delegate signature for axis handlers. a joystick will report total displacement from the center, etc.  It is up to the handler to interpret this data as it sees fit, i.e. treating joystick values as a rate of change would require scaling by frametime to get an absolute delta.
---@class FInputAxisHandlerSignature : ULuaSingleDelegate
FInputAxisHandlerSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputAxisHandlerSignature:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FInputAxisHandlerSignature:Execute(Param1) end


---@class FInputAxisHandlerDynamicSignature : ULuaSingleDelegate
FInputAxisHandlerDynamicSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, AxisValue: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputAxisHandlerDynamicSignature:Bind(Callback, Obj) end

---执行委托
---@param AxisValue number
function FInputAxisHandlerDynamicSignature:Execute(AxisValue) end


---Delegate signature for vector axis handlers.
---@class FInputVectorAxisHandlerSignature : ULuaSingleDelegate
FInputVectorAxisHandlerSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FVector) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputVectorAxisHandlerSignature:Bind(Callback, Obj) end

---执行委托
---@param Param1 FVector
function FInputVectorAxisHandlerSignature:Execute(Param1) end


---@class FInputVectorAxisHandlerDynamicSignature : ULuaSingleDelegate
FInputVectorAxisHandlerDynamicSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, AxisValue: FVector) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputVectorAxisHandlerDynamicSignature:Bind(Callback, Obj) end

---执行委托
---@param AxisValue FVector
function FInputVectorAxisHandlerDynamicSignature:Execute(AxisValue) end


---Delegate signature for gesture handlers. so the handler need not scale by frametime.
---@class FInputGestureHandlerSignature : ULuaSingleDelegate
FInputGestureHandlerSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputGestureHandlerSignature:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FInputGestureHandlerSignature:Execute(Param1) end


---@class FInputGestureHandlerDynamicSignature : ULuaSingleDelegate
FInputGestureHandlerDynamicSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, Value: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInputGestureHandlerDynamicSignature:Bind(Callback, Obj) end

---执行委托
---@param Value number
function FInputGestureHandlerDynamicSignature:Execute(Value) end


---Implement an Actor component for input bindings. An Input Component is a transient component that enables an Actor to bind various forms of input events to delegate functions. Input components are processed from a stack managed by the PlayerController and processed by the PlayerInput. Each binding can consume the input event preventing other components on the input stack from processing the input.
---@class UInputComponent: UActorComponent
local UInputComponent = {}

---Returns true if the given key/button is pressed on the input of the controller (if present)
---@param Key FKey
---@return boolean
function UInputComponent:IsControllerKeyDown(Key) end

---Returns true if the given key/button was up last frame and down this frame.
---@param Key FKey
---@return boolean
function UInputComponent:WasControllerKeyJustPressed(Key) end

---Returns true if the given key/button was down last frame and up this frame.
---@param Key FKey
---@return boolean
function UInputComponent:WasControllerKeyJustReleased(Key) end

---Returns the analog value for the given key/button.  If analog isn't supported, returns 1 for down and 0 for up.
---@param Key FKey
---@return number
function UInputComponent:GetControllerAnalogKeyState(Key) end

---Returns the vector value for the given key/button.
---@param Key FKey
---@return FVector
function UInputComponent:GetControllerVectorKeyState(Key) end

---Returns the location of a touch, and if it's held down
---@param FingerIndex number
---@param LocationX number
---@param LocationY number
---@param bIsCurrentlyPressed boolean
function UInputComponent:GetTouchState(FingerIndex, LocationX, LocationY, bIsCurrentlyPressed) end

---Returns how long the given key/button has been down.  Returns 0 if it's up or it just went down this frame.
---@param Key FKey
---@return number
function UInputComponent:GetControllerKeyTimeDown(Key) end

---Retrieves how far the mouse moved this frame.
---@param DeltaX number
---@param DeltaY number
function UInputComponent:GetControllerMouseDelta(DeltaX, DeltaY) end

---Retrieves the X and Y displacement of the given analog stick.  For WhickStick, 0 = left, 1 = right.
---@param WhichStick EControllerAnalogStick
---@param StickX number
---@param StickY number
function UInputComponent:GetControllerAnalogStickState(WhichStick, StickX, StickY) end
