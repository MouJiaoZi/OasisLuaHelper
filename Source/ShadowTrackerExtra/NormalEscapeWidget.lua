---@meta

---@class UNormalEscapeWidget: UUAEUserWidget
---@field LastRepAlertItemListCount number
---@field ItemPoolList ULuaArrayHelper<UUIDuplicatedItemPool>
---@field ItemPoolListUpdateInterval number
local UNormalEscapeWidget = {}

function UNormalEscapeWidget:BindAlertListUpdateDelegate() end

---@param Counts number
function UNormalEscapeWidget:OnAlertItemListUpdated(Counts) end

---@param IconID number
---@param AlertID number
---@param AlertItemIndex number
---@param Location FVector
---@param Status EMarkStatus
function UNormalEscapeWidget:AddMapItemByAlertItemList(IconID, AlertID, AlertItemIndex, Location, Status) end

function UNormalEscapeWidget:UpdateUsedItemInItemPoolList() end
