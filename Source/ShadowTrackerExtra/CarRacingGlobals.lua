---@meta

---@class FCarRacingUserRoadInfo
---@field PlayerUID number
---@field PlayerName string
---@field bHasFinished boolean
---@field TimeCost number
---@field Rank number
---@field Progress number
---@field NumFinishedRounds number
---@field CurrentCheckpointID number
---@field CurrentRoadID number
---@field Location FVector
---@field bInsideCurrentRoad boolean
---@field bOutsideRoadPhysxMat boolean
---@field PassedDistance number
---@field CurrentRoadAngle number
---@field OutsideRoadTimer number
---@field WrongAngleTimer number
---@field InAirTimer number
FCarRacingUserRoadInfo = {}


---@class FCarRacingCheckpointGraphNode
---@field CheckpointID number
---@field PrevNodes ULuaArrayHelper<number>
---@field NextNodes ULuaArrayHelper<number>
FCarRacingCheckpointGraphNode = {}


---@class FCarRacingRoadGraphNode
---@field RoadID number
---@field PrevNodes ULuaArrayHelper<number>
---@field NextNodes ULuaArrayHelper<number>
---@field AccumulatedDistance number
FCarRacingRoadGraphNode = {}


---@class FCarRacingRoadVergeCelebrationInfo
---@field ActorDistance number
FCarRacingRoadVergeCelebrationInfo = {}


---@class FCarRacingGameProgressRepData
---@field bHasFinished boolean
---@field NumTotalRounds number
---@field NumFinishedRounds number
---@field bOutsideRoads boolean
---@field bWrongDirection boolean
FCarRacingGameProgressRepData = {}


---@class FCarRacingLeaderBoardItem
---@field Rank number
---@field PlayerUID number
---@field PlayerName string
FCarRacingLeaderBoardItem = {}


---@class FCarRacingLeaderBoard
---@field Items ULuaArrayHelper<FCarRacingLeaderBoardItem>
FCarRacingLeaderBoard = {}


---@class UCarRacingFunctionLibrary: UBlueprintFunctionLibrary
local UCarRacingFunctionLibrary = {}

---@param InActor AActor
---@param InLocation FVector
---@param InRotation FRotator
function UCarRacingFunctionLibrary:TeleportActor(InActor, InLocation, InRotation) end
