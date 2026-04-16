---@meta

---A stack box widget is a layout panel allowing child widgets to be automatically laid out vertically or horizontally. * Many Children * Flows Vertical or Horizontal
---@class UStackBox: UPanelWidget
---@field Orientation EOrientation @The orientation of the stack box.
local UStackBox = {}

---Get the orientation of the stack box.
---@return EOrientation
function UStackBox:GetOrientation() end

---Set the orientation of the stack box. The existing elements will be rearranged.
---@param InType EOrientation
function UStackBox:SetOrientation(InType) end

---Replace the widget at the given index it with a different widget.
---@param Index number
---@param Content UWidget
---@return boolean
function UStackBox:ReplaceStackBoxChildAt(Index, Content) end
