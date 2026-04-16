---@meta

---@class USpringArmModifierTPP: USpringArmModifier
---@field AdditionalSocketOffetZMax number
---@field AdditionalSocketOffetZPitch FVector2D
---@field PoseStateNameMap ULuaMapHelper<ESTEPoseState, string>
---@field CurrentAdditionalSocketOffetZ number
local USpringArmModifierTPP = {}

---@param CameraDataType ECameraDataType
---@param IsEnable boolean
function USpringArmModifierTPP:SetCameraDataEnable(CameraDataType, IsEnable) end

---@param CameraDataType ECameraDataType
---@param IsEnable boolean
---@return boolean
function USpringArmModifierTPP:SetCameraDataEnableBlueprint(CameraDataType, IsEnable) end

---@param DeltaTime number
function USpringArmModifierTPP:UpdateCurCameraData(DeltaTime) end

---@param DeltaTime number
---@return boolean
function USpringArmModifierTPP:UpdateCurCameraDataTPPBlueprint(DeltaTime) end
