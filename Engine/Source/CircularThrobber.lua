---@meta

---A throbber widget that orients images in a spinning circle. * No Children * Spinner Progress
---@class UCircularThrobber: UWidget
---@field NumberOfPieces number @How many pieces there are
---@field Period number @The amount of time for a full circle (in seconds)
---@field Radius number @The radius of the circle. If the throbber is a child of Canvas Panel, the 'Size to Content' option must be enabled in order to set Radius.
---@field Image FSlateBrush
---@field bEnableRadius boolean
local UCircularThrobber = {}

---Sets how many pieces there are.
---@param InNumberOfPieces number
function UCircularThrobber:SetNumberOfPieces(InNumberOfPieces) end

---Sets the amount of time for a full circle (in seconds).
---@param InPeriod number
function UCircularThrobber:SetPeriod(InPeriod) end

---Sets the radius of the circle.
---@param InRadius number
function UCircularThrobber:SetRadius(InRadius) end
