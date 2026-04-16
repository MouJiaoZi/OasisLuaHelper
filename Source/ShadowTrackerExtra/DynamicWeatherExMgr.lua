---@meta

---@class EDynamicWeatherExMgrActivityStatus
---@field Begin number
---@field End number
EDynamicWeatherExMgrActivityStatus = {}


---@class FScreenAppearanceCfg
---@field UseScreenAppearance boolean
---@field ScreenAppearanceName string
---@field ParticleType EScreenParticleEffectType
---@field ScreenAppearanceConcentration number
---@field ShaderName string
FScreenAppearanceCfg = {}


---@class FPlayerKeyDstWeather
---@field CurWeatherDuration number
FPlayerKeyDstWeather = {}


---@class FDynamicFogCustomParam
---@field FogDensity number
---@field bUseCustomFog boolean
---@field CustomFogLow_Height number
---@field CustomFogLow_DensityCoefficient number
---@field CustomFogLow_Color FLinearColor
---@field CustomFogHigh_Height number
---@field CustomFogHigh_DensityCoefficient number
---@field CustomFogHigh_Color FLinearColor
---@field FogInscatteringColor FLinearColor
---@field FogHeightFalloff number
---@field FogMaxOpacity number
---@field StartDistance number
---@field FogCutoffDistance number
FDynamicFogCustomParam = {}


---@class FWeatherFogCfg
---@field WeatherTypeList ULuaArrayHelper<EWeatherStatusType>
---@field DstWeatherFog FDynamicFogCustomParam
---@field SrcWeatherFog FDynamicFogCustomParam
---@field BlendTime number
---@field BlendFogDensity boolean
---@field BlendCustomFogLow_DensityCoefficient boolean
---@field BlendCustomFogHigh_DensityCoefficient boolean
---@field BlendCustomFogLow_Color boolean
---@field BlendCustomFogHigh_Color boolean
---@field BlendFogInscatteringColor boolean
---@field BlendFogHeightFalloff boolean
---@field BlendFogMaxOpacity boolean
---@field BlendStartDistance boolean
---@field BlendFogCutoffDistance boolean
---@field WeatherControllerList ULuaArrayHelper<UDynamicWeatherController>
FWeatherFogCfg = {}


---客户端驱动切换天气, 当前支持两种天气互切策略. feishen, 20190911 -将切换天空盒，雾，雾距离，主光源，天空光源拆开，可单独配置开关。feishen, 20200930
---@class ADynamicWeatherExMgr: ADynamicWeatherMgr
---@field UseCircleIndex boolean
---@field CircleIndex number
---@field SrcControllerCfg FWeatherControllerRepData
---@field DstControllerCfg FWeatherControllerRepData
---@field UseSwitchWeaterByIndex boolean
---@field BlendWeatherList ULuaArrayHelper<FBlendWeatherCfg>
---@field ScreenAppearanceCfg FScreenAppearanceCfg
---@field TickOBPlayerCD number
---@field TickWeatherFogCD number
---@field TickLocalWeatherIndexCD number
---@field UseWeatherChangeStarted boolean
---@field UseLocalWeatherChange boolean
---@field UseWeatherFogCfg boolean
---@field WeatherFogCfg FWeatherFogCfg
---@field UseClientPreviewWeather boolean
---@field ClientPreviewWeatherBlendSpeed number
---@field ClientPreviewWeatherStartLerpValue number
---@field CurrentWeatherIndex number @通过数组配置多个天气时，用CurrentWeatherIndex表示默认源天气
---@field LastWeatherIndex number
---@field PlayerKeyDstWeatherList ULuaArrayHelper<FPlayerKeyDstWeather>
---@field OBPlayerKeyDstWeatherList ULuaArrayHelper<FPlayerKeyDstWeather>
local ADynamicWeatherExMgr = {}

---@param Index number
function ADynamicWeatherExMgr:BlendWeatherByIndex(Index) end

function ADynamicWeatherExMgr:LocalGotoNextWeather() end

---@param bDstWeatherFog boolean
function ADynamicWeatherExMgr:BlendToWeatherFog(bDstWeatherFog) end

---@param WeatherIndex number
---@param LerpValue number
function ADynamicWeatherExMgr:ClientPreviewWeather(WeatherIndex, LerpValue) end
