---@meta

---@class FScoreInfo
---@field CreditsID number
---@field Score number
FScoreInfo = {}


---@class ASTOccupationPlayerState: ASTExtraPlayerState
---@field OccupationID number
---@field OnOccupationIDChangeDelegate FOnOccupationIDChangeDelegate
---@field OccupationLevel number
---@field OnOccupationLevelChangeDelegate FOnOccupationLevelChangeDelegate
---@field OnEnterCDProtectDelegate FOnEnterCDProtectDelegate
---@field CardChangeProtectTime number
---@field CurrentHeroEquipFlow FHeroEquipFlowInfo
---@field bCanReport boolean
---@field FinalHeroId number
---@field FinalHeroLevel number
---@field HeroEquipStartTime number
---@field HeroSkillDatas ULuaArrayHelper<FHeroSkillData>
local ASTOccupationPlayerState = {}

---@param NewID number
---@param NewLevel number
function ASTOccupationPlayerState:SetOccupationIDAndLevel(NewID, NewLevel) end

---@param UseComp UOccupationManagerComponent
function ASTOccupationPlayerState:UseOccupationManager(UseComp) end

---@param DisuseComp UOccupationManagerComponent
function ASTOccupationPlayerState:DisuseOccupationManager(DisuseComp) end

function ASTOccupationPlayerState:ClientEnterCDProtect() end

function ASTOccupationPlayerState:OnOccupationIDChange() end

---@param PreLevel number
function ASTOccupationPlayerState:OnOccupationLevelChange(PreLevel) end

function ASTOccupationPlayerState:ResetHeroEquipFlow() end

function ASTOccupationPlayerState:ReportHeroEquipFlow() end

function ASTOccupationPlayerState:OnGameEnterFight() end

function ASTOccupationPlayerState:OnGameEnterFinish() end

---@param VictimKey number
---@param KillerKey number
---@param bIsAI boolean
function ASTOccupationPlayerState:OnPlayerKilled(VictimKey, KillerKey, bIsAI) end

---@param VictimKey number
---@param InstigatorKey number
---@param InFinalDamage number
function ASTOccupationPlayerState:OnPlayerTakeDamage(VictimKey, InstigatorKey, InFinalDamage) end

---@param SavorKey number
---@param InjuredKey number
function ASTOccupationPlayerState:OnPlayerRescueOthers(SavorKey, InjuredKey) end

---@param RespawnedPlayerKey number
---@param bIsAI boolean
function ASTOccupationPlayerState:OnPlayerRespawned(RespawnedPlayerKey, bIsAI) end

---@param HealerKey number
---@param InjuredKey number
---@param InHealAmount number
function ASTOccupationPlayerState:OnPlayerHealOthers(HealerKey, InjuredKey, InHealAmount) end

---@param EscapedPlayerKey number
function ASTOccupationPlayerState:OnPlayerPreEscape(EscapedPlayerKey) end

---@param InPlayerKey number
---@param HeroID number
---@param SkillID number
---@param RecordName string
---@param RecordValue number
function ASTOccupationPlayerState:OnReportHeroSkillRecord(InPlayerKey, HeroID, SkillID, RecordName, RecordValue) end

function ASTOccupationPlayerState:OnReportHeroRecord() end

---@param HeroID number
---@return number
function ASTOccupationPlayerState:FindHeroSkillDataIndex(HeroID) end

---@param ScoreInfoList ULuaArrayHelper<FScoreInfo>
function ASTOccupationPlayerState:RPC_SyncScoreInfoList(ScoreInfoList) end

---@param ScoreInfoList ULuaArrayHelper<FScoreInfo>
function ASTOccupationPlayerState:HandleSyncScoreList(ScoreInfoList) end
