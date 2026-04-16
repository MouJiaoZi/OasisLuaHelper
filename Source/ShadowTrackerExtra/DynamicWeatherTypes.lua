---@meta

---@class EWeatherStatusType
---@field EWeatherStatusType_None number @初始天气
---@field EWeatherStatusType_SunnyDay number @晴天
---@field EWeatherStatusType_Night number @黑夜
---@field EWeatherStatusType_Fog number @雾天
---@field EWeatherStatusType_Rain number @雨天
---@field EWeatherStatusType_Snow number @雪天
---@field EWeatherStatusType_Blizzard number @暴风雪
---@field EWeatherStatusType_PVEDaytime number @PVE白天
---@field EWeatherStatusType_PVEEvening number @PVE黄昏
---@field EWeatherStatusType_PVENight number @PVE夜晚
---@field EWeatherStatusType_MidAutumnDaytime number @中秋清晨
---@field EWeatherStatusType_MidAutumnEve number @中秋晚霞
---@field EWeatherStatusType_MidAutumnNight number @中秋黑夜
---@field EWeatherStatusType_Aurora number @极光
---@field EWeatherStatusType_SpringFestivalNight number @春节黑夜
---@field EWeatherStatusType_DesertSunny number @沙漠晴天
---@field EWeatherStatusType_DustStorm number @沙尘暴
---@field EWeatherStatusType_SolarEclipse number @日蚀
EWeatherStatusType = {}


---@class EWeatherChangeStatus
---@field EWeatherChangeStatus_StartEnter number @开始进入
---@field EWeatherChangeStatus_Duration number @持续
---@field EWeatherChangeStatus_StartQuit number @开始推出
EWeatherChangeStatus = {}


---@class EWeatherChangeEvent
---@field EWeatherChangeEvent_StartEnter number @开始进入
---@field EWeatherChangeEvent_Staturated number @开始持续
---@field EWeatherChangeEvent_StartQuit number @开始退出
---@field EWeatherChangeEvent_Quit number @退出
EWeatherChangeEvent = {}


---@class FWeatherStatus
---@field WeaterType EWeatherStatusType
---@field WeaterStatus EWeatherChangeStatus
FWeatherStatus = {}


---@class FWeatherChangeEvent
---@field WeaterType EWeatherStatusType
---@field WeaterChangeEvent EWeatherChangeEvent
FWeatherChangeEvent = {}


---@class FWeatherChangeWeight
---@field NewWeatherStatus EWeatherStatusType
---@field Weight number
FWeatherChangeWeight = {}


---@class FWeatherChangeSequenceItem
---@field WeatherStatus EWeatherStatusType
---@field StartTime number
---@field TotalDurationTime number
FWeatherChangeSequenceItem = {}


---@class FWeatherChangeConfig
---@field StartTimeMin number
---@field StartTimeMax number
---@field BlendInTime number
---@field BlendOutTime number
---@field DurationTimeMin number
---@field DurationTimeMax number
---@field LastWeatherStatus EWeatherStatusType
---@field LastWeatherAppearTime number
---@field bUseFixWeatherChangeSequence boolean
---@field WeatherChangeWeights ULuaArrayHelper<FWeatherChangeWeight>
---@field WeatherChangeSequence ULuaArrayHelper<FWeatherChangeSequenceItem>
---@field TimeMultiplier number
---@field bUseReadyGameStateEnetrAsOriginalTime boolean
---@field bDisableReadyGameStateWeatherTick boolean
---@field bUseRealDateTime boolean
FWeatherChangeConfig = {}


---@class FWeatherChangeControl
---@field WeatherChangeStarted boolean
---@field WeatherChangeFinished boolean
---@field WeatherChangeStartTime number
---@field ElapsedTime number
---@field NextWeather EWeatherStatusType
---@field NextDuration number
---@field WeatherTotalWeight number
---@field TimelineOffset number
FWeatherChangeControl = {}


---@class FBlendWeatherCfg
---@field WeatherType EWeatherStatusType
---@field Duration number
---@field BlendTime number
---@field ModifySkySwitch boolean
---@field ModifySkySwitchColor boolean
---@field ModifyFog boolean
---@field ModifyMainLight boolean
---@field ModifySkyLight boolean
---@field UseChangeRenderSettings boolean
---@field UseChangeFogActorLocation boolean
---@field UseChangeSkySwitchActorLocation boolean
---@field UseChangeSkySphereActorLocation boolean
FBlendWeatherCfg = {}


---@class FWeatherControllerRepData
---@field WeatherType EWeatherStatusType
---@field bStarted boolean
---@field ElapsedTime number
---@field BlendInTime number
---@field BlendOutTime number
---@field SaturateTime number
---@field TimeMultiplier number
---@field BlendInStarted boolean
---@field BlendSaturated boolean
---@field BlendOutStarted boolean
---@field BlendOutEnded boolean
FWeatherControllerRepData = {}


---@class FWeatherObject
---@field MainLight_Density number
---@field MainLight_Color FLinearColor
---@field MainLight_Temperature number
---@field MainLight_Rotation FRotator
---@field SkyLight_Density number
---@field SkyLight_Color FLinearColor
---@field CustomFogLow_DensityCoefficient number
---@field CustomFogLow_Color FLinearColor
---@field CustomFogHigh_DensityCoefficient number
---@field CustomFogHigh_Color FLinearColor
---@field HeightFallOff number
---@field StartDistance number
FWeatherObject = {}


---@class FWeatherDebugView
---@field CurrentWeather string
---@field WeatherStage string
---@field TotalElapsedTime number
---@field WeatherElapsedTime number
FWeatherDebugView = {}


---@class FWeatherDetailStatus
---@field CurrentWeather EWeatherStatusType
---@field CurrentElapsedTime number
---@field TotalTime number
FWeatherDetailStatus = {}
