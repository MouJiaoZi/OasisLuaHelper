---@meta

---@class ASTExtraAircraftVehicleBase: ASTExtraVehicleBase
---@field LeftRightMinInput number
---@field bIsContactedWater boolean
local ASTExtraAircraftVehicleBase = {}

---@param isFreeMode boolean
function ASTExtraAircraftVehicleBase:SendToServerChangeCameraMode(isFreeMode) end

---@param isFreeMode boolean
function ASTExtraAircraftVehicleBase:SendToAllChangeCameraMode(isFreeMode) end

---@return FVector
function ASTExtraAircraftVehicleBase:GetRotationInputDir() end

function ASTExtraAircraftVehicleBase:OnContactedWater() end
