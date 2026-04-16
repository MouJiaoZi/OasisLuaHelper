---@meta

---@class USpringArmModifierFPP: USpringArmModifier
local USpringArmModifierFPP = {}

---@param CameraDataType EFPPCameraDataType
---@param IsEnable boolean
function USpringArmModifierFPP:SetFPPCameraDataEnable(CameraDataType, IsEnable) end

---@param CameraDataType EFPPCameraDataType
---@param IsEnable boolean
---@return boolean
function USpringArmModifierFPP:SetFPPCameraDataEnableBlueprint(CameraDataType, IsEnable) end
