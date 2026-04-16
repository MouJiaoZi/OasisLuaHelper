---@meta

---@class ASTPopkartJumpArea: ASTPopkartAreaTrigger
---@field AcceleratePercent number
---@field UpSpeed number
---@field MaxSpeed number
---@field MinSpeed number
---@field JumpDirection FVector
---@field UseServerNotify boolean
local ASTPopkartJumpArea = {}

---@param Vehicle ASTExtraWheeledVehicle
function ASTPopkartJumpArea:AccelerateVehicle(Vehicle) end

---@param Vehicle ASTExtraWheeledVehicle
function ASTPopkartJumpArea:OnVehicleJump(Vehicle) end
