---@meta

---@class FWeatherSequenceClip
---@field BeginTime number
---@field EndTime number
FWeatherSequenceClip = {}


---@class FWeatherSequenceAggregation
---@field WeatherSequenceClips ULuaArrayHelper<FWeatherSequenceClip>
FWeatherSequenceAggregation = {}


---@class FWeatherSequenceAggregationRT
FWeatherSequenceAggregationRT = {}


---@class FWeatherAggregationControlMember
---@field RunID number
FWeatherAggregationControlMember = {}


---@class FWeatherAggregationControlSystem
---@field AggregationRTList ULuaArrayHelper<FWeatherSequenceAggregationRT>
---@field MemberList ULuaArrayHelper<FWeatherAggregationControlMember>
---@field MaxRunID number
FWeatherAggregationControlSystem = {}


---@class FDayNightRandomConfig
---@field Probability number
---@field DurationHours number
---@field bWithRestriction boolean
---@field RestrictionUpperBound number
---@field RestrictionLowerBound number
FDayNightRandomConfig = {}


---@class FGeneratedDayNightInfo
---@field Aggregation FWeatherSequenceAggregation
---@field GameID number
---@field DayNightID number
FGeneratedDayNightInfo = {}


---@class FGeneratedDayNightCache
---@field GeneratedDayNightInfos ULuaArrayHelper<FGeneratedDayNightInfo>
FGeneratedDayNightCache = {}


---@class FAutomaticDayNightSystem
---@field ControlSystem FWeatherAggregationControlSystem
---@field Configs ULuaArrayHelper<FDayNightRandomConfig>
---@field Code string
---@field DayNightPeriod number
---@field HoursOffset number
---@field Speed number
---@field GameID number
---@field CodeStack ULuaArrayHelper<string>
---@field GeneratedDayNightCache FGeneratedDayNightCache
FAutomaticDayNightSystem = {}
