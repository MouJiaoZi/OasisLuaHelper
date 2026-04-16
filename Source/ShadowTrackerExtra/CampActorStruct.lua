---@meta

---@class FCampPlayerLoc
---@field Index number @index loc -> player data
---@field X number
---@field Y number
---@field Z number
FCampPlayerLoc = {}


---@class FCampCaptainData
---@field Index number
---@field PlayerKey number
---@field RevivalTimes number
---@field LiveState ExtraPlayerLiveState
---@field Breath number
---@field BreathMax number
---@field MapMark FVector
FCampCaptainData = {}


---@class FCampPlayerData
---@field UID string
---@field PlayerKey number
---@field PlayerName string
---@field PlatformGender number
---@field CampID number
---@field Index number @history allocated index, reuse when player logout.
---@field TeamID number
---@field IdxInTeam number
---@field Dead number
---@field Spectator number
---@field Kill number
---@field Logout number
FCampPlayerData = {}


---@class FCampGroupPlayerData
---@field TeamID number
---@field bHasSurvival boolean
---@field bHasSpectator boolean
---@field PlayerDataList ULuaArrayHelper<FCampPlayerData>
FCampGroupPlayerData = {}


---@class FCampActorInfo
---@field CampType number @how many camp
---@field CampID number @my camp ID
FCampActorInfo = {}


---@class FCampBattleResultData
---@field CampRank number @dead reverse order
---@field CampType number
---@field SurviveCampNum number
---@field AllCaptainLogout number
---@field CampID number
---@field UIDList ULuaArrayHelper<number>
---@field Reason string @win or dead
FCampBattleResultData = {}
