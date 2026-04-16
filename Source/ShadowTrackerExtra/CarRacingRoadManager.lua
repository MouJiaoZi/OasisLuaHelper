---@meta

---@class ECarRacingRoadManagerState
---@field None number
---@field GameStart number
---@field Running number
---@field GameOver number
ECarRacingRoadManagerState = {}


---@class UCarRacingRoadManager: UGameModeBaseComponent
---@field UserFinishedAllRoundsDelegate FUserFinishedAllRoundsDelegate
---@field NumTotalRounds number
---@field WrongAngleThreshold number
---@field WrongAngleRelocationTime number
---@field OutsideRoadRelocationTime number
---@field InAirTimeRelocationTime number
---@field PlayerAutoPlayBehaviorTreePath UBehaviorTree
---@field PlayerAutoPlayTime number
---@field TotalDistance number
---@field RoadManagerState ECarRacingRoadManagerState
---@field UserRoadInfos ULuaArrayHelper<FCarRacingUserRoadInfo>
---@field AuthLeaderBoard FCarRacingLeaderBoard
---@field CheckpointGraphNodes ULuaArrayHelper<FCarRacingCheckpointGraphNode>
---@field RoadGraphNodes ULuaArrayHelper<FCarRacingRoadGraphNode>
---@field RoadVergeCelebrationInfos ULuaArrayHelper<FCarRacingRoadVergeCelebrationInfo>
---@field StartCheckpointID number
---@field FinalCheckpointID number
---@field RootRoadID number
local UCarRacingRoadManager = {}

---@param CheckpointActor ACarRacingCheckpointActor
function UCarRacingRoadManager:RegisterCheckpointActor(CheckpointActor) end

---@param RoadActor ACarRacingRoadActor
function UCarRacingRoadManager:RegisterRoadActor(RoadActor) end

---@param CelebrationActor ACarRacingRoadVergeCelebrationActor
function UCarRacingRoadManager:RegisterRoadVergeCelebrationActor(CelebrationActor) end

---@param InPlayer APlayerController
function UCarRacingRoadManager:OnPlayerPostLogin(InPlayer) end

---@param InPlayerKey number
---@param InAIC AFakePlayerAIController
function UCarRacingRoadManager:OnReceivedAICAdd(InPlayerKey, InAIC) end

function UCarRacingRoadManager:NotifyGameStart() end

function UCarRacingRoadManager:NotifyStartRunning() end

function UCarRacingRoadManager:NotifyGameOver() end

---@param PlayerUID number
---@param bIsRequest boolean
function UCarRacingRoadManager:RelocatePlayer(PlayerUID, bIsRequest) end

---@param PlayerUID number
function UCarRacingRoadManager:GMForceUserFinishAllRounds(PlayerUID) end

---@param OutErrorMessage string
---@return boolean
function UCarRacingRoadManager:BuildRoadAndCheckpointGraph(OutErrorMessage) end

function UCarRacingRoadManager:BuildLeaderBoard() end

---@param UserRoadInfo FCarRacingUserRoadInfo
function UCarRacingRoadManager:HandleUserFailToFinish(UserRoadInfo) end

function UCarRacingRoadManager:RefreshUserInfos() end

function UCarRacingRoadManager:RefreshUserRanks() end

---@param DeltaTime number
function UCarRacingRoadManager:TickUserRelocation(DeltaTime) end

function UCarRacingRoadManager:ReplicateUserInfos() end

function UCarRacingRoadManager:CheckRoadVergeCelebration() end

---@param PC AController
---@return FCarRacingUserRoadInfo
function UCarRacingRoadManager:GetPlayerCarRacingUserRoadInfo(PC) end
