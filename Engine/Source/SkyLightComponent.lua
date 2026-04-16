---@meta

---@class ESkyLightSourceType
---@field SLS_CapturedScene number @Construct the sky light from the captured scene, anything further than SkyDistanceThreshold from the sky light position will be included.
---@field SLS_SpecifiedCubemap number @Construct the sky light from the specified cubemap.
---@field SLS_MAX number
ESkyLightSourceType = {}


---@class USkyLightComponent: ULightComponentBase
---@field SourceType ESkyLightSourceType @Indicates where to get the light contribution from.
---@field SourceCubemapAngle number @Angle to rotate the source cubemap when SourceType is set to SLS_SpecifiedCubemap.
---@field CubemapResolution number @Maximum resolution for the very top processed cubemap mip. Must be a power of 2.
---@field SkyDistanceThreshold number @Distance from the sky light at which any geometry should be treated as part of the sky. This is also used by reflection captures, so update reflection captures to see the impact.
---@field bCaptureEmissiveOnly boolean @Only capture emissive materials. Skips all lighting making the capture cheaper. Recomended when using CaptureEveryFrame
---@field bLowerHemisphereIsBlack boolean @Whether all distant lighting from the lower hemisphere should be set to LowerHemisphereColor. Enabling this is accurate when lighting a scene on a planet where the ground blocks the sky, However disabling it can be useful to approximate skylight bounce lighting (eg Movable light).
---@field LowerHemisphereColor FLinearColor
---@field OcclusionMaxDistance number @Max distance that the occlusion of one point will affect another. Higher values increase the cost of Distance Field AO exponentially.
---@field Contrast number @Contrast S-curve applied to the computed AO.  A value of 0 means no contrast increase, 1 is a significant contrast increase.
---@field OcclusionExponent number @Exponent applied to the computed AO.  Values lower than 1 brighten occlusion overall without losing contact shadows.
---@field MinOcclusion number @Controls the darkest that a fully occluded area can get.  This tends to destroy contact shadows, use Contrast or OcclusionExponent instead.
---@field OcclusionTint FColor @Tint color on occluded areas, artistic control.
---@field OcclusionCombineMode EOcclusionCombineMode @Controls how occlusion from Distance Field Ambient Occlusion is combined with Screen Space Ambient Occlusion.
---@field bForceHide number @Whether to hide the primitive in game, if the primitive is Visible.
local USkyLightComponent = {}

---@param NewIntensity number
function USkyLightComponent:SetIntensity(NewIntensity) end

---@param NewIntensity number
function USkyLightComponent:SetIndirectLightingIntensity(NewIntensity) end

---@param NewIntensity number
function USkyLightComponent:SetVolumetricScatteringIntensity(NewIntensity) end

---Set color of the light
---@param NewLightColor FLinearColor
function USkyLightComponent:SetLightColor(NewLightColor) end

---Sets the cubemap used when SourceType is set to SpecifiedCubemap, and causes a skylight update on the next tick.
---@param NewCubemap UTextureCube
function USkyLightComponent:SetCubemap(NewCubemap) end

---Creates sky lighting from a blend between two cubemaps, which is only valid when SourceType is set to SpecifiedCubemap. This can be used to seamlessly transition sky lighting between different times of day. The caller should continue to update the blend until BlendFraction is 0 or 1 to reduce rendering cost. The caller is responsible for avoiding pops due to changing the source or destination.
---@param SourceCubemap UTextureCube
---@param DestinationCubemap UTextureCube
---@param InBlendFraction number
function USkyLightComponent:SetCubemapBlend(SourceCubemap, DestinationCubemap, InBlendFraction) end

---@param InTint FColor
function USkyLightComponent:SetOcclusionTint(InTint) end

---@param InOcclusionContrast number
function USkyLightComponent:SetOcclusionContrast(InOcclusionContrast) end

---@param InOcclusionExponent number
function USkyLightComponent:SetOcclusionExponent(InOcclusionExponent) end

---@param InMinOcclusion number
function USkyLightComponent:SetMinOcclusion(InMinOcclusion) end

---@param bInForceHide boolean
function USkyLightComponent:SetForceHide(bInForceHide) end

---Recaptures the scene for the skylight. This is useful for making sure the sky light is up to date after changing something in the world that it would capture. Warning: this is very costly and will definitely cause a hitch.
function USkyLightComponent:RecaptureSky() end
