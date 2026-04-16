---@meta

---@class ASTPopkartAccelerateArea: ASTPopkartAreaTrigger
---@field AcceleratePercent number
---@field MaxSpeed number
---@field MinSpeed number
---@field UseServerNotify boolean
---@field AccelerateDirection FVector
local ASTPopkartAccelerateArea = {}

---@param Vehicle ASTExtraWheeledVehicle
function ASTPopkartAccelerateArea:AccelerateVehicle(Vehicle) end

---@param Vehicle ASTExtraWheeledVehicle
function ASTPopkartAccelerateArea:OnAccelerateVehicle(Vehicle) end
