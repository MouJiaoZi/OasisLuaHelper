---@meta

---@class ULightComponentBase: public
---@field Temperature number
---@field MaxDrawDistance number
---@field MaxDistanceFadeRange number
---@field ShadowMapChannel_DEPRECATED number
---@field MinRoughness number
---@field SpecularScale number
---@field ShadowResolutionScale number
---@field LightPriority number
---@field ShadowBias number
---@field ShadowSharpen number
---@field ContactShadowLength number
---@field LightingChannels FLightingChannels
---@field LightFunctionMaterial 
---@field LightFunctionScale FVector
---@field IESTexture 
---@field IESBrightnessScale number
---@field LightFunctionFadeDistance number
---@field DisabledBrightness number
---@field BloomScale number
---@field BloomThreshold number
---@field BloomTint FColor
---@field bUseRayTracedDistanceFieldShadows boolean
---@field RayStartOffsetDepthScale number
local ULightComponentBase = {}

---@param NewIntensity number
function ULightComponentBase:SetIndirectLightingIntensity(NewIntensity) end

---@param NewIntensity number
function ULightComponentBase:SetVolumetricScatteringIntensity(NewIntensity) end

---@param NewLightColor FLinearColor
---@param bSRGB boolean
function ULightComponentBase:SetLightColor(NewLightColor, bSRGB) end

---@param NewTemperature number
function ULightComponentBase:SetTemperature(NewTemperature) end

---@param NewLightFunctionMaterial UMaterialInterface
function ULightComponentBase:SetLightFunctionMaterial(NewLightFunctionMaterial) end

---@param NewLightFunctionScale FVector
function ULightComponentBase:SetLightFunctionScale(NewLightFunctionScale) end

---@param NewLightFunctionFadeDistance number
function ULightComponentBase:SetLightFunctionFadeDistance(NewLightFunctionFadeDistance) end

---@param NewValue number
function ULightComponentBase:SetLightFunctionDisabledBrightness(NewValue) end

---@param bNewValue boolean
function ULightComponentBase:SetAffectDynamicIndirectLighting(bNewValue) end

---@param bNewValue boolean
function ULightComponentBase:SetAffectTranslucentLighting(bNewValue) end

---@param bNewValue boolean
function ULightComponentBase:SetEnableLightShaftBloom(bNewValue) end

---@param NewValue number
function ULightComponentBase:SetBloomScale(NewValue) end

---@param NewValue number
function ULightComponentBase:SetBloomThreshold(NewValue) end

---@param NewValue FColor
function ULightComponentBase:SetBloomTint(NewValue) end

---@param NewValue UTextureLightProfile
function ULightComponentBase:SetIESTexture(NewValue) end

---@param NewValue number
function ULightComponentBase:SetShadowBias(NewValue) end

function ULightComponentBase:ForceUpdateShadowState() end

---@param NewValue number
function ULightComponentBase:SetSpecularScale(NewValue) end

---@param NewValue boolean
function ULightComponentBase:SetLocalLightDisableDiffuse(NewValue) end
