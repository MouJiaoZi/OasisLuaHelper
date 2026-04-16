---@meta

---@class ASTPVEPlayerState: ASTExtraPlayerState
---@field KillStreakNum number
---@field MonsterKillTotalNum number
---@field MonsterHeadShootKillTotalNum number
---@field MonsterKillNumMap ULuaMapHelper<number, number>
---@field MonsterDamageAmount number
---@field DamageAmountTotal number
---@field DamageFromMonsterAmount number
---@field ZombieKillFlow ULuaArrayHelper<FZombieKillFlowData>
---@field SurvivalSeconds number
local ASTPVEPlayerState = {}

function ASTPVEPlayerState:OnRep_KillStreakNum() end

---@param InDamage number
function ASTPVEPlayerState:AddDamageAmount(InDamage) end

---@return number
function ASTPVEPlayerState:GetMonsterDamageAmount() end

---@return number
function ASTPVEPlayerState:GetDamageAmount() end
