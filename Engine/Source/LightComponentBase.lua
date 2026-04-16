---@meta

---@class ULightComponentBase: USceneComponent
---@field LightGuid FGuid
---@field Brightness_DEPRECATED number
---@field Intensity number
---@field LightColor FColor
---@field RequiredDeviceLevel number
---@field IndirectLightingIntensity number
---@field VolumetricScatteringIntensity number
local ULightComponentBase = {}

---@param bNewValue boolean
function ULightComponentBase:SetCastShadows(bNewValue) end

---@return FLinearColor
function ULightComponentBase:GetLightColor() end

---@param bNewValue boolean
function ULightComponentBase:SetCastVolumetricShadow(bNewValue) end
