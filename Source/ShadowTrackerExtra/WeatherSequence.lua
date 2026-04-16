---@meta

---@class EWeatherSequenceType
---@field None number @默认
---@field SunnyDay number @通用晴天
---@field Fog number @通用雾天
---@field Rain number @通用雨天
---@field Home_Sunny number @家园晴天
---@field Home_Fog number @家园雾天
---@field Home_Rain number @家园雨天
---@field Home_HeavyRain number @家园暴雨
---@field Home_Snow number @家园雪天
---@field Home_SnowStorm number @家园暴风雪
---@field Home_SandStorm number @家园沙尘暴
---@field Home_BrightMoon number @家园皎月
---@field Home_Aurora number @家园极光
---@field Home_ShootingStar number @家园流星雨
---@field BigWorld_Sunny number @大世界晴天
---@field BigWorld_Fog number @大世界雾天
---@field BigWorld_Rain number @大世界雨天
---@field BigWorld_HeavyRain number @大世界暴雨
---@field BigWorld_Snow number @大世界雪天
---@field BigWorld_SnowStorm number @大世界暴风雪
---@field BigWorld_SandStorm number @大世界沙尘暴
---@field BigWorld_BrightMoon number @大世界皎月
---@field BigWorld_Aurora number @大世界极光
---@field BigWorld_ShootingStar number @大世界流星雨
---@field Blizzard number @暴风雪
---@field OzoneDepletion number @臭氧层稀薄
---@field Hailstorm number @冰雹
---@field FreezingNight number @极寒之夜
---@field AuroraNight number @极光之夜
---@field BloodMoon number @血夜
---@field AcidRainNight number @酸雨夜
---@field ThunderstormNight number @闪电夜
---@field NightSunny number @夜晚晴天
EWeatherSequenceType = {}


---@class EWS_UnitType
---@field KeyFrame number
---@field Link number
EWS_UnitType = {}


---@class EWS_TimelineEventFuncType
---@field UIMsg number @CastUIMsg
---@field Tips number @游戏内Tip
---@field AkEvent number @播放音效
EWS_TimelineEventFuncType = {}


---@class FWS_KeyFrame
---@field StartTime number
---@field HourOfDay number
---@field Duration number
FWS_KeyFrame = {}


---@class FWS_Link
---@field BlendTime number
FWS_Link = {}


---@class FWS_Unit
---@field Type EWS_UnitType
---@field KeyFrame FWS_KeyFrame
---@field Link FWS_Link
FWS_Unit = {}


---@class FWS_UIMsgParams
---@field Message string
---@field ModuleName string
---@field bWithParams boolean
---@field Params ULuaArrayHelper<string>
FWS_UIMsgParams = {}


---@class FWS_TipsParams
---@field MsgID number
---@field bWithParams boolean
---@field Params ULuaArrayHelper<string>
FWS_TipsParams = {}


---@class FWS_AkEventParams
FWS_AkEventParams = {}


---@class FWS_TimelineEventFunc
---@field Type EWS_TimelineEventFuncType
---@field UIMsgParams FWS_UIMsgParams
---@field TipsParams FWS_TipsParams
---@field AkEventParams FWS_AkEventParams
FWS_TimelineEventFunc = {}


---@class FWS_TimelineEventEntry
---@field Time number
---@field EventFunc FWS_TimelineEventFunc
FWS_TimelineEventEntry = {}


---@class FWS_TimelineEffectFunc
---@field ScreenAppearancePaths ULuaArrayHelper<UScreenAppearanceProvider>
---@field bEnableLowQualityScreenAppearancePaths boolean
---@field LowQualityScreenAppearancePaths ULuaArrayHelper<UScreenAppearanceProvider>
FWS_TimelineEffectFunc = {}


---@class FWS_TimelineEffectEntry
---@field StartTime number
---@field EndTime number
---@field EffectFunc FWS_TimelineEffectFunc
FWS_TimelineEffectEntry = {}


---@class FWS_BGMParams
---@field AkSwitchState string
FWS_BGMParams = {}


---@class FWS_BGMHandle
---@field AkEventID number
---@field AkSwitchState string
FWS_BGMHandle = {}


---Save weather params as archive
---@class UWeatherStyle: UDataAsset
---@field Parameters FWeatherParameters
---@field Curves FWeatherParameterCurves
local UWeatherStyle = {}


---@class UWeatherSequence: UDataAsset
---@field WeatherSequenceConfig ULuaArrayHelper<FWS_Unit>
---@field TimelineEventConfig ULuaArrayHelper<FWS_TimelineEventEntry>
---@field TimelineEffectConfig ULuaArrayHelper<FWS_TimelineEffectEntry>
---@field BGM FWS_BGMParams
---@field Priority number
---@field Type EWeatherSequenceType
---@field bUseCirculation boolean
---@field MaterialBlendTime number
---@field DefaultPlaybackStatus EWeatherSequencePlaybackStatus
---@field DefaultPlaybackPosition number
local UWeatherSequence = {}
