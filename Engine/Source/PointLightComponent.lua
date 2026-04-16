---@meta

---A light component which emits light from a single point equally in all directions.
---@class UPointLightComponent: ULightComponent
---@field Radius_DEPRECATED number
---@field AttenuationRadius number @Bounds the light's visible influence. This clamping of the light's influence is not physically correct but very important for performance, larger lights cost more.
---@field bUseInverseSquaredFalloff number @Whether to use physically based inverse squared distance falloff, where AttenuationRadius is only clamping the light's contribution. Disabling inverse squared falloff can be useful when placing fill lights (don't want a super bright spot near the light). When enabled, the light's Intensity is in units of lumens, where 1700 lumens is a 100W lightbulb. When disabled, the light's Intensity is a brightness scale.
---@field LightFalloffExponent number @Controls the radial falloff of the light when UseInverseSquaredFalloff is disabled. 2 is almost linear and very unrealistic and around 8 it looks reasonable. With large exponents, the light has contribution to only a small area of its influence radius but still costs the same as low exponents.
---@field SourceRadius number @Radius of light source shape. Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.
---@field SoftSourceRadius number @Soft radius of light source shape. Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.
---@field SourceLength number @Length of light source shape. Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.
---@field bSimulateRectLight number @By luciuszhang: when in rect light mode, source radius is the rect light source width.
---@field bSimulatePortalLight number @By luciuszhang: Portal light will be used in lightmass for IdeaBake, it is just a flag for Rect Light.
---@field RectLightSourceWidth number @By luciuszhang: rect light source width.
---@field RectLightSourceHeight number @By luciuszhang: rect light source height.
---@field bEnableForVertexPointLight number
---@field LightmassSettings any @The Lightmass settings for this object.
local UPointLightComponent = {}

---@param NewRadius number
function UPointLightComponent:SetAttenuationRadius(NewRadius) end

---@param NewLightFalloffExponent number
function UPointLightComponent:SetLightFalloffExponent(NewLightFalloffExponent) end

---@param bNewValue number
function UPointLightComponent:SetSourceRadius(bNewValue) end

---@param bNewValue number
function UPointLightComponent:SetSoftSourceRadius(bNewValue) end

---@param NewValue number
function UPointLightComponent:SetSourceLength(NewValue) end

---@param newValue boolean
function UPointLightComponent:SetSimulateRectLight(newValue) end

---@param newValue boolean
function UPointLightComponent:SetSimulatePortalLight(newValue) end

---@param NewValue number
function UPointLightComponent:SetRectLightSourceWidth(NewValue) end

---@param NewValue number
function UPointLightComponent:SetRectLightSourceHeight(NewValue) end
