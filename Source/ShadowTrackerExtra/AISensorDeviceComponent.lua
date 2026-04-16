---@meta

---@class UAISensorDeviceComponent: UAIAbilityComponent
---@field DetectorDeterctedDis number
local UAISensorDeviceComponent = {}

---@param Detector AActor
---@param DetectedActor AActor
function UAISensorDeviceComponent:OnDetectorDeterctedActor(Detector, DetectedActor) end
