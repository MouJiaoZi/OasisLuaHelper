---@meta

---@class FDesertStormMiniMapData
---@field NormalIconID number
---@field GrayIconID number
FDesertStormMiniMapData = {}


---@class ADesertStorm: AActor
---@field CurGameState string
---@field StormMiniMapData FDesertStormMiniMapData
---@field stormFadeOuterRadius number
---@field stormFadeInnerRadius number
---@field StormScreenAppearanceCfg FScreenAppearanceCfg
---@field outerRadius number
---@field playerCutRadius number
---@field soundRTPC string
---@field soundDelay number
---@field UseSpawnAirDropBox boolean
---@field stormRotateSpeed number
---@field bSpecialModel boolean
local ADesertStorm = {}

---@param IconID number
function ADesertStorm:ShowStormMiniMapMark(IconID) end

function ADesertStorm:HideStormMiniMapMark() end

---@param params FGameModeStateChangedParams
function ADesertStorm:HandleGameModeStateChanged(params) end

function ADesertStorm:AppearanceReset() end

function ADesertStorm:OnRep_CurGameStateChanged() end
