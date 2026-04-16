---@meta

---@class UChampionStateChecker: UObject
---@field FloatGamemodeWhitelist ULuaArrayHelper<string>
---@field FloatAttachmentWhitelist ULuaArrayHelper<string>
---@field InvincibleGamemodeWhiteList ULuaArrayHelper<string>
---@field InvincibleAttachmentWhiteList ULuaArrayHelper<string>
---@field DamageScaleGamemodeWhiteList ULuaArrayHelper<string>
---@field DamageScaleBuffWhiteList ULuaArrayHelper<string>
---@field DamageScaleValidTimeSeconds number
---@field DeadPawnGamemodeWhitelist ULuaArrayHelper<string>
---@field TheLastTeamGamemodeWhitelist ULuaArrayHelper<string>
---@field AllTeamResultsGamemodeWhitelist ULuaArrayHelper<string>
---@field PlayerResultGamemodeWhitelist ULuaArrayHelper<string>
local UChampionStateChecker = {}

---@param PlayerKey number
---@param Reason string
function UChampionStateChecker:CheckRemainCharacterState(PlayerKey, Reason) end

---@param PlayerKey number
---@param Reason string
function UChampionStateChecker:CheckChampionCharacterState(PlayerKey, Reason) end

---@param InCha ASTExtraBaseCharacter
---@param MsgTag string
---@param CurCicleIndex number
---@param CheckParachute boolean
function UChampionStateChecker:ReTestFloat(InCha, MsgTag, CurCicleIndex, CheckParachute) end

function UChampionStateChecker:CheckAllTeamResults() end

---@param TeamID number
---@param Reason string
function UChampionStateChecker:CheckTeamResult(TeamID, Reason) end
