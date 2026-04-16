---@meta

---@class ESlateGesture
---@field None number
---@field Scroll number
---@field Magnify number
---@field Swipe number
---@field Rotate number
---@field LongPress number
ESlateGesture = {}


---@class UKismetInputLibrary: UBlueprintFunctionLibrary
local UKismetInputLibrary = {}

---Calibrate the tilt for the input device
function UKismetInputLibrary:CalibrateTilt() end

---Test if the input key are equal (A == B)
---@param A FKey
---@param B FKey
---@return boolean
function UKismetInputLibrary:EqualEqual_KeyKey(A, B) end

---Test if the input chords are equal (A == B)
---@param A FInputChord
---@param B FInputChord
---@return boolean
function UKismetInputLibrary:EqualEqual_InputChordInputChord(A, B) end

---@param Key FKey
---@return boolean
function UKismetInputLibrary:Key_IsModifierKey(Key) end

---@param Key FKey
---@return boolean
function UKismetInputLibrary:Key_IsGamepadKey(Key) end

---@param Key FKey
---@return boolean
function UKismetInputLibrary:Key_IsMouseButton(Key) end

---@param Key FKey
---@return boolean
function UKismetInputLibrary:Key_IsKeyboardKey(Key) end

---@param Key FKey
---@return boolean
function UKismetInputLibrary:Key_IsFloatAxis(Key) end

---@param Key FKey
---@return boolean
function UKismetInputLibrary:Key_IsVectorAxis(Key) end

---@param Key FKey
---@return string
function UKismetInputLibrary:Key_GetDisplayName(Key) end

---Returns whether or not this character is an auto-repeated keystroke
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsRepeat(Input) end

---Returns true if either shift key was down when this event occurred
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsShiftDown(Input) end

---Returns true if left shift key was down when this event occurred
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsLeftShiftDown(Input) end

---Returns true if right shift key was down when this event occurred
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsRightShiftDown(Input) end

---Returns true if either control key was down when this event occurred
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsControlDown(Input) end

---Returns true if left control key was down when this event occurred
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsLeftControlDown(Input) end

---Returns true if left control key was down when this event occurred
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsRightControlDown(Input) end

---Returns true if either alt key was down when this event occurred
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsAltDown(Input) end

---Returns true if left alt key was down when this event occurred
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsLeftAltDown(Input) end

---Returns true if right alt key was down when this event occurred
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsRightAltDown(Input) end

---Returns true if either command key was down when this event occurred
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsCommandDown(Input) end

---Returns true if left command key was down when this event occurred
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsLeftCommandDown(Input) end

---Returns true if right command key was down when this event occurred
---@param Input FInputEvent
---@return boolean
function UKismetInputLibrary:InputEvent_IsRightCommandDown(Input) end

---@param KeyName string
---@return FKey
function UKismetInputLibrary:GetKeyByName(KeyName) end

---Returns the key for this event.
---@param Input FKeyEvent
---@return FKey
function UKismetInputLibrary:GetKey(Input) end

---@param Input FKeyEvent
---@return number
function UKismetInputLibrary:GetUserIndex(Input) end

---@param Input FAnalogInputEvent
---@return number
function UKismetInputLibrary:GetAnalogValue(Input) end

---@param Input FPointerEvent
---@return FVector2D
function UKismetInputLibrary:PointerEvent_GetScreenSpacePosition(Input) end

---@param Input FPointerEvent
---@return FVector2D
function UKismetInputLibrary:PointerEvent_GetLastScreenSpacePosition(Input) end

---@param Input FPointerEvent
---@return FVector2D
function UKismetInputLibrary:PointerEvent_GetCursorDelta(Input) end

---Mouse buttons that are currently pressed
---@param Input FPointerEvent
---@param MouseButton FKey
---@return boolean
function UKismetInputLibrary:PointerEvent_IsMouseButtonDown(Input, MouseButton) end

---Mouse button that caused this event to be raised (possibly EB_None)
---@param Input FPointerEvent
---@return FKey
function UKismetInputLibrary:PointerEvent_GetEffectingButton(Input) end

---How much did the mouse wheel turn since the last mouse event
---@param Input FPointerEvent
---@return number
function UKismetInputLibrary:PointerEvent_GetWheelDelta(Input) end

---@param Input FPointerEvent
---@return number
function UKismetInputLibrary:PointerEvent_GetUserIndex(Input) end

---@param Input FPointerEvent
---@return number
function UKismetInputLibrary:PointerEvent_GetPointerIndex(Input) end

---@param Input FPointerEvent
---@return number
function UKismetInputLibrary:PointerEvent_GetTouchpadIndex(Input) end

---@param Input FPointerEvent
---@return boolean
function UKismetInputLibrary:PointerEvent_IsTouchEvent(Input) end

---@param Input FPointerEvent
---@return number
function UKismetInputLibrary:PointerEvent_TouchForce(Input) end

---@param Input FPointerEvent
---@return ESlateGesture
function UKismetInputLibrary:PointerEvent_GetGestureType(Input) end

---@param Input FPointerEvent
---@return FVector2D
function UKismetInputLibrary:PointerEvent_GetGestureDelta(Input) end
