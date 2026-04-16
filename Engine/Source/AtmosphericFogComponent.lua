---@meta

---Structure storing Data for pre-computation
---@class FAtmospherePrecomputeParameters
---@field DensityHeight number @Rayleigh scattering density height scale, ranges from [0...1]
---@field DecayHeight_DEPRECATED number
---@field MaxScatteringOrder number @Maximum scattering order
---@field TransmittanceTexWidth number @Transmittance Texture Width
---@field TransmittanceTexHeight number @Transmittance Texture Height
---@field IrradianceTexWidth number @Irradiance Texture Width
---@field IrradianceTexHeight number @Irradiance Texture Height
---@field InscatterAltitudeSampleNum number @Number of different altitudes at which to sample inscatter color (size of 3D texture Z dimension)
---@field InscatterMuNum number @Inscatter Texture Height
---@field InscatterMuSNum number @Inscatter Texture Width
---@field InscatterNuNum number @Inscatter Texture Width
FAtmospherePrecomputeParameters = {}


---Used to create fogging effects such as clouds.
---@class UAtmosphericFogComponent: USceneComponent
---@field SunMultiplier number @Global scattering factor.
---@field FogMultiplier number @Scattering factor on object.
---@field DensityMultiplier number @Fog density control factor.
---@field DensityOffset number @Fog density offset to control opacity [-1.f ~ 1.f].
---@field DistanceScale number @Distance scale.
---@field AltitudeScale number @Altitude scale (only Z scale).
---@field DistanceOffset number @Distance offset, in km (to handle large distance)
---@field GroundOffset number @Ground offset.
---@field StartDistance number @Start Distance.
---@field SunDiscScale number @Distance offset, in km (to handle large distance)
---@field DefaultBrightness number @Default light brightness. Used when there is no sunlight placed in the level. Unit is lumens
---@field DefaultLightColor FColor @Default light color. Used when there is no sunlight placed in the level.
---@field bDisableSunDisk number @Disable Sun Disk rendering.
---@field bDisableGroundScattering number @Disable Color scattering from ground.
---@field PrecomputeParams FAtmospherePrecomputeParameters
local UAtmosphericFogComponent = {}

---Set brightness of the light
---@param NewBrightness number
function UAtmosphericFogComponent:SetDefaultBrightness(NewBrightness) end

---Set color of the light
---@param NewLightColor FLinearColor
function UAtmosphericFogComponent:SetDefaultLightColor(NewLightColor) end

---Set SunMultiplier
---@param NewSunMultiplier number
function UAtmosphericFogComponent:SetSunMultiplier(NewSunMultiplier) end

---Set FogMultiplier
---@param NewFogMultiplier number
function UAtmosphericFogComponent:SetFogMultiplier(NewFogMultiplier) end

---Set DensityMultiplier
---@param NewDensityMultiplier number
function UAtmosphericFogComponent:SetDensityMultiplier(NewDensityMultiplier) end

---Set DensityOffset
---@param NewDensityOffset number
function UAtmosphericFogComponent:SetDensityOffset(NewDensityOffset) end

---Set DistanceScale
---@param NewDistanceScale number
function UAtmosphericFogComponent:SetDistanceScale(NewDistanceScale) end

---Set AltitudeScale
---@param NewAltitudeScale number
function UAtmosphericFogComponent:SetAltitudeScale(NewAltitudeScale) end

---Set StartDistance
---@param NewStartDistance number
function UAtmosphericFogComponent:SetStartDistance(NewStartDistance) end

---Set DistanceOffset
---@param NewDistanceOffset number
function UAtmosphericFogComponent:SetDistanceOffset(NewDistanceOffset) end

---Set DisableSunDisk
---@param NewSunDisk boolean
function UAtmosphericFogComponent:DisableSunDisk(NewSunDisk) end

---Set DisableGroundScattering
---@param NewGroundScattering boolean
function UAtmosphericFogComponent:DisableGroundScattering(NewGroundScattering) end

---Set PrecomputeParams, only valid in Editor mode
---@param DensityHeight number
---@param MaxScatteringOrder number
---@param InscatterAltitudeSampleNum number
function UAtmosphericFogComponent:SetPrecomputeParams(DensityHeight, MaxScatteringOrder, InscatterAltitudeSampleNum) end

function UAtmosphericFogComponent:StartPrecompute() end
