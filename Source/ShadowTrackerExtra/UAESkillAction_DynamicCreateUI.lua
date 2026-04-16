---@meta

---@class FDynamicCreateUIDataInstanceStruct
FDynamicCreateUIDataInstanceStruct = {}


---@class FUIWidgetConfig
---@field WidgetClassPath UUAEUserWidget
---@field ZOrder number
---@field MarginData FMargin
---@field AnchorsData FAnchors
---@field Position FVector2D
---@field MountName string
---@field MountOuterName string
---@field bMountUIRoot boolean
FUIWidgetConfig = {}


---@class UUAESkillAction_DynamicCreateUI: UUAESkillAction
---@field UIConfig FUIWidgetConfig
---@field LastTime number
---@field ResetUIMsg string
---@field CloseUIMsg string
---@field bRemoveUIAfterDisabled boolean
---@field bExcludeSpectator boolean
---@field bDestoryUIAfterDisabled boolean
---@field bPhaseEndRemove boolean
local UUAESkillAction_DynamicCreateUI = {}
