---@meta

---@class FAnchorData
---@field Offsets FMargin @Offset.
---@field Anchors FAnchors @Anchors.
---@field Alignment FVector2D @Alignment is the pivot point of the widget.  Starting in the upper left at (0,0), ending in the lower right at (1,1).  Moving the alignment point allows you to move the origin of the widget.
FAnchorData = {}


---@class UCanvasPanelSlot: UPanelSlot
---@field LayoutData FAnchorData @The anchoring information for the slot
---@field bAutoSize boolean @When AutoSize is true we use the widget's desired size
---@field ZOrder number @The order priority this widget is rendered in.  Higher values are rendered last (and so they will appear to be on top).
---@field bAntiAdaptation boolean
local UCanvasPanelSlot = {}

---Sets the layout data of the slot
---@param InLayoutData FAnchorData
function UCanvasPanelSlot:SetLayout(InLayoutData) end

---Gets the layout data of the slot
---@return FAnchorData
function UCanvasPanelSlot:GetLayout() end

---Sets the position of the slot
---@param InPosition FVector2D
function UCanvasPanelSlot:SetPosition(InPosition) end

---Gets the position of the slot
---@return FVector2D
function UCanvasPanelSlot:GetPosition() end

---Sets the size of the slot
---@param InSize FVector2D
function UCanvasPanelSlot:SetSize(InSize) end

---Gets the size of the slot
---@return FVector2D
function UCanvasPanelSlot:GetSize() end

---Sets the offset data of the slot, which could be position and size, or margins depending on the anchor points
---@param InOffset FMargin
function UCanvasPanelSlot:SetOffsets(InOffset) end

---Gets the offset data of the slot, which could be position and size, or margins depending on the anchor points
---@return FMargin
function UCanvasPanelSlot:GetOffsets() end

---Sets the anchors on the slot
---@param InAnchors FAnchors
function UCanvasPanelSlot:SetAnchors(InAnchors) end

---Gets the anchors on the slot
---@return FAnchors
function UCanvasPanelSlot:GetAnchors() end

---Sets the alignment on the slot
---@param InAlignment FVector2D
function UCanvasPanelSlot:SetAlignment(InAlignment) end

---Gets the alignment on the slot
---@return FVector2D
function UCanvasPanelSlot:GetAlignment() end

---Sets if the slot to be auto-sized
---@param InbAutoSize boolean
function UCanvasPanelSlot:SetAutoSize(InbAutoSize) end

---Gets if the slot to be auto-sized
---@return boolean
function UCanvasPanelSlot:GetAutoSize() end

---Sets the z-order on the slot
---@param InZOrder number
function UCanvasPanelSlot:SetZOrder(InZOrder) end

---Gets the z-order on the slot
---@return number
function UCanvasPanelSlot:GetZOrder() end

---Sets the bAntiAdaptation on the slot
---@param InbAntiAdaptation boolean
function UCanvasPanelSlot:SetAntiAdaptation(InbAntiAdaptation) end

---Gets the bAntiAdaptation on the slot
---@return boolean
function UCanvasPanelSlot:GetAntiAdaptation() end

---Sets the anchors on the slot
---@param InMinimumAnchors FVector2D
function UCanvasPanelSlot:SetMinimum(InMinimumAnchors) end

---Sets the anchors on the slot
---@param InMaximumAnchors FVector2D
function UCanvasPanelSlot:SetMaximum(InMaximumAnchors) end

function UCanvasPanelSlot:OnAntiAdaptationOffsetsChange() end
