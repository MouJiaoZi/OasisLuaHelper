---@meta

---@class ASTExtraFlyingVehicle: ASTExtraVehicleBase, ISTExtraInputInterface
---@field BasedMovement any @Info about our current movement base (object we are standing on).
---@field NetworkPredictionInterface INetworkPredictionInterface
local ASTExtraFlyingVehicle = {}

---@param rate number
function ASTExtraFlyingVehicle:MoveForward(rate) end

---@param rate number
function ASTExtraFlyingVehicle:MoveRight(rate) end

---@param rate number
function ASTExtraFlyingVehicle:MoveUp(rate) end
