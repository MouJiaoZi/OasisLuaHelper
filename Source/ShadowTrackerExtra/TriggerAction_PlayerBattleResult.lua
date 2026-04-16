---@meta

---@class UTriggerAction_PlayerBattleResult: UTriggerAction
local UTriggerAction_PlayerBattleResult = {}

---@param PlayerKey number
function UTriggerAction_PlayerBattleResult:HandlePlayerBattleResult(PlayerKey) end

---@param PlayerKey number
---@param Reason string
function UTriggerAction_PlayerBattleResult:HandlePlayerBattleResult_Internal(PlayerKey, Reason) end
