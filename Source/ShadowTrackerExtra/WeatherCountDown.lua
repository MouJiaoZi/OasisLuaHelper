---@meta

---@class FWeatherUIStatus
---@field WeatherStatus EWeatherStatusType
---@field PVENightBrush FSlateBrush
FWeatherUIStatus = {}


---@class FWeatherUIType
---@field UIType WeatherUICountDownType
---@field StatusList ULuaArrayHelper<FWeatherUIStatus>
FWeatherUIType = {}


---@class UWeatherCountDown: UUAEUserWidget
---@field WeatherUIConfig ULuaArrayHelper<FWeatherUIType>
---@field DayBrush FSlateBrush
---@field NightBrush FSlateBrush
---@field PVEDayBrush FSlateBrush
---@field PVEEventingBrush FSlateBrush
---@field PVENightBrush FSlateBrush
---@field DayC FLinearColor
---@field NightC FLinearColor
---@field CurrWeatherConfigIndex number
local UWeatherCountDown = {}
