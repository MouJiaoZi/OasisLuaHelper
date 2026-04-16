---@meta

---@class AEscapeTunnelLight: AActivityBaseActor
---@field bLightBroken boolean
---@field LightGropID number
local AEscapeTunnelLight = {}

---Force actor to be updated to clients
function AEscapeTunnelLight:ForceNetUpdate() end

---@param brokenCauser AActor
function AEscapeTunnelLight:SetLightBroken(brokenCauser) end

function AEscapeTunnelLight:OnRep_LightBroken() end

---@param isBeginPlay boolean
function AEscapeTunnelLight:BP_LightBroken(isBeginPlay) end

---@param bShouldDelayOpen boolean
function AEscapeTunnelLight:CloseLight(bShouldDelayOpen) end
