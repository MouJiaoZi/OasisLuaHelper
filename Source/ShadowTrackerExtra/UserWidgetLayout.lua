---@meta

---@class EWidgetLayoutSlotType
---@field MainUISlot_High number
---@field MainUISlot_Low number
---@field MainUISlot_Middle number
EWidgetLayoutSlotType = {}


---@class FCustomUserWidgetLayout
---@field CustomUserWidgetName string
---@field UISlotSelector FUISlotSelector
FCustomUserWidgetLayout = {}


---The user widget Layout
---@class UUserWidgetLayout: UUserWidgetUI
---@field CustomUserWidgetLayoutList ULuaArrayHelper<FCustomUserWidgetLayout>
---@field CustomUserWidgetLayout ULuaMapHelper<string, EWidgetLayoutSlotType>
---@field CustomUserWidgetList ULuaMapHelper<string, UUserWidget>
local UUserWidgetLayout = {}
