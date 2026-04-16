---@meta

---@class UVehicleRelevancyUtils: UObject
local UVehicleRelevancyUtils = {}

---@param PlayerKey number
---@param Context UWorld
function UVehicleRelevancyUtils:GetTeammatesSeatedVehicle(PlayerKey, Context) end

---@param PC ASTExtraPlayerController
---@param TheVehicle ASTExtraVehicleBase
---@return boolean
function UVehicleRelevancyUtils:IsPlayerOnVehicle(PC, TheVehicle) end

---@param PC ASTExtraPlayerController
function UVehicleRelevancyUtils:UpdateRelevancy(PC) end
