---@meta

---A panel for defining a region of the UI that should allow users to drag the window on desktop platforms.
---@class UWindowTitleBarArea: UContentWidget
---@field bDoubleClickTogglesFullscreen boolean @Should double clicking the title bar area toggle fullscreen instead of maximizing the window.
local UWindowTitleBarArea = {}

---@param InPadding FMargin
function UWindowTitleBarArea:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UWindowTitleBarArea:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UWindowTitleBarArea:SetVerticalAlignment(InVerticalAlignment) end
