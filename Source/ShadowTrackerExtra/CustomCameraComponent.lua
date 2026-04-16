---@meta

---这个类只是为了缓动FOV
---@class UCustomCameraComponent: UCameraComponent, IObjectPoolInterface
---@field CamShakeBoneName string
---@field CamShakeFlagAfter string
---@field TargetViewLerpInfo FMinimalViewInfo
local UCustomCameraComponent = {}

---@param Fov number
---@param InterpSpeed number
function UCustomCameraComponent:InterpToTargetFov(Fov, InterpSpeed) end

---@param LerpWeight number
---@param ViewLerpInfo FMinimalViewInfo
function UCustomCameraComponent:SetTargetViewLerp(LerpWeight, ViewLerpInfo) end

function UCustomCameraComponent:ResetTargetViewLerp() end

---@param DeltaTime number
---@param DesiredView FMinimalViewInfo
function UCustomCameraComponent:UpdateCamShakeOffset(DeltaTime, DesiredView) end

---@param DeltaTime number
---@return boolean
function UCustomCameraComponent:InterpFov(DeltaTime) end
