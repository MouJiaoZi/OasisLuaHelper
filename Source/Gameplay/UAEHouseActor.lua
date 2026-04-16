---@meta

---@class AUAEHouseActor: AUAENetActor
---@field PreciseLocation FVector
---@field PreciseScale FVector
---@field TestCleanWindows boolean
---@field WindowHideDistanceSquared number
---@field WindowLoadDistanceSquared number
---@field WindowLoadDistanceSquaredOnVeryLowDevice number
---@field WindowLoadDistanceSquaredOnServer number
---@field bDestroyChildActor boolean
---@field WindowList ULuaArrayHelper<FUAEWindowRepData>
---@field WindowComponents ULuaMapHelper<number, UUAEWindowComponent>
---@field bEnableWindow boolean
local AUAEHouseActor = {}

---@param DestroyedActor AActor
function AUAEHouseActor:OnPawnDestroyed(DestroyedActor) end

---net multicast notification from server to client
---@param InRepData FUAEWindowRepData
function AUAEHouseActor:BroadcastWindowRepDataUpdated(InRepData) end

function AUAEHouseActor:OnRep_PreciseLocation() end

function AUAEHouseActor:OnRep_PreciseScale() end

function AUAEHouseActor:OnRep_WindowList() end

function AUAEHouseActor:ProcessWindowCreateList() end
