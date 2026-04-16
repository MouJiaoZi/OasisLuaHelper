---@meta

---@class ABigAirShipActor: AActivityBaseActor
---@field RelevantZDiff number
---@field bDestroyWhenAirshipOnGround boolean
local ABigAirShipActor = {}

function ABigAirShipActor:DisableWhenNoHuman() end

---@param Cpnt UPrimitiveComponent
function ABigAirShipActor:TriggerComponentToCheckOverlap(Cpnt) end

function ABigAirShipActor:UnPossessAction() end

function ABigAirShipActor:OnShipPreLeave() end
