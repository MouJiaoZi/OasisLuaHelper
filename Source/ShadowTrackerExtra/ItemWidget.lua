---@meta

---@class UItemWidget: UUAEUserWidget, IItemWidgetBuildInterface
---@field mItem IItemInterface
local UItemWidget = {}

function UItemWidget:OnItemClicked() end

function UItemWidget:ReceiveInitItemWidget() end

---@param Item IItemInterface
---@param ForceUpdate boolean
function UItemWidget:SetItem(Item, ForceUpdate) end

function UItemWidget:GetItem() end
