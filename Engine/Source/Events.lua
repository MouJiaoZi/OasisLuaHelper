---@meta

---Context for focus change
---@class EFocusCause
---@field Mouse number @Focus was changed because of a mouse action.
---@field Navigation number @Focus was changed in response to a navigation, such as the arrow keys, TAB key, controller DPad, ...
---@field SetDirectly number @Focus was changed because someone asked the application to change it.
---@field Cleared number @Focus was explicitly cleared via the escape key or other similar action.
---@field OtherWidgetLostFocus number @Focus was changed because another widget lost focus, and focus moved to a new widget.
---@field WindowActivate number @Focus was set in response to the owning window being activated.
EFocusCause = {}


---FFocusEvent is used when notifying widgets about keyboard focus changes It is passed to event handlers dealing with keyboard focus
---@class FFocusEvent
FFocusEvent = {}


---Base class for all mouse and keyevents.
---@class FInputEvent
FInputEvent = {}


---FKeyEvent describes a key action (keyboard/controller key/button pressed or released.) It is passed to event handlers dealing with key input.
---@class FKeyEvent
FKeyEvent = {}


---FAnalogEvent describes a analog key value. It is passed to event handlers dealing with analog keys.
---@class FAnalogInputEvent
FAnalogInputEvent = {}


---FCharacterEvent describes a keyboard action where the utf-16 code is given.  Used for OnKeyChar messages
---@class FCharacterEvent
FCharacterEvent = {}


---FPointerEvent describes a mouse or touch action (e.g. Press, Release, Move, etc). It is passed to event handlers dealing with pointer-based input.
---@class FPointerEvent
FPointerEvent = {}


---FMotionEvent describes a touch pad action (press, move, lift) It is passed to event handlers dealing with touch input.
---@class FMotionEvent
FMotionEvent = {}


---FNavigationEvent describes a navigation action (Left, Right, Up, Down) It is passed to event handlers dealing with navigation.
---@class FNavigationEvent
FNavigationEvent = {}
