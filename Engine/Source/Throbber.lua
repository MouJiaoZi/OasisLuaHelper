---@meta

---A Throbber widget that shows several zooming circles in a row.
---@class UThrobber: UWidget
---@field NumberOfPieces number @How many pieces there are
---@field bAnimateHorizontally boolean @Should the pieces animate horizontally?
---@field bAnimateVertically boolean @Should the pieces animate vertically?
---@field bAnimateOpacity boolean @Should the pieces animate their opacity?
---@field Image FSlateBrush
local UThrobber = {}

---Sets how many pieces there are
---@param InNumberOfPieces number
function UThrobber:SetNumberOfPieces(InNumberOfPieces) end

---Sets whether the pieces animate horizontally.
---@param bInAnimateHorizontally boolean
function UThrobber:SetAnimateHorizontally(bInAnimateHorizontally) end

---Sets whether the pieces animate vertically.
---@param bInAnimateVertically boolean
function UThrobber:SetAnimateVertically(bInAnimateVertically) end

---Sets whether the pieces animate their opacity.
---@param bInAnimateOpacity boolean
function UThrobber:SetAnimateOpacity(bInAnimateOpacity) end
