---@meta

---@class FTouchInputControl
---@field Brush1 FSlateBrush
---@field Brush2 FSlateBrush
---@field Center FVector2D
---@field VisualSize FVector2D
---@field ThumbSize FVector2D
---@field InteractionSize FVector2D
---@field InputScale FVector2D
---@field MainInputKey FKey
---@field AltInputKey FKey
FTouchInputControl = {}


---Defines an interface by which touch input can be controlled using any number of buttons and virtual joysticks
---@class UTouchInterface: UObject
---@field Controls ULuaArrayHelper<FTouchInputControl>
---@field ActiveOpacity number
---@field InactiveOpacity number
---@field TimeUntilDeactive number
---@field TimeUntilReset number
---@field ActivationDelay number
---@field bPreventRecenter boolean
---@field StartupDelay number
local UTouchInterface = {}
