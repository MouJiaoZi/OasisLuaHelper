---@meta

---@class UFC_RedEyeEffect: UFeatureCustomModule
---@field ShowRedEyeName string
---@field ShowRedEye boolean
---@field ShowDelay number
---@field MaterialIndex number
---@field LightIntensionName string
---@field LevelIntensions ULuaMapHelper<number, number>
---@field LightColorName string
---@field LevelColors ULuaMapHelper<number, FColor>
local UFC_RedEyeEffect = {}

---@param WeatherMgr ADynamicWeatherMgr
---@param Event FWeatherChangeEvent
function UFC_RedEyeEffect:HandleDynamicWeatherChanged(WeatherMgr, Event) end
