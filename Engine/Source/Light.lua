---@meta

---@class ALight: AActor
---@field bEnabled number @replicated copy of LightComponent's bEnabled property
local ALight = {}

---Replication Notification Callbacks
function ALight:OnRep_bEnabled() end

---@param bSetEnabled boolean
function ALight:SetEnabled(bSetEnabled) end

---@return boolean
function ALight:IsEnabled() end

function ALight:ToggleEnabled() end

---@param NewBrightness number
function ALight:SetBrightness(NewBrightness) end

---@return number
function ALight:GetBrightness() end

---@param NewLightColor FLinearColor
function ALight:SetLightColor(NewLightColor) end

---@return FLinearColor
function ALight:GetLightColor() end

---@param NewLightFunctionMaterial UMaterialInterface
function ALight:SetLightFunctionMaterial(NewLightFunctionMaterial) end

---@param NewLightFunctionScale FVector
function ALight:SetLightFunctionScale(NewLightFunctionScale) end

---@param NewLightFunctionFadeDistance number
function ALight:SetLightFunctionFadeDistance(NewLightFunctionFadeDistance) end

---@param bNewValue boolean
function ALight:SetCastShadows(bNewValue) end

---@param bNewValue boolean
function ALight:SetAffectTranslucentLighting(bNewValue) end
