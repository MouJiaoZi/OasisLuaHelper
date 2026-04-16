---@meta

---武器事件处理器基类
---@class UWeaponTriggerEventHandleBase: UWeaponLogicBaseComponent
local UWeaponTriggerEventHandleBase = {}

---@param Event EWeaponTriggerEvent
---@param EventData string
function UWeaponTriggerEventHandleBase:ProcessTriggerEvent(Event, EventData) end

---@param Event EWeaponTriggerEvent
---@param EventData string
function UWeaponTriggerEventHandleBase:ProcessTriggerEventInternal(Event, EventData) end
