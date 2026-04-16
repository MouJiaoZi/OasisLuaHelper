---@meta

---通用日夜变化组件，wexuanhuang
---@class UAutomaticDayNightComponent: UGameModeBaseComponent
---@field AutomaticDayNightSystem FAutomaticDayNightSystem
local UAutomaticDayNightComponent = {}

---@return EWeatherSequenceType
function UAutomaticDayNightComponent:GetWeatherType() end

---@param InGameID number
---@return EWeatherSequenceType
function UAutomaticDayNightComponent:GetWeatherTypeOfGameID(InGameID) end

---@return number
function UAutomaticDayNightComponent:GetWeatherTime() end

---@param InPlayer APlayerController
function UAutomaticDayNightComponent:OnPlayerPostLogin(InPlayer) end

---@param Exiting APlayerController
function UAutomaticDayNightComponent:OnPlayerRealExit(Exiting) end

function UAutomaticDayNightComponent:Encode() end

function UAutomaticDayNightComponent:Decode() end

---@return FDateTime
function UAutomaticDayNightComponent:GetCurrentDayNightStartTime() end

---@return string
function UAutomaticDayNightComponent:GetForecast() end
