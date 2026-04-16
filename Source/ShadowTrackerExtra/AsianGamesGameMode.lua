---@meta

---@class EAsianGamesTeamColor
---@field Invalid number
---@field Purple number
---@field Azure number
---@field Yellow number
---@field Red number
EAsianGamesTeamColor = {}


---@class FAsianCheckPointInfo
---@field CheckPointID number
---@field CheckPointType ECheckPointType
---@field TargetScore number
---@field Location FVector
FAsianCheckPointInfo = {}


---@class FAsianTeamInfo
---@field TeamID number
---@field TeamCurrentStage FAsianCheckPointInfo
---@field TeamCurrentScoreStage FAsianCheckPointInfo
---@field StageProgress number
---@field StageTotal number
---@field Stage number
---@field CompletedTime number
---@field AccCompletedTime number
---@field OverTime number
---@field bOver number
FAsianTeamInfo = {}


---@class FAsianTeamInfoLowFrequency
---@field TeamID number
---@field TeamColor EAsianGamesTeamColor
---@field CountryID number
---@field Country string
---@field CountryFullName string
---@field CountryIconURL string
---@field VehicleSkinID number
FAsianTeamInfoLowFrequency = {}


---@class FAsianTeamInfoHighFrequency
---@field TeamID number
---@field TeamCurrentPoints number
---@field TeamEarnPoints number
---@field TeamLosePoints number
---@field TeamOrder number
---@field WorstLocation FVector
---@field WorstRotation FRotator
FAsianTeamInfoHighFrequency = {}


---@class FAsianGamePlayerRankInfo
---@field CheckPointID number
---@field bCheckScore number
---@field TeamID number
---@field TeamCurrentPoints number
---@field DistanceAtTrack number
---@field WorstLocation FVector
---@field WorstRotation FRotator
FAsianGamePlayerRankInfo = {}


---@class FAsianGamePlayerLastLegal
---@field DistanceAtTrack number
FAsianGamePlayerLastLegal = {}


---@class FAsianGamePlayerTrackInfo
---@field LastLegal FAsianGamePlayerLastLegal
---@field AsianGameTracks ULuaArrayHelper<UAsianGameTrackComponent>
FAsianGamePlayerTrackInfo = {}


---@class FTeamChangeStageInfo
---@field TeamID number
---@field CompletedTime number
---@field AccCompletedTime number
---@field StageProgress number
---@field StageTotal number
---@field Stage number
FTeamChangeStageInfo = {}


---@class AAsianGamesGameMode: ABattleRoyaleGameModeTeam
---@field GameStartPlayerNum number
---@field DistSquaredDeviation number
---@field CheckPointList ULuaArrayHelper<ACheckPointActor>
---@field CheckScorePointList ULuaArrayHelper<ACheckPointActor>
---@field PlayerTrackInfos ULuaMapHelper<ASTExtraPlayerController, FAsianGamePlayerTrackInfo>
---@field PlayerRankInfos ULuaArrayHelper<FAsianGamePlayerRankInfo>
---@field OnTeamChangeStageDelegate FOnTeamChangeStageDelegate
---@field TestSpawnTargetDelegate FTestSpawnTargetDelegate
---@field TeamLastStageCompletedTime ULuaMapHelper<number, number>
---@field SuccessTeam ULuaArrayHelper<number>
---@field FailTeam ULuaArrayHelper<number>
---@field ExitTeam ULuaArrayHelper<number>
---@field bUseHighExitRestrictions boolean
---@field AsianGameTrackPathID number
---@field bEnableBlockNonTeammates boolean
---@field JumpPoints ULuaMapHelper<number, FVector2D>
---@field FlyDistance number
---@field PlaneHeight number
---@field PlaneSpeed number
---@field CanOpenParachuteHeight number
---@field NetServerMaxTickRate number
---@field VehicleRepRate number
---@field PawnRepRate number
---@field ServerDesiredSocketReceiveBufferBytes number
---@field OpenNewFilter number
---@field Stream FRandomStream
local AAsianGamesGameMode = {}

---@param NewPlayer APlayerController
function AAsianGamesGameMode:ReceivePostLogin(NewPlayer) end

