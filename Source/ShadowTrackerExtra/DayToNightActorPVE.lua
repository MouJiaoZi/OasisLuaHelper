---@meta

---@class FPVEFireEventConfig
---@field EventID number
---@field RandomOccur number
---@field RandomTimeRange number
---@field EventParam number
FPVEFireEventConfig = {}


---@class ADayToNightActorPVE: AActor
---@field DelayCountDownWeatherTime number
---@field ClientSyncTime number
---@field EventConfigs ULuaArrayHelper<FPVEFireEventConfig>
local ADayToNightActorPVE = {}

---@return number
function ADayToNightActorPVE:GetWeatherPlayTime() end

---@param eventID number
function ADayToNightActorPVE:PVETrytoFireEvent(eventID) end

---@param eventID number
---@param EventParam number
function ADayToNightActorPVE:PVEFireEvent(eventID, EventParam) end

---@param eventID number
---@param EventParam number
function ADayToNightActorPVE:BP_PVEClientOnFireEvent(eventID, EventParam) end

function ADayToNightActorPVE:BP_PVEOnEnterNightEvent() end

function ADayToNightActorPVE:BP_PVEOnExitNightEvent() end

---@param bOpen boolean
function ADayToNightActorPVE:SetPVENightVisionOpen(bOpen) end
