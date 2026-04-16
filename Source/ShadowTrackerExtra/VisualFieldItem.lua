---@meta

---@class UVisualFieldItem: UUAEUserWidget
---@field SameLayerColor FLinearColor
---@field DiffLayerColor FLinearColor
local UVisualFieldItem = {}

---@param ItemMetaInfo FVisualFieldMetaInfo
---@param ViewerLayerID number
function UVisualFieldItem:SetItemData(ItemMetaInfo, ViewerLayerID) end
