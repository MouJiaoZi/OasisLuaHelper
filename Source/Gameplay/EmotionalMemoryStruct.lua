---@meta

---@class ERecordType
---@field Invalid number
---@field RescuedPlayer number
---@field FollowParachutePlayer number
---@field VoiceTypeID number
---@field TotalDamage number
---@field KillNum number
---@field CrawlTime number
---@field DeathType number
---@field DestroyedVehicleType number
---@field KillDistance number
---@field TreatmentAmount number
---@field KillType number
---@field KnockDownTimes number
---@field RemainingPlayer number
---@field DestroyedObject number
---@field WinnerTeammates number
ERecordType = {}


---@class FMemoryData
---@field RecordType ERecordType
---@field Value ULuaArrayHelper<string>
---@field Num ULuaArrayHelper<number>
FMemoryData = {}


---@class FMemoryDataArray
---@field MemoryDataArray ULuaArrayHelper<FMemoryData>
FMemoryDataArray = {}