---@param Exiting AController
function AAsianGamesGameMode:ReceiveLogout(Exiting) end

---@param InstigatorPlayerState AAsianGamesPlayerState
function AAsianGamesGameMode:MinusPoints(InstigatorPlayerState) end

---@param PlayerKey number
function AAsianGamesGameMode:PersonMatchOver(PlayerKey) end

---@param TeamID number
function AAsianGamesGameMode:TeamMatchOver(TeamID) end

---@param TeamID number
function AAsianGamesGameMode:TeamChangeStage(TeamID) end

---@param TeamID number
---@return number
function AAsianGamesGameMode:GetTeamCurrentPoints(TeamID) end

---@param TeamID number
---@return number
function AAsianGamesGameMode:GetTeamTotalPoints(TeamID) end

---@param TeamID number
---@return number
function AAsianGamesGameMode:GetSinglePenaltyScore(TeamID) end

---@param TeamID number
---@return number
function AAsianGamesGameMode:GetTeamStage(TeamID) end

---@param PlayerKey number
---@return boolean
function AAsianGamesGameMode:IsPersonMatchOver(PlayerKey) end

---@param TeamID number
---@return boolean
function AAsianGamesGameMode:IsTeamMatchOver(TeamID) end

---@param TeamID number
---@param TeamInfo FAsianTeamInfo
---@return boolean
function AAsianGamesGameMode:GetTeamInfoByTeamID(TeamID, TeamInfo) end

---@param PlayerKey number
---@param bSuccess boolean
function AAsianGamesGameMode:PersonSettlement(PlayerKey, bSuccess) end

---@param TeamID number
---@param bSuccess boolean
function AAsianGamesGameMode:TeamSettlement(TeamID, bSuccess) end

function AAsianGamesGameMode:GameSettlement() end

function AAsianGamesGameMode:InitCheckPoints() end

function AAsianGamesGameMode:InitTeamStage() end

function AAsianGamesGameMode:UpdateTeamRank() end

function AAsianGamesGameMode:UpdateTeamCurrentStageState() end

---@param Vehicle ASTExtraVehicleBase
---@param VehicleAvatarID number
function AAsianGamesGameMode:ChangeVehicleAvatar(Vehicle, VehicleAvatarID) end

---@param PlayerKey number
---@return number
function AAsianGamesGameMode:GetPlayerTotalShootNum(PlayerKey) end

---@param PlayerKey number
---@param WeaponID number
---@return number
function AAsianGamesGameMode:GetPlayerSpecificWeaponShootNum(PlayerKey, WeaponID) end

---@param PlayerStateList ULuaArrayHelper<AAsianGamesPlayerState>
---@param TargetType number
function AAsianGamesGameMode:TlogStatisticsTargetResult(PlayerStateList, TargetType) end

function AAsianGamesGameMode:GoToNextState() end

---@return boolean
function AAsianGamesGameMode:CheckIfMatchGameSettlementCondition() end

---@param result string
---@param teamID number
---@return boolean
function AAsianGamesGameMode:AddUniqueResult(result, teamID) end

---@param TeamID number
---@return number
function AAsianGamesGameMode:GetTeamOrder(TeamID) end

function AAsianGamesGameMode:CalculatePlaneParam() end

function AAsianGamesGameMode:OnAllPlayerLeavePlane() end

---@param Track UAsianGameTrackComponent
---@param EnteredCharacter ASTExtraBaseCharacter
function AAsianGamesGameMode:CheckPlayerAsianGameTrackState(Track, EnteredCharacter) end

---@param PlayerKey number
---@return number
function AAsianGamesGameMode:GetPlayerAverageVelocity(PlayerKey) end

---@param OldAsianGameTrackManager AAsianGameTrackManager
function AAsianGamesGameMode:OnAsianGameTrackManagerValueChanged(OldAsianGameTrackManager) end

---@param AsianGameTrackContainerComponent UAsianGameTrackContainerComponent
function AAsianGamesGameMode:OnAsianGameTrackContainerComponentLinksFirstTrimmed(AsianGameTrackContainerComponent) end
