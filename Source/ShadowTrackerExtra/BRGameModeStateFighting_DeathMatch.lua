---@meta

---@class UBRGameModeStateFighting_DeathMatch: UGameModeStateFightingTeam
---@field ClearResidueClassList ULuaArrayHelper<AActor>
---@field StopJoin_RemainTime number
---@field bGameEndByOnlyTeam boolean
local UBRGameModeStateFighting_DeathMatch = {}

function UBRGameModeStateFighting_DeathMatch:Enter() end

function UBRGameModeStateFighting_DeathMatch:Exit() end

---@param VictimerKey number
---@param KillerKey number
---@param bIsAI boolean
function UBRGameModeStateFighting_DeathMatch:OnKilled(VictimerKey, KillerKey, bIsAI) end

---@param InPlayer APlayerController
function UBRGameModeStateFighting_DeathMatch:PlayerLogout(InPlayer) end

---@param DeltaTime number
function UBRGameModeStateFighting_DeathMatch:Execute(DeltaTime) end

function UBRGameModeStateFighting_DeathMatch:PlayersInfoRecord() end
