---@meta

---@class FCircleList
---@field CircleList ULuaArrayHelper<number>
FCircleList = {}


---@class FDistanceList
---@field DistanceList ULuaArrayHelper<number>
FDistanceList = {}


---@class FAsianPlayerRecord
---@field Earnpoints ULuaMapHelper<number, number>
---@field TotalEarnpoints number
---@field LosePoints ULuaMapHelper<number, number>
---@field TargetCircle ULuaMapHelper<number, FCircleList>
---@field DestroyedTargetNum ULuaMapHelper<number, number>
---@field MaxVelocity number
---@field FinishScoreTime ULuaMapHelper<number, number>
---@field FinishStageTime ULuaMapHelper<number, number>
---@field FinishGameTime number
---@field EarnpointsByTargetType ULuaMapHelper<number, number>
---@field DestroyedTargetNumByTargetType ULuaMapHelper<number, number>
---@field TargetNumByWeapon ULuaMapHelper<number, number>
---@field TargetCenterNumByWeapon ULuaMapHelper<number, number>
---@field TargetDistanceByTargetType ULuaMapHelper<number, FDistanceList>
---@field VehicleAverageVelocityPerStage ULuaMapHelper<number, number>
---@field HitRatePerStage ULuaMapHelper<number, number>
FAsianPlayerRecord = {}


---@class AAsianGamesPlayerState: ASTExtraPlayerState
---@field bMatchOver boolean
---@field AthleteRecord FAsianPlayerRecord
---@field AthleteTlog ULuaMapHelper<number, FAsianGamesPlayerSegmentTlog>
---@field TotalLostPoint number
---@field CountryID number
---@field Country string
---@field CountryFullName string
---@field CountryIconURL string
local AAsianGamesPlayerState = {}

---@param Points number
---@param TeamMatchStage number
---@return boolean
function AAsianGamesPlayerState:PlayerIncreasePoints(Points, TeamMatchStage) end

---@param TeamMatchStage number
---@return boolean
function AAsianGamesPlayerState:BisPlayerCanIncreasePoints(TeamMatchStage) end

---@param Circle number
function AAsianGamesPlayerState:StatisticsShootingCircle(Circle) end

---@param Num number
---@param TargetTypeID number
function AAsianGamesPlayerState:StatisticsDestroyedTargetNum(Num, TargetTypeID) end

---@param TargetType number
---@param Points number
function AAsianGamesPlayerState:TlogEarnpointsByTargetType(TargetType, Points) end

---@param WeaponID number
---@param Num number
---@param bCenter boolean
function AAsianGamesPlayerState:TlogTargetNumByWeapon(WeaponID, Num, bCenter) end

---@param TargetType number
---@param Distance number
function AAsianGamesPlayerState:TlogTargetDistanceByTargetType(TargetType, Distance) end

function AAsianGamesPlayerState:ClientRPC_PlayerStartDecreasePoints() end

function AAsianGamesPlayerState:Receive_ClientRPC_PlayerStartDecreasePoints() end

---@param TeamChangeStageInfo FTeamChangeStageInfo
function AAsianGamesPlayerState:ClientRPC_TeamChangeStage(TeamChangeStageInfo) end

---@param TeamChangeStageInfo FTeamChangeStageInfo
function AAsianGamesPlayerState:Receive_ClientRPC_TeamChangeStage(TeamChangeStageInfo) end

---@param TeamChangeStageInfo FTeamChangeStageInfo
function AAsianGamesPlayerState:OnTeamChangeStage(TeamChangeStageInfo) end

function AAsianGamesPlayerState:OnRep_bMatchOver() end

function AAsianGamesPlayerState:ClientRPC_InvalidEnter() end

function AAsianGamesPlayerState:BP_TotalLostPointChange() end

function AAsianGamesPlayerState:Receive_ClientRPC_InvalidEnter() end

---@param Time number
function AAsianGamesPlayerState:RecordFinishGameTime(Time) end

function AAsianGamesPlayerState:OnRep_PlayerName() end

---@param TeamChangeStageInfo FTeamChangeStageInfo
function AAsianGamesPlayerState:ReceiveOnTeamChangeStage(TeamChangeStageInfo) end

---@return number
function AAsianGamesPlayerState:CalculatePlayerHitRate() end

---@return number
function AAsianGamesPlayerState:K2_GetCurSegmentTlogKey() end

function AAsianGamesPlayerState:HandleWeaponTlogData() end

function AAsianGamesPlayerState:CompleteTlogDataWhenGameOver() end

---@return number
function AAsianGamesPlayerState:GetMatchTime() end
