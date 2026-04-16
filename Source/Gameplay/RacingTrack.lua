---@meta

---@class FPlayerRacingRecord
---@field PlayerKey number
---@field Score number
---@field Duration number
FPlayerRacingRecord = {}


---@class FRacingRound
FRacingRound = {}


---@class ARacingTrack: AActor
---@field TrackTag string
---@field RaceRounds number
---@field RaceTotalTime number
---@field VehicleClass APawn
---@field PlayerRacingRecords ULuaArrayHelper<FPlayerRacingRecord>
---@field AllRacingPlayers ULuaMapHelper<number, AController>
local ARacingTrack = {}

function ARacingTrack:PreStartRace() end

function ARacingTrack:StartRace() end

function ARacingTrack:OnRep_PlayerRacingRecords() end
