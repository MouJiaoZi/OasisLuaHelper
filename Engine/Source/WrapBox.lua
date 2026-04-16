---@meta

---Arranges widgets left-to-right.  When the widgets exceed the Width it will place widgets on the next line. * Many Children * Flows * Wraps
---@class UWrapBox: UPanelWidget
---@field InnerSlotPadding FVector2D @The inner slot padding goes between slots sharing borders
---@field WrapWidth number @When this width is exceeded, elements will start appearing on the next line.
---@field bExplicitWrapWidth boolean @Use explicit wrap width whenever possible. It greatly simplifies layout calculations and reduces likelihood of "wiggling UI"
local UWrapBox = {}

---Sets the inner slot padding goes between slots sharing borders
---@param InPadding FVector2D
function UWrapBox:SetInnerSlotPadding(InPadding) end
