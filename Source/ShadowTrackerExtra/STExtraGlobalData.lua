---@meta

---@class EGameMap
---@field NoMap number
---@field SurviveRoot number
---@field SurviveTestRoot number
---@field SurviveRCity number
EGameMap = {}


---@class FGM
---@field GrassEnable number
FGM = {}


---@class USTExtraGlobalData: UBlueprintFunctionLibrary
---@field GMData FGM
---@field GameMap EGameMap
---@field bIsUpdateRCityWeather boolean
---@field FilterEmptyCurve boolean
local USTExtraGlobalData = {}

---@return string
function USTExtraGlobalData:CurVersionNumber() end

---@param UID string
---@param bNotAutoPlay number
function USTExtraGlobalData:SetEmoteSetting(UID, bNotAutoPlay) end

---@param UID string
---@return boolean
function USTExtraGlobalData:GetEmoteSetting(UID) end

---@param UID string
---@param WeaponID number
function USTExtraGlobalData:SetLobbyWeaponID(UID, WeaponID) end

---@param UID string
---@return number
function USTExtraGlobalData:GetLobbyWeaponID(UID) end
