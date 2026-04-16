---@meta

---@class FCharacterAboutDeath
---@field _is_ViewTarget boolean
---@field _player_key number
---@field _player_name string
FCharacterAboutDeath = {}


---@class UReplayWidgetDeath: UReplayWidgetBase
---@field bNeedShowDamage boolean
---@field VictimPlayerName string
---@field VictimHeadWidgetPath string
local UReplayWidgetDeath = {}

function UReplayWidgetDeath:OnShowDamageUI() end

function UReplayWidgetDeath:OnClickContinue() end
