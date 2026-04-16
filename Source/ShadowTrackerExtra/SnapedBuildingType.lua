---@meta

---@class ESnapedBuildingType
---@field None number
---@field SNAP_Left number
---@field SNAP_Middle number
---@field SNAP_Right number
---@field Left_Right number
ESnapedBuildingType = {}


---@class ESnapedHiddenType
---@field SNAP_NoHidden number
---@field SNAP_HiddenRight number
---@field SNAP_HiddenLeftAndRight number
---@field SNAP_HiddenLeft number
ESnapedHiddenType = {}


---@class FSnapedBuildingInfo
---@field CurrentType ESnapedBuildingType
FSnapedBuildingInfo = {}


---@class ISnapedBuildingInterface
ISnapedBuildingInterface = {}

---@param Type ESnapedBuildingType
---@return FTransform
function ISnapedBuildingInterface:GetBuildingTransform(Type) end

function ISnapedBuildingInterface:GetSnapedIgnoreActors() end

---@param BuildingInfo FSnapedBuildingInfo
function ISnapedBuildingInterface:HandleAddSnapedActor(BuildingInfo) end

---@param PC AController
---@return boolean
function ISnapedBuildingInterface:SuccessSpawnedActor(PC) end

---@return number
function ISnapedBuildingInterface:GetCurrentSnapedCount() end

function ISnapedBuildingInterface:GetIgnoredActors() end

---@param Type ESnapedBuildingType
---@return boolean
function ISnapedBuildingInterface:CheckCanBuild(Type) end
