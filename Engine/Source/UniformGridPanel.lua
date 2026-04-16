---@meta

---A panel that evenly divides up available space between all of its children.
---@class UUniformGridPanel: UPanelWidget
---@field SlotPadding FMargin @Padding given to each slot
---@field MinDesiredSlotWidth number @The minimum desired width of the slots
---@field MinDesiredSlotHeight number @The minimum desired height of the slots
local UUniformGridPanel = {}

---@param InSlotPadding FMargin
function UUniformGridPanel:SetSlotPadding(InSlotPadding) end

---@param InMinDesiredSlotWidth number
function UUniformGridPanel:SetMinDesiredSlotWidth(InMinDesiredSlotWidth) end

---@param InMinDesiredSlotHeight number
function UUniformGridPanel:SetMinDesiredSlotHeight(InMinDesiredSlotHeight) end
