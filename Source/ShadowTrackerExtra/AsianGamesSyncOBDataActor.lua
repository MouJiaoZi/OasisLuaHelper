---@meta

---@class FAsianGamesOBPlayerData
---@field PlayerKey number
---@field EarnPoints number
---@field HitRate number
---@field WeapenID number
---@field BulletID number
---@field BulletNumInClip number
---@field BulletNumInPkg number
FAsianGamesOBPlayerData = {}


---@class FAsianGamesOBTeamData
---@field TeamID number
---@field CurrentVehicle ASTExtraVehicleBase
---@field OBPlayerDataList ULuaArrayHelper<FAsianGamesOBPlayerData>
FAsianGamesOBTeamData = {}


---@class FAsianGamesPoints
---@field PlayerKey string
FAsianGamesPoints = {}


---@class AAsianGamesSyncOBDataActor: ASyncOBDataActor
---@field AsianGamesTeamDataList ULuaArrayHelper<FAsianGamesOBTeamData>
---@field OnAsianGamesTeamDataListDelegate FOnAsianGamesTeamDataListDelegate
local AAsianGamesSyncOBDataActor = {}

function AAsianGamesSyncOBDataActor:OnRep_AsianGamesTeamDataList() end

---@param InPlayerController ASTExtraPlayerController
---@param PlayerState AAsianGamesPlayerState
function AAsianGamesSyncOBDataActor:CollectAthleteInfo(InPlayerController, PlayerState) end

---@param InSortedList ULuaArrayHelper<FAsianGamesPoints>
function AAsianGamesSyncOBDataActor:RefreshIdxInTeam(InSortedList) end
