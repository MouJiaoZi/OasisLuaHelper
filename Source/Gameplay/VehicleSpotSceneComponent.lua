---@meta

---@class UVehicleSpotSceneComponent: USpotSceneComponent, IRegionObjectInterface
---@field SpotGroupType ESpotGroupType
---@field RegionType ERegionType
---@field bHasGenerateSpot boolean
---@field bRandomRotation boolean
---@field RandomRotationMin number
---@field RandomRotationMax number
---@field SpotRandomInfo FVehicleGenerateRandomInfo
local UVehicleSpotSceneComponent = {}

---@return boolean
function UVehicleSpotSceneComponent:GenerateSpot() end

---@param RandomInfo FVehicleGenerateRandomInfo
function UVehicleSpotSceneComponent:SetSpotRandomInfo(RandomInfo) end
