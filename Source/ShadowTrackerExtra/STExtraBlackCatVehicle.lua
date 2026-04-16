---@meta

---@class ASTExtraBlackCatVehicle: ASTExtraWheeledVehicle
---@field BoostImpulse FVector
---@field BoostCD number
---@field BoostMinVelocity number
---@field BoostCDTimer number
local ASTExtraBlackCatVehicle = {}

function ASTExtraBlackCatVehicle:ReqServerBoostJump() end

function ASTExtraBlackCatVehicle:RspBoostJump() end

function ASTExtraBlackCatVehicle:OnBoostJump() end

function ASTExtraBlackCatVehicle:SendToServerClientInitOK() end
