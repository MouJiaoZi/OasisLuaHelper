---@meta

---@class EWeatherType
---@field EWeatherType_None number
---@field EWeatherType_Sunday number
---@field EWeatherType_Rainy number
---@field EWeatherType_Foggy number
---@field EWeatherType_Dark number
---@field EWeatherType_Night number
---@field EWeatherType_DayToNight number
---@field EWeatherType_Max number
EWeatherType = {}


---@class FWeatherLevelInfo
---@field WeatherID number
---@field WeatherLevelName string
---@field WeatherTime number
---@field WeatherSyncCount number
FWeatherLevelInfo = {}


---@class FUltimateHighWeatherLevelRedirection
---@field SrcWeatherLevelName string
---@field DstWeatherLevelName string
FUltimateHighWeatherLevelRedirection = {}


---@class UWeatherConfigComponent: UActorComponent, IConfigInterface
---@field bLoadWeatherLevel boolean
---@field bLoadPCWeatherLevel boolean
---@field UseShouldBlockOnLoad boolean
---@field UltimateHighWeatherLevelRedirections ULuaArrayHelper<FUltimateHighWeatherLevelRedirection>
---@field WeatherLevelInfo FWeatherInfo
---@field LastLoadedWeatherLevelName string
---@field DefaultWeatherLevelName string
---@field bDefaulLevelLoaded boolean
local UWeatherConfigComponent = {}

---@param LevelName string
---@param weatherid number
function UWeatherConfigComponent:LoadStreamLevel(LevelName, weatherid) end

---@param LevelName string
function UWeatherConfigComponent:UnloadStreamLevel(LevelName) end

function UWeatherConfigComponent:Init() end

function UWeatherConfigComponent:OnRep_WeatherSyncCount() end

function UWeatherConfigComponent:LoadWeatherLevel() end

function UWeatherConfigComponent:LoadDefaultWeatherLevel() end

function UWeatherConfigComponent:OnLoadStreamLevelCompleted() end

function UWeatherConfigComponent:OnUnLoadStreamLevelCompleted() end

function UWeatherConfigComponent:SyncWeatherLevelInfo() end
