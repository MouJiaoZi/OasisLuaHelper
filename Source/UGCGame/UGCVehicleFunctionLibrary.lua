---@meta

---@class UUGCVehicleFunctionLibrary: UBlueprintFunctionLibrary
local UUGCVehicleFunctionLibrary = {}

---@param PC ASTExtraPlayerController
---@param Vehicle ASTExtraVehicleBase
---@param SeatIndex number
---@param IsForce boolean
---@return boolean
function UUGCVehicleFunctionLibrary:EnterVehicle(PC, Vehicle, SeatIndex, IsForce) end

---@param PC ASTExtraPlayerController
---@param IsForce boolean
---@return boolean
function UUGCVehicleFunctionLibrary:LeaveVehicle(PC, IsForce) end
