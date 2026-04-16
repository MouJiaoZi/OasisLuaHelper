---@meta

---@class UAICrossRegionComponent: UActorComponent
---@field CrossRegionTriggerDistSquare number
---@field ReceiveCrossRegionCoolDown number
local UAICrossRegionComponent = {}

---@param Char ACharacter
---@param bNToF boolean
function UAICrossRegionComponent:ReceiveAICrossRegion(Char, bNToF) end
