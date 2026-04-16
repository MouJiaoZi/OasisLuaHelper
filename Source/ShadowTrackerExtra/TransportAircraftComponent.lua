---@meta

---@class UTransportAircraftComponent: UTimerRegistComponent
---@field InStringPath string
---@field DropLoc FVector
---@field InSoftObjectPath UFlightPlanGenerator
---@field InSoftClassPath UFlightPlanGenerator
---@field bSyncLoad boolean
local UTransportAircraftComponent = {}

function UTransportAircraftComponent:ExecuteFlightPlan() end

---@param NewStringPath string
---@param NewDropLoc FVector
function UTransportAircraftComponent:ChangeProperty(NewStringPath, NewDropLoc) end
