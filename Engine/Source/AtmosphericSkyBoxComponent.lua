---@meta

---@class FTOD_CycleParameters
---@field Latitude number
---@field Longitude number
FTOD_CycleParameters = {}


---@class FTOD_AtmosphereParameters
---@field ScatteringColor FLinearColor
---@field RayleighMultiplier number
---@field MieMultiplier number
---@field Brightness number
---@field Contrast number
---@field Directionality number
---@field Haziness number
---@field Fogginess number
---@field FogBrightness number
---@field Hack_SunFaceColor FLinearColor
---@field HazinessColor FLinearColor
---@field HorizontalColor FLinearColor
---@field HorizontalZenithBias number
---@field HorizontalZenithExp number
---@field SkyLineHeight number
---@field SkyLineColor FLinearColor
---@field SkyLineExp number
---@field SkyLineIntensity number
---@field ZenithColor FLinearColor
---@field NightHaziness number
---@field NightColor FLinearColor
---@field NightHazeColor FLinearColor
FTOD_AtmosphereParameters = {}


---@class FTOD_DayParameters
---@field SunLightColor FLinearColor
FTOD_DayParameters = {}


---@class FTOD_LightParameters
---@field Falloff number
---@field Coloring number
---@field SkyColoring number
---@field CloudColoring number
FTOD_LightParameters = {}


---@class FTOD_CloudPBRParameters
---@field Scale number
---@field UvPow number
---@field Speed number
---@field CloudCover number
---@field Brightness number
---@field Cloud_DarkColor FLinearColor
---@field CloudBlendFactor number
---@field CloudContrast number
---@field CloudFadeHeightPower number
---@field CloudIntensityNightBasic number
---@field CloudSmoothStepMax number
---@field NightSkyColorBlend number
FTOD_CloudPBRParameters = {}


---@class FTOD_WorldParameters
---@field ViewerHeight number
---@field HorizonOffset number
FTOD_WorldParameters = {}


---@class FTOD_Time
---@field CurrTime number
---@field DirectionLightAngel360 number
---@field NightSkyColorBlend number
FTOD_Time = {}


---@class FTOD_Animation
---@field WindDegrees number
---@field WindSpeed number
FTOD_Animation = {}


---@class FTOD_Sun
---@field SunColor FLinearColor
---@field SunHaloColor FLinearColor
---@field SunHaloSmooth number
---@field SunRadius_Halo number
---@field SunRimLightIntensity number
---@field SunSize number
---@field SunDis_DEPRECATED number
---@field SunScale_DEPRECATED number
---@field UseSun_DEPRECATED boolean
FTOD_Sun = {}


---@class FTOD_Moon
---@field MoonColor FLinearColor
---@field MoonHaloColor FLinearColor
---@field MoonHaloSmooth number
---@field MoonRadius_Halo number
---@field MoonRimLightIntensity number
---@field MoonSize number
---@field MoonDis_DEPRECATED number
---@field MoonScale_DEPRECATED number
---@field UseMoon_DEPRECATED boolean
FTOD_Moon = {}


---@class FTOD_SunAndMoon
---@field CloudMaskMul number
---@field RimContrast number
---@field UseSunOrMoon number
---@field SunMoonTransparent number
FTOD_SunAndMoon = {}


---@class FTOD_Stars
---@field StarsColor FLinearColor
---@field StarsIntensity number
---@field StarsNumMin number
---@field StarsUVScale number
---@field TwinkleSpeed number
---@field CloudMaskStars number
FTOD_Stars = {}


---@class FTOD_SpecialSky
---@field SpecialSkyBlendFactor number
---@field SpecialSkyBasicBlendColor FLinearColor
---@field SpecialSkyBrightness number
---@field SpecialSkyColor FLinearColor
---@field SpecialSkyRotation number
FTOD_SpecialSky = {}


---@class UAtmosphericSkyBoxComponent: USceneComponent
---@field RenderDynamicSky boolean
---@field RadiusScale number
---@field MeshRotation FRotator
---@field RainyDegree number
---@field Atmosphere FTOD_AtmosphereParameters
---@field Day FTOD_DayParameters
---@field Light FTOD_LightParameters
---@field CloudsPbr FTOD_CloudPBRParameters
---@field Cycle FTOD_CycleParameters
---@field TodTime FTOD_Time
---@field TodAnimation FTOD_Animation
---@field TodSunParams FTOD_Sun
---@field TodMoonParams FTOD_Moon
---@field TodSunAndMoonParams FTOD_SunAndMoon
---@field TodStarsParams FTOD_Stars
---@field TodSpecialSkyParams FTOD_SpecialSky
---@field LightingChannels FLightingChannels
---@field bIsMaterialInstanceDirty boolean
---@field FixedTimeOfDay boolean
---@field FixedCurrTime number
---@field bNeedUpdate boolean
local UAtmosphericSkyBoxComponent = {}

---@param time number
function UAtmosphericSkyBoxComponent:SetFixedCurrTime(time) end

---@param IsFiexd boolean
function UAtmosphericSkyBoxComponent:SetFixedTimeOfDay(IsFiexd) end

---@param NeedUpdate boolean
function UAtmosphericSkyBoxComponent:SetNeedUpdate(NeedUpdate) end
