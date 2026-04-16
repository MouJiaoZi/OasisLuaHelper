---@meta

---快捷标记进阶样式UI
---@class UAdvancedQuickSignMarkWidget: UQuickSignMarkWidget
---@field bEnableTrans boolean
---@field bCanTrans boolean
---@field TransInnerMargins FVector2D
---@field TransOuterMagins FVector2D
---@field TransAnimStartTime number
---@field TransAnimEndTime number
---@field LastTransProgress number
---@field TopIconPosition FVector2D
---@field BottomPointPosition FVector2D
---@field LineHeightInLevel number
---@field TopIconLimitAdjust FVector4
---@field BottomPointLimitAdjust FVector4
---@field bBottomPointOutScreen boolean
---@field bTopIconOutScreen boolean
local UAdvancedQuickSignMarkWidget = {}

---@param InTransAnimation UWidgetAnimation
function UAdvancedQuickSignMarkWidget:InitTransAnimation(InTransAnimation) end

---@return number
function UAdvancedQuickSignMarkWidget:GetCurTransProgress() end

function UAdvancedQuickSignMarkWidget:HandleTransition() end

function UAdvancedQuickSignMarkWidget:UpdateLineHeight() end

function UAdvancedQuickSignMarkWidget:UpdateDistanceText() end

function UAdvancedQuickSignMarkWidget:HandleEdgeSnapping() end

function UAdvancedQuickSignMarkWidget:OnOutScreenChanged() end

function UAdvancedQuickSignMarkWidget:OnEnterActiveCenter() end

function UAdvancedQuickSignMarkWidget:OnExitActiveCenter() end
