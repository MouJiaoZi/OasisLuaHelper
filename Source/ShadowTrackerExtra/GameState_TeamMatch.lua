---@meta

---@class AGameState_TeamMatch: ASTExtraGameStateBase
---@field bEnableEnemyAvatarOutline boolean
---@field LuaTickFreq number
local AGameState_TeamMatch = {}

---@param ExtraChar ASTExtraCharacter
function AGameState_TeamMatch:RegisterPostProcessMgr(ExtraChar) end

function AGameState_TeamMatch:OnPostProcessManagerIsReady() end

function AGameState_TeamMatch:LuaTick() end
