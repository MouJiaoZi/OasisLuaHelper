---@meta

---@class UGSListener_EnterVehicle: USTNewbieGuideSuccessListenerBase
---@field VehicleType ESTExtraVehicleType
---@field CheckIsEnterByJoystick boolean
local UGSListener_EnterVehicle = {}

---@param InVehicle ASTExtraVehicleBase
function UGSListener_EnterVehicle:ReceiveEnterVehicle(InVehicle) end
