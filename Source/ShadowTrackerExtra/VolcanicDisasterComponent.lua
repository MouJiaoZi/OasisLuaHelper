---@meta

---@class FDisasterProbability
---@field FlightPercentage number
---@field Probability number
FDisasterProbability = {}


---@class UVolcanicDisasterComponent: UGameModeBaseComponent
---@field bIsPurelyShow boolean
---@field CustomFlightStartLoc FVector
---@field CustomFlightEndLoc FVector
---@field DisasterProbabilities ULuaArrayHelper<FDisasterProbability>
---@field DelayPlaneCrashTime number
---@field VolcanicDstPlaneClassPath string
local UVolcanicDisasterComponent = {}

function UVolcanicDisasterComponent:SetCustomRoute() end

function UVolcanicDisasterComponent:CalcDisasterLocation() end
