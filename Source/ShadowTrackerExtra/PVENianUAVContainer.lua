---@meta

---@class FPVENianUAVFloatingElement
FPVENianUAVFloatingElement = {}


---@class APVENianUAVContainer: AUAERegionActor
---@field AmplitudeRange FVector2D
---@field FrequencyRange FVector2D
---@field FloatingDirection FVector
---@field FloatingElements_Client ULuaArrayHelper<FPVENianUAVFloatingElement>
local APVENianUAVContainer = {}

---@param TargetActor AActor
function APVENianUAVContainer:AddFloatingElementClient(TargetActor) end

---@param TargetActor AActor
function APVENianUAVContainer:RemoveFloatingElementClient(TargetActor) end
