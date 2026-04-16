---@meta

---@class EChangeWeatherReason
---@field BlendOut number
---@field BlendIn number
EChangeWeatherReason = {}


---@class EWeatherSequencePlaybackStatus
---@field Paused number
---@field Playing number
EWeatherSequencePlaybackStatus = {}


---@class FWeatherParameters_DirectionalLight
---@field DirectionalLightColor FLinearColor
---@field DirectionalLightIntensity number
---@field DirectionalLightTemperature number
---@field DirectionalLightBloomScale number
---@field DynamicShadowDistanceMovableLight number
FWeatherParameters_DirectionalLight = {}


---@class FWeatherParameters_SkyLight
---@field SkyLightIntensity number
---@field SkyLightColor FLinearColor
---@field SkyLightLowerHemisphereColor FLinearColor
FWeatherParameters_SkyLight = {}


---@class FWeatherParameters_Fog
---@field FogDensity number
---@field FogLowHeight number
---@field FogLowDensity number
---@field FogLowColor FLinearColor
---@field FogHighHeight number
---@field FogHighDensity number
---@field FogHighColor FLinearColor
---@field FogInscatteringColor FLinearColor
---@field FogHeightFalloff number
---@field FogMaxOpacity number
---@field FogStartDistance number
FWeatherParameters_Fog = {}


---@class FWeatherParameters_LensFlare
---@field bUseLensFlare boolean
FWeatherParameters_LensFlare = {}


---@class FWeatherParameters_Atmosphere
---@field AtmosphereRainyDegree number
---@field RadiusScale number
---@field AtmosphereTimeParam FTOD_Time
---@field AtmosphereParam FTOD_AtmosphereParameters
---@field AtmosphereDayParam FTOD_DayParameters
---@field AtmosphereLightParam FTOD_LightParameters
---@field AtmosphereCloudParam FTOD_CloudPBRParameters
---@field AtmosphereSunParam FTOD_Sun
---@field AtmosphereMoonParam FTOD_Moon
---@field AtmosphereSunAndMoonParam FTOD_SunAndMoon
---@field AtmosphereStarsParam FTOD_Stars
---@field AtmosphereSpecialSkyParam FTOD_SpecialSky
FWeatherParameters_Atmosphere = {}


---@class FWeatherParameters_PostProcess
---@field bEnablePostProcess boolean
---@field ACESParameters ULuaArrayHelper<FACESParameter>
---@field RenderStyleToPPSMapping ULuaMapHelper<ERenderStyle, FPostProcessSettings>
FWeatherParameters_PostProcess = {}


---@class FWeatherParameters_DynamicMaterialParameter
---@field ParameterName string
---@field Texture UTexture
FWeatherParameters_DynamicMaterialParameter = {}


---Aggregation of all types of weather parameters
---@class FWeatherParameters
---@field MaterialInstance UMaterialInstance
---@field DynamicMaterialParameters ULuaArrayHelper<FWeatherParameters_DynamicMaterialParameter>
---@field DirectionalLight FWeatherParameters_DirectionalLight
---@field SkyLight FWeatherParameters_SkyLight
---@field Fog FWeatherParameters_Fog
---@field LensFlare FWeatherParameters_LensFlare
---@field Atmosphere FWeatherParameters_Atmosphere
---@field PostProcess FWeatherParameters_PostProcess
FWeatherParameters = {}


---@class FWeatherParameterCurves_DirectionalLight
FWeatherParameterCurves_DirectionalLight = {}


---@class FWeatherParameterCurves_SkyLight
FWeatherParameterCurves_SkyLight = {}


---@class FWeatherParameterCurves_Fog
FWeatherParameterCurves_Fog = {}


---@class FWeatherParameterCurves_Time
FWeatherParameterCurves_Time = {}


---@class FWeatherParameterCurves_AtmosphereParameters
FWeatherParameterCurves_AtmosphereParameters = {}


---@class FWeatherParameterCurves_DayParameters
FWeatherParameterCurves_DayParameters = {}


---@class FWeatherParameterCurves_LightParameters
FWeatherParameterCurves_LightParameters = {}


---@class FWeatherParameterCurves_CloudPBRParameters
FWeatherParameterCurves_CloudPBRParameters = {}


---@class FWeatherParameterCurves_Sun
FWeatherParameterCurves_Sun = {}


---@class FWeatherParameterCurves_Moon
FWeatherParameterCurves_Moon = {}


---@class FWeatherParameterCurves_SunAndMoon
FWeatherParameterCurves_SunAndMoon = {}


---@class FWeatherParameterCurves_Stars
FWeatherParameterCurves_Stars = {}


---@class FWeatherParameterCurves_SpecialSky
FWeatherParameterCurves_SpecialSky = {}


---@class FWeatherParameterCurves_Atmosphere
---@field AtmosphereTimeParam FWeatherParameterCurves_Time
---@field AtmosphereParam FWeatherParameterCurves_AtmosphereParameters
---@field DayParameters FWeatherParameterCurves_DayParameters
---@field LightParameters FWeatherParameterCurves_LightParameters
---@field AtmosphereCloudParam FWeatherParameterCurves_CloudPBRParameters
---@field AtmosphereSunParam FWeatherParameterCurves_Sun
---@field AtmosphereMoonParam FWeatherParameterCurves_Moon
---@field AtmosphereSunAndMoonParam FWeatherParameterCurves_SunAndMoon
---@field AtmosphereStarsParam FWeatherParameterCurves_Stars
---@field AtmosphereSpecialSkyParam FWeatherParameterCurves_SpecialSky
FWeatherParameterCurves_Atmosphere = {}


---@class FWeatherParameterCurves
---@field DirectionalLight FWeatherParameterCurves_DirectionalLight
---@field SkyLight FWeatherParameterCurves_SkyLight
---@field Fog FWeatherParameterCurves_Fog
---@field Atmosphere FWeatherParameterCurves_Atmosphere
FWeatherParameterCurves = {}


---Blend weather behavior
---@class FBlendWeatherParameters
---@field BlendTime number
FBlendWeatherParameters = {}


---Weather playback information
---@class FWeatherSequencePlaybackPosition
---@field Status EWeatherSequencePlaybackStatus
---@field PauseTimeCursor number
---@field BeginPlayRealTime number
---@field PlayRate number
---@field SmoothPlayTime number
FWeatherSequencePlaybackPosition = {}


---@class FWeatherSequencePlayback
---@field LoaderPlayerKey number
---@field WeatherSequenceNameForDebug string
---@field ServerPlaybackPosition FWeatherSequencePlaybackPosition
---@field ClientPlaybackPosition FWeatherSequencePlaybackPosition
---@field bUseClientPlaybackPosition boolean
---@field BlendParameters FBlendWeatherParameters
---@field LoadTimeStamp number
---@field Priority number
---@field WeatherMultiFactor number
FWeatherSequencePlayback = {}


---@class FWeatherPresentationKey
---@field WeatherSequenceID number
---@field WeatherTime number
---@field LerpValue number
---@field WeatherParametersID number
FWeatherPresentationKey = {}


---@class FWeatherParametersPlayback
---@field Key string
---@field Identifier number
---@field WeatherParameters FWeatherParameters
---@field LoadTimeStamp number
---@field Priority number
FWeatherParametersPlayback = {}
