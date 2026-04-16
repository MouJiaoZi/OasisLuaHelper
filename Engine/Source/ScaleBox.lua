---@meta

---Allows you to place content with a desired size and have it scale to meet the constraints placed on this box's alloted area.  If you needed to have a background image scale to fill an area but not become distorted with different aspect ratios, or if you need to auto fit some text to an area, this is the control for you. * Single Child * Aspect Ratio
---@class UScaleBox: UContentWidget
---@field Stretch EStretch @The stretching rule to apply when content is stretched
---@field StretchDirection EStretchDirection @Controls in what direction content can be scaled
---@field UserSpecifiedScale number @Optional scale that can be specified by the User. Used only for UserSpecified stretching.
---@field UserSpecifiedScaleBias number @#if UMG_SCALE_BIAS
---@field IgnoreInheritedScale boolean @Optional bool to ignore the inherited scale. Applies inverse scaling to counteract parents before applying the local scale operation.
---@field UsePcParams boolean
---@field StretchPc EStretch
---@field StretchDirectionPc EStretchDirection
---@field UserSpecifiedScalePc number
---@field UserSpecifiedScaleBiasPc number
---@field IgnoreInheritedScalePc boolean
---@field bSingleLayoutPass boolean @Only perform a single layout pass, if you do this, it can save a considerable amount of time, however, some things like text may not look correct.  You may also see the UI judder between frames.  This generally is caused by not explicitly sizing the widget, and instead allowing it to layout based on desired size along which won't work in Single Layout Pass mode.
---@field bFroceSlateLayoutCachingCalcSize boolean
---@field bForceUseLastUnPrepassChildSize boolean
local UScaleBox = {}

---@param InStretch EStretch
function UScaleBox:SetStretch(InStretch) end

---@param InStretchDirection EStretchDirection
function UScaleBox:SetStretchDirection(InStretchDirection) end

---@param InUserSpecifiedScale number
function UScaleBox:SetUserSpecifiedScale(InUserSpecifiedScale) end

---@param bInIgnoreInheritedScale boolean
function UScaleBox:SetIgnoreInheritedScale(bInIgnoreInheritedScale) end

---@param InUserSpecifiedScaleBias number
function UScaleBox:SetUserSpecifiedScaleBias(InUserSpecifiedScaleBias) end

---@param InValue number
function UScaleBox:SetPcParamController(InValue) end

function UScaleBox:OnUIRectOffsetChange() end
