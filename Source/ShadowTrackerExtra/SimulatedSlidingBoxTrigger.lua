---@meta

---@class ASimulatedSlidingBoxTrigger: AActor
---@field bServerTrigger boolean
---@field bClientTrigger boolean
---@field BoxOffset FVector
---@field bDrawDebug boolean
local ASimulatedSlidingBoxTrigger = {}

---@param Vehicle ASTExtraVehicleBase
function ASimulatedSlidingBoxTrigger:OnEnterArea(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
function ASimulatedSlidingBoxTrigger:OnLeaveArea(Vehicle) end
