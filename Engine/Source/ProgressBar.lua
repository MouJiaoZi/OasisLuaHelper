---@meta

---The progress bar widget is a simple bar that fills up that can be restyled to fit any number of uses. * No Children
---@class UProgressBar: UWidget
---@field WidgetStyle FProgressBarStyle @The progress bar style
---@field Percent number @Used to determine the fill position of the progress bar ranging 0..1
---@field BarFillType EProgressBarFillType @Defines if this progress bar fills Left to right or right to left
---@field bIsMarquee boolean
---@field BorderPadding FVector2D
---@field PercentDelegate FGetFloat @A bindable delegate to allow logic to drive the text of the widget
---@field FillColorAndOpacity FLinearColor @Fill Color and Opacity
---@field FillColorAndOpacityDelegate FGetLinearColor
---@field OnPercentChangeDelegate FPercentChangeDelegate
local UProgressBar = {}

---Sets the current value of the ProgressBar.
---@param InPercent number
function UProgressBar:SetPercent(InPercent) end

---@param InPercent number
function UProgressBar:SetOppositePercent(InPercent) end

---Sets the fill color of the progress bar.
---@param InColor FLinearColor
function UProgressBar:SetFillColorAndOpacity(InColor) end

---Sets the progress bar to show as a marquee.
---@param InbIsMarquee boolean
function UProgressBar:SetIsMarquee(InbIsMarquee) end

---@return number
function UProgressBar:GetPercent() end

---@return number
function UProgressBar:GetOppositePercent() end
