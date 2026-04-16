---@meta

---@class EMikuRhythmGameActionType
---@field PersonalClick number
---@field PersonalLongPress number
---@field CooperateClick number
---@field CooperateLongPress number
EMikuRhythmGameActionType = {}


---@class FMikuRhythmGameRepFakePossessData
FMikuRhythmGameRepFakePossessData = {}


---@class FMikuRhythmGameAdditionalData
---@field Key string
---@field StringValue string
---@field FloatValue number
FMikuRhythmGameAdditionalData = {}


---@class FMikuRhythmGameCooperateActionData
---@field Timestamp number
---@field NoteType number
---@field NoteID number
---@field Score number
---@field AdditionalDataList ULuaArrayHelper<FMikuRhythmGameAdditionalData>
FMikuRhythmGameCooperateActionData = {}


---@class FMikuRhythmGameCompressedActionData
---@field NoteType number
---@field NoteID number
---@field Score number
FMikuRhythmGameCompressedActionData = {}


---@class FMikuRhythmGameCooperateHistory
---@field bSuccessA number
---@field bSuccessB number
---@field bIsLongPress number
---@field bTouchedByPlayerA number
---@field bTouchedByPlayerB number
---@field bHasAddedToScore number
FMikuRhythmGameCooperateHistory = {}


---@class FMikuRhythmGameTeamBonusRepData
---@field Bonus number
---@field EndTime number
FMikuRhythmGameTeamBonusRepData = {}


---@class FMikuRhythmGameTeamBonusInfo
---@field Bonus number
---@field FirstRequestTime number
---@field PlayerList ULuaArrayHelper<number>
---@field bInvalidated boolean
FMikuRhythmGameTeamBonusInfo = {}


---@class FMikuRhythmGameTeamBonusClickInfo
---@field Bonus number
FMikuRhythmGameTeamBonusClickInfo = {}


---@class FMikuRhythmGamePlayerSettlementData
---@field PlayerName string
---@field PersonalScore number
---@field MaxComboCount number
---@field PerfectCount number
---@field GreatCount number
---@field GoodCount number
---@field BadCount number
---@field MissCount number
---@field bHasReceived boolean
FMikuRhythmGamePlayerSettlementData = {}


---@class FMikuRhythmGameLocalPlayerStatistics
---@field PersonalScore number
---@field PartialTeamScore number
---@field MaxComboCount number
---@field PerfectCount number
---@field GreatCount number
---@field GoodCount number
---@field BadCount number
---@field MissCount number
---@field AdditionalDataList ULuaArrayHelper<FMikuRhythmGameAdditionalData>
FMikuRhythmGameLocalPlayerStatistics = {}


---@class UMikuRhythmGameEctypeData: UActivityEctypeData
---@field SyncPossessDataA FMikuRhythmGameRepFakePossessData
---@field SyncPossessDataB FMikuRhythmGameRepFakePossessData
---@field GameStartTime number
---@field MusicID number
---@field TeamBonusRepData FMikuRhythmGameTeamBonusRepData
---@field TeamScore number
---@field TeamBonusClickInfo FMikuRhythmGameTeamBonusClickInfo
---@field OwnerRoom UPKRoomObj
---@field PKRoomID number
---@field CooperateBonusMap ULuaMapHelper<number, number>
---@field CooperateSuccessCount number
---@field TeamBonusExpireTime number
---@field TeamBonusList ULuaArrayHelper<FMikuRhythmGameTeamBonusInfo>
---@field TeamBonusReqJudgeInterval number
---@field CooperateHistoryMap ULuaMapHelper<number, FMikuRhythmGameCooperateHistory>
---@field LastPartialTeamScoreA number
---@field LastPartialTeamScoreB number
---@field PlayerSettlementDataMap ULuaMapHelper<number, FMikuRhythmGamePlayerSettlementData>
---@field SettlementSkillClass UPersistEffectBase
---@field SettlementSkillLifeTime number
---@field bDelaySetupSubAnimInstance boolean
---@field SubAnimTypes ULuaArrayHelper<number>
---@field PendingSetupSubAnimInstanceMap ULuaMapHelper<ASTExtraBaseCharacter, UAnimInstance>
---@field CooperateResultSequenceNumber number
---@field ScoreBeforeTeamBonus number
local UMikuRhythmGameEctypeData = {}

function UMikuRhythmGameEctypeData:OnRep_SyncPossessDataA() end

