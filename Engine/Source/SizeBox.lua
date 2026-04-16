---@meta

---A widget that allows you to specify the size it reports to have and desire.  Not all widgets report a desired size that you actually desire.  Wrapping them in a SizeBox lets you have the Size Box force them to be a particular size. * Single Child * Fixed Size
---@class USizeBox: UContentWidget
---@field bOverride_WidthOverride number
---@field bOverride_HeightOverride number
---@field bOverride_MinDesiredWidth number
---@field bOverride_MinDesiredHeight number
---@field bOverride_MaxDesiredWidth number
---@field bOverride_MaxDesiredHeight number
---@field bOverride_MaxAspectRatio number
---@field WidthOverride number @When specified, ignore the content's desired size and report the WidthOverride as the Box's desired width.
---@field HeightOverride number @When specified, ignore the content's desired size and report the HeightOverride as the Box's desired height.
---@field MinDesiredWidth number @When specified, will report the MinDesiredWidth if larger than the content's desired width.
---@field MinDesiredHeight number @When specified, will report the MinDesiredHeight if larger than the content's desired height.
---@field MaxDesiredWidth number @When specified, will report the MaxDesiredWidth if smaller than the content's desired width.
---@field MaxDesiredHeight number @When specified, will report the MaxDesiredHeight if smaller than the content's desired height.
---@field MaxAspectRatio number
local USizeBox = {}

---When specified, ignore the content's desired size and report the WidthOverride as the Box's desired width.
---@param InWidthOverride number
function USizeBox:SetWidthOverride(InWidthOverride) end

function USizeBox:ClearWidthOverride() end

---When specified, ignore the content's desired size and report the HeightOverride as the Box's desired height.
---@param InHeightOverride number
function USizeBox:SetHeightOverride(InHeightOverride) end

function USizeBox:ClearHeightOverride() end

---When specified, will report the MinDesiredWidth if larger than the content's desired width.
---@param InMinDesiredWidth number
function USizeBox:SetMinDesiredWidth(InMinDesiredWidth) end

function USizeBox:ClearMinDesiredWidth() end

---When specified, will report the MinDesiredHeight if larger than the content's desired height.
---@param InMinDesiredHeight number
function USizeBox:SetMinDesiredHeight(InMinDesiredHeight) end

function USizeBox:ClearMinDesiredHeight() end

---When specified, will report the MaxDesiredWidth if smaller than the content's desired width.
---@param InMaxDesiredWidth number
function USizeBox:SetMaxDesiredWidth(InMaxDesiredWidth) end

function USizeBox:ClearMaxDesiredWidth() end

---When specified, will report the MaxDesiredHeight if smaller than the content's desired height.
---@param InMaxDesiredHeight number
function USizeBox:SetMaxDesiredHeight(InMaxDesiredHeight) end

function USizeBox:ClearMaxDesiredHeight() end

---@param InMaxAspectRatio number
function USizeBox:SetMaxAspectRatio(InMaxAspectRatio) end

function USizeBox:ClearMaxAspectRatio() end
