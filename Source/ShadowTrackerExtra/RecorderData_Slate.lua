---@meta

---@class ESlateEventType
---@field HandleMouseButtonDownEvent number
---@field HandleMouseButtonUpEvent number
---@field HandleMouseMoveEvent number
ESlateEventType = {}


---@class FInputSlateEvent
---@field CurrentFrameIndex number
---@field CurrentDelta number
---@field EventType ESlateEventType
---@field PointerIndex number
---@field UserIndex number
---@field TouchForce number
---@field PositionInScreen FVector2D
---@field LastPositionInScreen FVector2D
FInputSlateEvent = {}


---@class URecorderData_Slate: URecorderDataInputBase
---@field InitialState FInputInitialState
---@field SlateEvent ULuaArrayHelper<FInputSlateEvent>
---@field RecorderScreenSize FVector2D
local URecorderData_Slate = {}
