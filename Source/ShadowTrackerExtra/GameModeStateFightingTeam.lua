---@meta

---@class UGameModeStateFightingTeam: UGameModeStateFighting
---@field EscapeTime number
---@field LeftEscapeTime number
local UGameModeStateFightingTeam = {}

---@return boolean
function UGameModeStateFightingTeam:ShouldWaitingForEscape() end

function UGameModeStateFightingTeam:StartEscapeCountingDown() end

function UGameModeStateFightingTeam:FinishEscapeCountingDown() end

function UGameModeStateFightingTeam:HandleEscapeCountingDown() end
