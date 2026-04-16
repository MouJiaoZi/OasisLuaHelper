---@meta

---@class UPeakCompetitionComponent: UGameModeBaseComponent
---@field PlayerStageKillRecordMap ULuaMapHelper<number, FPeakCompetitionPlayerRecord>
local UPeakCompetitionComponent = {}

---@param InModeBase ABattleRoyaleGameModeBase
---@param InKiller AController
---@param InVictimPlayer AController
function UPeakCompetitionComponent:RecordKillEvent(InModeBase, InKiller, InVictimPlayer) end

---@param InPlayerKey number
---@return FPeakCompetitionPlayerRecord
function UPeakCompetitionComponent:GetStageKillRecord(InPlayerKey) end
