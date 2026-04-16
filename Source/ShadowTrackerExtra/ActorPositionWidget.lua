---@meta

---@class UActorPositionWidget: UUAEUserWidget
---@field Limit FVector4
---@field UIOffset FVector2D
---@field LocOffset FVector
---@field BNeedShowArrow boolean
---@field AlphaBegin number
---@field AlphaEnd number
---@field AlphaStep number
---@field AlphaBeginDistance number
---@field AlphaEndDistance number
---@field ScaleBegin number
---@field ScaleEnd number
---@field ScaleStep number
---@field ScaleBeginDistance number
---@field ScaleEndDistance number
---@field MaxShowDistance number
---@field TargetDistance number
local UActorPositionWidget = {}

---@param Visible boolean
function UActorPositionWidget:SetCurrentWidgetVisible(Visible) end

---@param InActor AActor
function UActorPositionWidget:AttachToActor(InActor) end

---@param InActor AActor
function UActorPositionWidget:DetachFromActor(InActor) end

---@param Visible boolean
---@param Angle number
function UActorPositionWidget:ShowArrowAngle(Visible, Angle) end

function UActorPositionWidget:PostAttachmentChanged() end

---@param Texture UTexture2D
function UActorPositionWidget:SetActorImage(Texture) end
