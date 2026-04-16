---@meta

---@class EWidgetUIBlueprintType
---@field MainUI number
---@field WidgetUI number
---@field MainUI_Child number
---@field WidgetLayout number
EWidgetUIBlueprintType = {}


---@class FMainUILayoutData
---@field WidgetVisibility ESlateVisibility
FMainUILayoutData = {}


---The user widget UI
---@class UUserWidgetUI: UUserWidget
---@field LayoutDataList ULuaMapHelper<number, FMainUILayoutData> @Widget Main UI.
---@field WidgetType number
---@field WidgetUIBlueprintType EWidgetUIBlueprintType
local UUserWidgetUI = {}

function UUserWidgetUI:ReceiveApply() end

function UUserWidgetUI:ReceiveRevert() end

function UUserWidgetUI:ReceiveCleanup() end
