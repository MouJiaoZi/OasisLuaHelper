---@meta

---@class FFireEventConfig
---@field EventID number
---@field RandomOccur number
---@field RandomTimeRange number
---@field EventParam number
FFireEventConfig = {}


---@class ADayToNightActor: AActor
---@field ClientSyncTime number
---@field EventConfigs ULuaArrayHelper<FFireEventConfig>
local ADayToNightActor = {}

---@param eventID number
function ADayToNightActor:TrytoFireEvent(eventID) end

---@param eventID number
---@param EventParam number
function ADayToNightActor:FireEvent(eventID, EventParam) end

---@param eventID number
---@param EventParam number
function ADayToNightActor:BP_ClientOnFireEvent(eventID, EventParam) end

---@param bOpen boolean
function ADayToNightActor:SetNightVisionOpen(bOpen) end
