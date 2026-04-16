---@meta

---@class UWeatherBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local UWeatherBlueprintFunctionLibrary = {}

---Player lerp weather on local, not support reconnect, ob, replay. WeatherIndex start from 0, LerpValue range in [0, 1]
---@param WorldContextObject UObject
---@param WeatherIndex number
---@param LerpValue number
function UWeatherBlueprintFunctionLibrary:Client_PreviewWeather(WorldContextObject, WeatherIndex, LerpValue) end

---@param Character ASTExtraPlayerCharacter
function UWeatherBlueprintFunctionLibrary:DisableParticleEffect(Character) end

---@param Character ASTExtraPlayerCharacter
function UWeatherBlueprintFunctionLibrary:EnableParticleEffect(Character) end

---@param WorldContextObject UObject
---@return EWeatherSequenceType
function UWeatherBlueprintFunctionLibrary:GetNewWorldDSWeatherType(WorldContextObject) end

---@param WorldContextObject UObject
---@return number
function UWeatherBlueprintFunctionLibrary:GetNewWorldDSWeatherTime(WorldContextObject) end

---@param KeyWord string
function UWeatherBlueprintFunctionLibrary:GetWeatherSequenceAssets(KeyWord) end

---@param WorldContextObject UObject
---@return EWeatherStatusType
function UWeatherBlueprintFunctionLibrary:GetClientDynamicWeatherStatus(WorldContextObject) end
