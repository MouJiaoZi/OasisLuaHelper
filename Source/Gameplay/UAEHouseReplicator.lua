---@meta

---@class AUAEHouseReplicator: AUAENetActor
---@field WindowLoadDistanceSquared number
---@field WindowLoadDistanceSquaredOnVeryLowDevice number
---@field WindowLoadDistanceSquaredOnServer number
---@field WindowList ULuaArrayHelper<FUAEWindowRepData>
---@field WindowComponents ULuaMapHelper<number, UUAEWindowComponent>
local AUAEHouseReplicator = {}

---net multicast notification from server to client
---@param InRepData FUAEWindowRepData
function AUAEHouseReplicator:BroadcastWindowRepDataUpdated(InRepData) end

function AUAEHouseReplicator:OnRep_WindowList() end
