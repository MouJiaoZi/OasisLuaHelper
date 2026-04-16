---@meta

---@class UGSListener_ShowVehicleRepairUI: USTNewbieGuideSuccessListenerBase
local UGSListener_ShowVehicleRepairUI = {}

---@param STPC ASTExtraPlayerController
function UGSListener_ShowVehicleRepairUI:PlayerVehicleStateChanged(STPC) end


---@class UGSListener_HideVehicleRepairUI: USTNewbieGuideSuccessListenerBase
local UGSListener_HideVehicleRepairUI = {}

---@param STPC ASTExtraPlayerController
function UGSListener_HideVehicleRepairUI:PlayerVehicleStateChanged(STPC) end
