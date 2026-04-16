---@meta

---@class UUNGCondition_HandlePickUp: USTNewbieGuideConditionBase
---@field PickupItemID number
---@field PickupType number
---@field PickupSubType number
---@field HasTag ULuaArrayHelper<string>
local UUNGCondition_HandlePickUp = {}

---@param inItemID number
function UUNGCondition_HandlePickUp:OnMeetTheCondition(inItemID) end
