---@meta

---@class FACESParameter
---@field TintColor FLinearColor
---@field Bright number
---@field Gray number
---@field ShoulderStrength number
---@field ToeStrength number
---@field LinearStrength number
---@field LinearAngle number
FACESParameter = {}


---A light component that has parallel rays. Will provide a uniform lighting across any affected surface (eg. The Sun). This will affect all objects in the defined light-mass importance volume.
---@class UDirectionalLightComponent: ULightComponent
---@field bEnableLightShaftOcclusion number @Whether to occlude fog and atmosphere inscattering with screenspace blurred occlusion from this light.
---@field OcclusionMaskDarkness number @Controls how dark the occlusion masking is, a value of 1 results in no darkening term.
---@field OcclusionDepthRange number @Everything closer to the camera than this distance will occlude light shafts.
---@field LightShaftOverrideDirection FVector @Can be used to make light shafts come from somewhere other than the light's actual direction. This will only be used when non-zero.  It does not have to be normalized.
---@field WholeSceneDynamicShadowRadius_DEPRECATED number
---@field DynamicShadowDistanceMovableLight number @How far Cascaded Shadow Map dynamic shadows will cover for a movable light, measured from the camera. A value of 0 disables the dynamic shadow.
---@field DynamicShadowDistanceStationaryLight number @How far Cascaded Shadow Map dynamic shadows will cover for a stationary light, measured from the camera. A value of 0 disables the dynamic shadow.
---@field DynamicShadowCascades number @Number of cascades to split the view frustum into for the whole scene dynamic shadow. More cascades result in better shadow resolution, but adds significant rendering cost.
---@field CascadeDistributionExponent number @Controls whether the cascades are distributed closer to the camera (larger exponent) or further from the camera (smaller exponent). An exponent of 1 means that cascade transitions will happen at a distance proportional to their resolution.
---@field CascadeTransitionFraction number @Proportion of the fade region between cascades. Pixels within the fade region of two cascades have their shadows blended to avoid hard transitions between quality levels. A value of zero eliminates the fade region, creating hard transitions. Higher values increase the size of the fade region, creating a more gradual transition between cascades. The value is expressed as a percentage proportion (i.e. 0.1 = 10% overlap). Ideal values are the smallest possible which still hide the transition. An increased fade region size causes an increase in shadow rendering cost.
---@field ShadowDistanceFadeoutFraction number @Controls the size of the fade out region at the far extent of the dynamic shadow's influence. This is specified as a fraction of DynamicShadowDistance.
---@field bUseIndependentShadowBound number
---@field ShadowCenterOffset number @Offset of the CSM shadow center in the viewing direction.
---@field ShadowIndependentRadius number
---@field bUseInsetShadowsForMovableObjects number @Stationary lights only: Whether to use per-object inset shadows for movable components, even though cascaded shadow maps are enabled. This allows dynamic objects to have a shadow even when they are outside of the cascaded shadow map, which is important when DynamicShadowDistanceStationaryLight is small. If DynamicShadowDistanceStationaryLight is large (currently > 8000), this will be forced off. Disabling this can reduce shadowing cost significantly with many movable objects.
---@field FarShadowCascadeCount number @0: no DistantShadowCascades, otherwise the count of cascades between WholeSceneDynamicShadowRadius and DistantShadowDistance that are covered by distant shadow cascades.
---@field FarShadowDistance number @Distance at which the far shadow cascade should end.  Far shadows will cover the range between 'Dynamic Shadow Distance' and this distance.
---@field DistanceFieldShadowDistance number @Distance at which the ray traced shadow cascade should end.  Distance field shadows will cover the range between 'Dynamic Shadow Distance' this distance.
---@field ForwardShadingPriority number @Forward lighting priority for the single directional light that will be used for forward shading, translucent, single layer water and volumetric fog. When two lights have equal priorities, the selection will be based on their overall brightness as a fallback.
---@field LightSourceAngle number @Light source angle in degrees, used for dynamic shadowing methods. Currently only Ray Traced Distance Field shadows and Capsule shadows support area shadows, and therefore make use of LightSourceAngle.
---@field TraceDistance number @Determines how far shadows can be cast, in world units.  Larger values increase the shadowing cost.
---@field LightmassSettings any @The Lightmass settings for this object.
---@field bCastModulatedShadows number @Whether the light should cast modulated shadows from dynamic objects (mobile only).  Also requires Cast Shadows to be set to True.
---@field bCastsLandscapeShadow number
---@field LandscapeShadowColor number
---@field LandscapeShadowOffset number
---@field LandscapeShadowSoftHeight number
---@field LandscapeShadowPixelPrecision number
---@field bCastPhotonShadow number @#if WITH_PHOTON_SHADOW Whether the light should cast photon shadow for character #endif
---@field bCastPhotonPerObjectShadow number
---@field SoftShadowSoftness number
---@field ShadowBlendFactor number
---@field BoundsScale number
---@field NearPlaneOffset number
---@field FarPlaneOffset number
---@field SplitNearOffset number
---@field SplitFarOffset number
---@field ShadowMapResolution number
---@field ModulatedShadowColor FColor @Color to modulate against the scene color when rendering modulated shadows. (mobile only)
---@field ACESParameters ULuaArrayHelper<FACESParameter>
---@field bUsedAsAtmosphereSunLight number
---@field bCastsCloudShadow number
---@field CloudShadowTileSize number
---@field CloudShadowDensity number
---@field CloudShadowWinSpeed FVector2D
---@field bUseGridShadow number
---@field GridShadowSplitSettings ULuaArrayHelper<FGridShadowSplitSettings>
local UDirectionalLightComponent = {}

---@param InValue boolean
function UDirectionalLightComponent:SetCastPhotonPerObjectShadow(InValue) end

---@param NewValue number
function UDirectionalLightComponent:SetDynamicShadowDistanceMovableLight(NewValue) end

---@param NewValue number
function UDirectionalLightComponent:SetDynamicShadowDistanceStationaryLight(NewValue) end

---@param NewValue number
function UDirectionalLightComponent:SetDynamicShadowCascades(NewValue) end

---@param NewValue number
function UDirectionalLightComponent:SetCascadeDistributionExponent(NewValue) end

---@param NewValue number
function UDirectionalLightComponent:SetCascadeTransitionFraction(NewValue) end

---@param NewValue number
function UDirectionalLightComponent:SetShadowDistanceFadeoutFraction(NewValue) end

---@param NewValue number
function UDirectionalLightComponent:SetForwardShadingPriority(NewValue) end

---@param bNewValue boolean
function UDirectionalLightComponent:SetEnableLightShaftOcclusion(bNewValue) end

---@param NewValue number
function UDirectionalLightComponent:SetOcclusionMaskDarkness(NewValue) end

---@param NewValue FVector
function UDirectionalLightComponent:SetLightShaftOverrideDirection(NewValue) end

---@param InValue boolean
function UDirectionalLightComponent:SetCastsCloudShadow(InValue) end

---@param InTexture UTexture
function UDirectionalLightComponent:SetCloudShadowTexture(InTexture) end

---@param InValue number
function UDirectionalLightComponent:SetCloudShadowTileSize(InValue) end

---@param InDensity number
function UDirectionalLightComponent:SetCloudShadowDensity(InDensity) end

---@param InWinSpeed FVector2D
function UDirectionalLightComponent:SetCloudShadowWinSpeed(InWinSpeed) end
