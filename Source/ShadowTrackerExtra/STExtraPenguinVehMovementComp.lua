---@meta

---@class USTExtraPenguinVehMovementComp: USTExtraAircraftMovementComponent
---@field EnableTargetForwardInput boolean
---@field TargetRawThrottleInput number
---@field EnableTargetSteerInput boolean
---@field TargetRawSteerInput number
---@field bEnableNoFuelBalance boolean
---@field bEnableEngineOffSlowFall boolean
---@field EngineOffSlowFallGravityScale number
local USTExtraPenguinVehMovementComp = {}

function USTExtraPenguinVehMovementComp:CustomizeInputBeforeUploadToServer() end

---@param DeltaTime number
function USTExtraPenguinVehMovementComp:ApplyNoFuelBalance(DeltaTime) end

---@param DeltaTime number
function USTExtraPenguinVehMovementComp:ApplyEngineOffSlowFall(DeltaTime) end
