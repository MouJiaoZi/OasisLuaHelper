---@meta

---@class ASTBountyHunterPlayerState: ASTExtraPlayerState
---@field DragonBreathCastTimes number @玩家单人施放龙息弹的次数
---@field HunterRevivalDataFlow FHunterRevivalDataFlow
local ASTBountyHunterPlayerState = {}

---@return number
function ASTBountyHunterPlayerState:GetBountyGoldCount() end