function UMikuRhythmGameEctypeData:OnRep_SyncPossessDataB() end

---@param bPositionA boolean
---@param PossessData FMikuRhythmGameRepFakePossessData
function UMikuRhythmGameEctypeData:OnReceiveSyncPossessData(bPositionA, PossessData) end

---@param bSetup boolean
---@param PlayerCharacter ASTExtraBaseCharacter
---@param SubAnimClass UAnimInstance
function UMikuRhythmGameEctypeData:LocalSetupSubAnimInstance(bSetup, PlayerCharacter, SubAnimClass) end

function UMikuRhythmGameEctypeData:OnRep_RhythmGameActor() end

function UMikuRhythmGameEctypeData:OnRep_GameStartTime() end

function UMikuRhythmGameEctypeData:OnRep_MusicID() end

function UMikuRhythmGameEctypeData:OnRep_TeamBonusRepData() end

function UMikuRhythmGameEctypeData:OnRep_TeamScore() end

function UMikuRhythmGameEctypeData:OnRep_TeamBonusClickInfo() end

---@param PlayerController ASTExtraPlayerController
---@param ActionDataList ULuaArrayHelper<FMikuRhythmGameCooperateActionData>
---@param ExtraMsg ULuaArrayHelper<FMikuRhythmGameAdditionalData>
function UMikuRhythmGameEctypeData:OnReceivePlayerCooperateAction(PlayerController, ActionDataList, ExtraMsg) end

---@param PlayerController ASTExtraPlayerController
---@param ActionDataList ULuaArrayHelper<FMikuRhythmGameCompressedActionData>
---@param ExtraMsg ULuaArrayHelper<FMikuRhythmGameAdditionalData>
function UMikuRhythmGameEctypeData:OnReceivePlayerCompressedAction(PlayerController, ActionDataList, ExtraMsg) end

---@param PlayerController ASTExtraPlayerController
---@param Bonus number
function UMikuRhythmGameEctypeData:OnReceiveTeamBonusRequest(PlayerController, Bonus) end

---@param BonusInfo FMikuRhythmGameTeamBonusInfo
---@param OverrideTimestamp number
---@return boolean
function UMikuRhythmGameEctypeData:IsCooperateBonusValid(BonusInfo, OverrideTimestamp) end

---@param OverrideTimestamp number
---@return number
function UMikuRhythmGameEctypeData:GetCurrentTeamBonus(OverrideTimestamp) end

---@return number
function UMikuRhythmGameEctypeData:GetTeamBonusEndTime() end

function UMikuRhythmGameEctypeData:UpdateTeamBonusRepData() end

---@param PlayerController ASTExtraPlayerController
---@param PartialTeamScore number
function UMikuRhythmGameEctypeData:OnReceivePartialTeamScore(PlayerController, PartialTeamScore) end

---@param PlayerController ASTExtraPlayerController
---@param PlayerStatistics FMikuRhythmGameLocalPlayerStatistics
function UMikuRhythmGameEctypeData:OnReceivePlayerFinalPersonalStatistics(PlayerController, PlayerStatistics) end

---@param PlayerController ASTExtraPlayerController
function UMikuRhythmGameEctypeData:NotifyPlayerSettlement(PlayerController) end

---@param PlayerController ASTExtraPlayerController
---@return number
function UMikuRhythmGameEctypeData:GetPlayerIndex(PlayerController) end

---@param Bonus number
---@param AdditionalDataList ULuaArrayHelper<FMikuRhythmGameAdditionalData>
function UMikuRhythmGameEctypeData:MulticastBothPlayersClickedTeamBonusButton(Bonus, AdditionalDataList) end

---@param Bonus number
---@param AdditionalDataList ULuaArrayHelper<FMikuRhythmGameAdditionalData>
function UMikuRhythmGameEctypeData:MulticastBothPlayersClickedTeamBonusButton_BP(Bonus, AdditionalDataList) end

---@param AcquireScore number
function UMikuRhythmGameEctypeData:MulticastTeamBonusTimeEnd(AcquireScore) end

---@param AcquireScore number
function UMikuRhythmGameEctypeData:MulticastTeamBonusTimeEnd_BP(AcquireScore) end

---@param InPKRoom UPKRoomObj
function UMikuRhythmGameEctypeData:SetOwnerPKRoom(InPKRoom) end


