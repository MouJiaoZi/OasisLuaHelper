---@meta

---@class FCustomHeightFog
---@field Height number
---@field DensityCoefficient number
---@field CustomFogInscatteringColor FLinearColor
FCustomHeightFog = {}


---Used to create fogging effects such as clouds but with a density that is related to the height of the fog.
---@class UExponentialHeightFogComponent: USceneComponent
---@field FogDensity number @Global density factor.
---@field CustomHightFogDensity ULuaArrayHelper<FCustomHeightFog>
---@field bUseCustomFog boolean
---@field CustomFogLow_Height number
---@field CustomFogLow_DensityCoefficient number
---@field CustomFogLow_Color FLinearColor
---@field CustomFogHigh_Height number
---@field CustomFogHigh_DensityCoefficient number
---@field CustomFogHigh_Color FLinearColor
---@field FogInscatteringColor FLinearColor
---@field InscatteringColorCubemapAngle number @Angle to rotate the InscatteringColorCubemap around the Z axis.
---@field InscatteringTextureTint FLinearColor @Tint color used when InscatteringColorCubemap is specified, for quick edits without having to reimport InscatteringColorCubemap.
---@field FullyDirectionalInscatteringColorDistance number @Distance at which InscatteringColorCubemap should be used directly for the Inscattering Color.
---@field NonDirectionalInscatteringColorDistance number @Distance at which only the average color of InscatteringColorCubemap should be used as Inscattering Color.
---@field DirectionalInscatteringExponent number @Controls the size of the directional inscattering cone, which is used to approximate inscattering from a directional light. Note: there must be a directional light with bUsedAsAtmosphereSunLight enabled for DirectionalInscattering to be used.
---@field DirectionalInscatteringStartDistance number @Controls the start distance from the viewer of the directional inscattering, which is used to approximate inscattering from a directional light. Note: there must be a directional light with bUsedAsAtmosphereSunLight enabled for DirectionalInscattering to be used.
---@field DirectionalInscatteringColor FLinearColor @Controls the color of the directional inscattering, which is used to approximate inscattering from a directional light. Note: there must be a directional light with bUsedAsAtmosphereSunLight enabled for DirectionalInscattering to be used.
---@field FogHeightFalloff number @Height density factor, controls how the density increases as height decreases. Smaller values make the visible transition larger.
---@field FogMaxOpacity number @Maximum opacity of the fog. A value of 1 means the fog can become fully opaque at a distance and replace scene color completely, A value of 0 means the fog color will not be factored in at all.
---@field StartDistance number @Distance from the camera that the fog will start, in world units.
---@field FogCutoffDistance number @Scene elements past this distance will not have fog applied.  This is useful for excluding skyboxes which already have fog baked in.
---@field Priority number @Priority to be rendered with, useful if more than one exponential fogs are visible concurrently
---@field bEnableVolumetricFog boolean @Whether to enable Volumetric fog.  Scalability settings control the resolution of the fog simulation. Note that Volumetric fog currently does not support StartDistance, FogMaxOpacity and FogCutoffDistance. Volumetric fog also can't match exponential height fog in general as exponential height fog has non-physical behavior.
---@field VolumetricFogScatteringDistribution number @Controls the scattering phase function - how much incoming light scatters in various directions. A distribution value of 0 scatters equally in all directions, while .9 scatters predominantly in the light direction. In order to have visible volumetric fog light shafts from the side, the distribution will need to be closer to 0.
---@field VolumetricFogAlbedo FColor @The height fog particle reflectiveness used by volumetric fog. Water particles in air have an albedo near white, while dust has slightly darker value.
---@field VolumetricFogEmissive FLinearColor @Light emitted by height fog.  This is a density so more light is emitted the further you are looking through the fog. In most cases skylight is a better choice, however right now volumetric fog does not support precomputed lighting, So stationary skylights are unshadowed and static skylights don't affect volumetric fog at all.
---@field VolumetricFogExtinctionScale number @Scales the height fog particle extinction amount used by volumetric fog.  Values larger than 1 cause fog particles everywhere absorb more light.
---@field VolumetricFogDistance number @Distance over which volumetric fog should be computed.  Larger values extend the effect into the distance but expose under-sampling artifacts in details.
---@field VolumetricFogStaticLightingScatteringIntensity number
---@field bOverrideLightColorsWithFogInscatteringColors boolean @Whether to use FogInscatteringColor for the Sky Light volumetric scattering color and DirectionalInscatteringColor for the Directional Light scattering color. Make sure your directional light has 'Atmosphere Sun Light' enabled! Enabling this allows Volumetric fog to better match Height fog in the distance, but produces non-physical volumetric lighting that may not match surface lighting.
---@field VolumetricFogStartDistance number @Distance over which volumetric fog should be computed.  Larger values extend the effect into the distance but expose under-sampling artifacts in details.
---@field VolumetricFogNoiseTransform FTransform
local UExponentialHeightFogComponent = {}

