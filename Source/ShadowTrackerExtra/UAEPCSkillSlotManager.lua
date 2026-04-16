---@meta

---@class FPCUAECustomSkillSlot
FPCUAECustomSkillSlot = {}


---@class FPCPanelSlotList
---@field SlotList ULuaArrayHelper<UPCPanelSlot>
FPCPanelSlotList = {}


---@class FPCSkillSlotDelta
---@field XOrY boolean
---@field Start number
---@field DeltaValue number
FPCSkillSlotDelta = {}


---@class UPCPanelSlot: UObject
---@field LastDraw boolean
---@field SlotType number
---@field SlotOrder number
---@field SlotManager UUAEPCSkillSlotManager
local UPCPanelSlot = {}


---@class UUAEPCSkillSlotManager: UObject
---@field PCPanelSlotDelta ULuaMapHelper<number, FPCSkillSlotDelta>
---@field PCPanelSlotMap ULuaMapHelper<number, FPCPanelSlotList>
local UUAEPCSkillSlotManager = {}

function UUAEPCSkillSlotManager:InitPCSkillSlotManager() end

---@param Widget UWidget
---@param ListType number
---@param SlotType number
---@param SlotOrder number
function UUAEPCSkillSlotManager:OnPairWidgetPanelRebuild(Widget, ListType, SlotType, SlotOrder) end

---@param ListType number
---@param SlotList FPCPanelSlotList
---@param Delta FPCSkillSlotDelta
function UUAEPCSkillSlotManager:DoLayoutByListType(ListType, SlotList, Delta) end
