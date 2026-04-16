---@meta

---@class FSlotMoveInfo
---@field ToPanelName string
---@field MountAnchor string
---@field MountMargin string
---@field MountAlignment string
---@field NewZOrder number
---@field NewChildIndex number
---@field bNewSizeToContent boolean
---@field FromPanelName string
---@field RevertAnchor string
---@field RevertMargin string
---@field RevertAlignment string
---@field RevertZOrder number
---@field bRevertSizeToContent boolean
---@field RevertChildIndex number
---@field MovedUserWidgets ULuaSetHelper<UUserWidget>
---@field ReplacedWidgetCacheMap ULuaMapHelper<UUserWidget, UWidget>
FSlotMoveInfo = {}


---@class FSlotMoveInfoMap
---@field SlotMoveInfos ULuaMapHelper<string, FSlotMoveInfo>
FSlotMoveInfoMap = {}


---@class UDynamicSlotMoveComponent: UActorComponent
---@field SlotMoveInfosMap ULuaMapHelper<string, FSlotMoveInfoMap>
---@field bIsApply boolean
local UDynamicSlotMoveComponent = {}

---@param UserWidget UUserWidget
---@param MovedWidget UWidget
function UDynamicSlotMoveComponent:ApplySlotMove(UserWidget, MovedWidget) end

---@param UserWidget UUserWidget
---@param MovedWidget UWidget
function UDynamicSlotMoveComponent:RevertSlotMove(UserWidget, MovedWidget) end

---@param CreatedWidget UUAEUserWidget
function UDynamicSlotMoveComponent:OnUAEUserWidgetCreated(CreatedWidget) end

---@param DestructWidget UUAEUserWidget
function UDynamicSlotMoveComponent:OnUAEUserWidgetDestruct(DestructWidget) end

function UDynamicSlotMoveComponent:ApplyAllSlotMove() end

function UDynamicSlotMoveComponent:RevertAllSlotMove() end

---@return boolean
function UDynamicSlotMoveComponent:GetIsApply() end

---@param InIsApply boolean
function UDynamicSlotMoveComponent:SetIsApply(InIsApply) end
