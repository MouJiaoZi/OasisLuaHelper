---@meta

---@class ERegionTriggerType
---@field Tick number @Tick
---@field Box number @Box
ERegionTriggerType = {}


---@class ASTExtraWeatherVolume: AUAETriggerArea
---@field WeatherSequenceTemplate UWeatherSequence
---@field BlendWeatherParameters FBlendWeatherParameters
---@field TriggerType ERegionTriggerType
---@field CharacterList ULuaArrayHelper<ASTExtraBaseCharacter>
---@field LoginInAllPlayers ULuaArrayHelper<ASTExtraPlayerController>
local ASTExtraWeatherVolume = {}

---@param InputCharacter ASTExtraBaseCharacter
function ASTExtraWeatherVolume:PlayerEnter(InputCharacter) end

---@param InputCharacter ASTExtraBaseCharacter
function ASTExtraWeatherVolume:PlayerExit(InputCharacter) end

---@param NewWeatherSequence UWeatherSequence
---@param InputCharacter ASTExtraBaseCharacter
function ASTExtraWeatherVolume:OnChangeWeather(NewWeatherSequence, InputCharacter) end

---@param InPlayer APlayerController
function ASTExtraWeatherVolume:OnPlayerPostLogin(InPlayer) end
