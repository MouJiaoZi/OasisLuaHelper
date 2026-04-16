---@meta

---@class AEMPZoneActor: AActivityBaseActor
---@field ZoneDuraTime number
---@field ZoneState EEMPZoneState
---@field IsInEnd boolean
---@field CustomRadius number
---@field EMPIndex number
local AEMPZoneActor = {}

---@return number
function AEMPZoneActor:GetEMPZoneRadius() end

---@param R number
function AEMPZoneActor:SetEMPZoneRadius(R) end

---@param InLoc FVector
---@return boolean
function AEMPZoneActor:CheckIsInZone(InLoc) end

---@param InWorldObject UObject
---@param InLoc FVector
---@return boolean
function AEMPZoneActor:CheckIsInAllEMPZone(InWorldObject, InLoc) end

---@param NewZoneState EEMPZoneState
function AEMPZoneActor:ChangeEMPZoneState(NewZoneState) end

---@param NewZoneState EEMPZoneState
function AEMPZoneActor:OnServerZoneStateChange(NewZoneState) end

function AEMPZoneActor:OnRep_ZoneState() end

---@param InZoneState EEMPZoneState
function AEMPZoneActor:OnClientZoneStateChange(InZoneState) end