---@param Value number
function UExponentialHeightFogComponent:SetFogDensity(Value) end

---@param Value number
---@param index number
function UExponentialHeightFogComponent:SetCustomFogHeight(Value, index) end

---@param Value number
---@param index number
function UExponentialHeightFogComponent:SetCustomFogDensityCoefficient(Value, index) end

---@param Value FLinearColor
---@param index number
function UExponentialHeightFogComponent:SetCustomFogInscatteringColor(Value, index) end

---@param Value FLinearColor
function UExponentialHeightFogComponent:SetFogInscatteringColor(Value) end

---@param Value UTextureCube
function UExponentialHeightFogComponent:SetInscatteringColorCubemap(Value) end

---@param Value number
function UExponentialHeightFogComponent:SetInscatteringColorCubemapAngle(Value) end

---@param Value number
function UExponentialHeightFogComponent:SetFullyDirectionalInscatteringColorDistance(Value) end

---@param Value number
function UExponentialHeightFogComponent:SetNonDirectionalInscatteringColorDistance(Value) end

---@param Value FLinearColor
function UExponentialHeightFogComponent:SetInscatteringTextureTint(Value) end

---@param Value number
function UExponentialHeightFogComponent:SetDirectionalInscatteringExponent(Value) end

---@param Value number
function UExponentialHeightFogComponent:SetDirectionalInscatteringStartDistance(Value) end

---@param Value FLinearColor
function UExponentialHeightFogComponent:SetDirectionalInscatteringColor(Value) end

---@param Value number
function UExponentialHeightFogComponent:SetFogHeightFalloff(Value) end

---@param Value number
function UExponentialHeightFogComponent:SetFogMaxOpacity(Value) end

---@param Value number
function UExponentialHeightFogComponent:SetStartDistance(Value) end

---@param Value number
function UExponentialHeightFogComponent:SetFogCutoffDistance(Value) end

---@param bNewValue boolean
function UExponentialHeightFogComponent:SetVolumetricFog(bNewValue) end

---@param NewValue number
function UExponentialHeightFogComponent:SetVolumetricFogScatteringDistribution(NewValue) end

---@param NewValue number
function UExponentialHeightFogComponent:SetVolumetricFogExtinctionScale(NewValue) end

---@param NewValue FColor
function UExponentialHeightFogComponent:SetVolumetricFogAlbedo(NewValue) end

---@param NewValue FLinearColor
function UExponentialHeightFogComponent:SetVolumetricFogEmissive(NewValue) end

---@param NewValue number
function UExponentialHeightFogComponent:SetVolumetricFogDistance(NewValue) end

---@param NewValue number
function UExponentialHeightFogComponent:SetVolumetricFogStartDistance(NewValue) end

---@param NewValue UTexture2D
function UExponentialHeightFogComponent:SetVolumetricFogNoiseTexture(NewValue) end

---@param Transform FTransform
function UExponentialHeightFogComponent:SetVolumetricFogNoiseTransform(Transform) end