---@class UMikuRhythmGameSkill: UPersistEffectWithState
---@field DefaultCompressedAction FMikuRhythmGameCompressedActionData
---@field bListenCharacterTransformUpdate boolean
local UMikuRhythmGameSkill = {}

function UMikuRhythmGameSkill:RequestQuitRhythmGame() end

---@param ActionDataList ULuaArrayHelper<FMikuRhythmGameCooperateActionData>
---@param ExtraMsg ULuaArrayHelper<FMikuRhythmGameAdditionalData>
function UMikuRhythmGameSkill:SendCooperateActionListToServer(ActionDataList, ExtraMsg) end

---@param ActionDataList ULuaArrayHelper<FMikuRhythmGameCompressedActionData>
---@param ExtraMsg ULuaArrayHelper<FMikuRhythmGameAdditionalData>
function UMikuRhythmGameSkill:SendCompressedActionListWithExtraMsgToServer(ActionDataList, ExtraMsg) end

---@param ActionDataList ULuaArrayHelper<FMikuRhythmGameCompressedActionData>
function UMikuRhythmGameSkill:SendCompressedActionListToServer(ActionDataList) end

---@param ActionData FMikuRhythmGameCompressedActionData
function UMikuRhythmGameSkill:SendCompressedActionToServer(ActionData) end

---@param Bonus number
function UMikuRhythmGameSkill:RequestTeamBonus(Bonus) end

---@param LocalStatistics FMikuRhythmGameLocalPlayerStatistics
function UMikuRhythmGameSkill:SendFinalPersonalStatisticsToServer(LocalStatistics) end

---@param PartialTeamScore number
function UMikuRhythmGameSkill:SendPartialTeamScoreToServer(PartialTeamScore) end

---@param bSelfSuccess boolean
---@param bPartnerSuccess boolean
---@param AdditionalDataList ULuaArrayHelper<FMikuRhythmGameAdditionalData>
function UMikuRhythmGameSkill:NotifyPlayerCooperateResult(bSelfSuccess, bPartnerSuccess, AdditionalDataList) end

---@param SequenceNumber number
---@param bSelfSuccess boolean
---@param bPartnerSuccess boolean
---@param AdditionalDataList ULuaArrayHelper<FMikuRhythmGameAdditionalData>
function UMikuRhythmGameSkill:NotifyPlayerCooperateResultUnreliable(SequenceNumber, bSelfSuccess, bPartnerSuccess, AdditionalDataList) end

---@param bSuccessA boolean
---@param bSuccessB boolean
---@param AdditionalDataList ULuaArrayHelper<FMikuRhythmGameAdditionalData>
function UMikuRhythmGameSkill:NotifyPlayerCooperateResult_BP(bSuccessA, bSuccessB, AdditionalDataList) end

---@param SequenceNumber number
---@param bSuccessA boolean
---@param bSuccessB boolean
---@param AdditionalDataList ULuaArrayHelper<FMikuRhythmGameAdditionalData>
function UMikuRhythmGameSkill:NotifyPlayerCooperateResultUnreliable_BP(SequenceNumber, bSuccessA, bSuccessB, AdditionalDataList) end

---@param InRootComponent USceneComponent
---@param UpdateTransformFlags number
---@param Teleport number
function UMikuRhythmGameSkill:OnCharacterTransformUpdated_BP(InRootComponent, UpdateTransformFlags, Teleport) end


---@class UMikuRhythmGameSettlementSkill: UPersistEffectBase
local UMikuRhythmGameSettlementSkill = {}

---@param MusicID number
---@param PlayerName string
---@param FinalTeamScore number
---@param PartnerSettlementData FMikuRhythmGamePlayerSettlementData
---@param AdditionalDataList ULuaArrayHelper<FMikuRhythmGameAdditionalData>
function UMikuRhythmGameSettlementSkill:ClientDisplaySettlementUI(MusicID, PlayerName, FinalTeamScore, PartnerSettlementData, AdditionalDataList) end

---@param MusicID number
---@param PlayerName string
---@param FinalTeamScore number
---@param PartnerSettlementData FMikuRhythmGamePlayerSettlementData
---@param AdditionalDataList ULuaArrayHelper<FMikuRhythmGameAdditionalData>
function UMikuRhythmGameSettlementSkill:ClientDisplaySettlementUI_BP(MusicID, PlayerName, FinalTeamScore, PartnerSettlementData, AdditionalDataList) end

function UMikuRhythmGameSettlementSkill:ReceiveSettlementDataAck() end
