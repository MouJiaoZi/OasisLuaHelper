---@meta

---@class UQuickSignMarkWidget: UUAEUserWidget
---@field IsSelfMark boolean
---@field MaxAlpha number
---@field MinAlpha number
---@field Limit FVector4
---@field Limit_PC FVector4
---@field CornerRadius number
---@field UIOffset FVector2D
---@field ActiveCenterRect FVector4
---@field DistAppendix string
---@field IsInActiveCenter boolean
---@field ProfiledScreenValue number
---@field IsUsingNewMarkStyle boolean
---@field LongMarkLineHeight number
---@field ShortMarkLineHeight number
---@field DistanceThreshold number
---@field IsOutScreen boolean
---@field EdgeOffset_Top FVector2D
---@field EdgeOffset_Down FVector2D
---@field EdgeOffset_Left FVector2D
---@field EdgeOffset_Right FVector2D
---@field DistanceShowCoolDownTime number
local UQuickSignMarkWidget = {}

---@param Loc FVector
---@param InAttachedActor AActor
---@param InAttachOffset FVector
function UQuickSignMarkWidget:SetWorldPos(Loc, InAttachedActor, InAttachOffset) end

function UQuickSignMarkWidget:ResetStatus() end

---@return FVector
function UQuickSignMarkWidget:GetLocation() end

---@param CenterOffset FVector2D
function UQuickSignMarkWidget:OnCenterOffsetChange(CenterOffset) end

---@param NewAlpha number
function UQuickSignMarkWidget:OnWidgetAlphaChange(NewAlpha) end

function UQuickSignMarkWidget:HandleOnlyAim() end

function UQuickSignMarkWidget:HandleAimFire() end

function UQuickSignMarkWidget:HandleNonAim() end

---@param TargetDistance number
function UQuickSignMarkWidget:SetMarkLineHeight(TargetDistance) end

function UQuickSignMarkWidget:CheckPawnState() end

---@param InPosition FVector2D
---@param WorldLocation FVector
---@return FVector2D
function UQuickSignMarkWidget:DealWithEdge(InPosition, WorldLocation) end

---@param WorldLocation FVector
---@param ViewPortXYRatio number
---@param LocationXYRatio number
---@param LocationToCenter FVector2D
---@return boolean
function UQuickSignMarkWidget:GetLocationXYRatio(WorldLocation, ViewPortXYRatio, LocationXYRatio, LocationToCenter) end
