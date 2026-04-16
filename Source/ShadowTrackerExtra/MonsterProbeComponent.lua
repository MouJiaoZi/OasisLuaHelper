---@meta

---@class FMonsterGropDataDetail
---@field PawnID number
---@field MonsterNumber number
FMonsterGropDataDetail = {}


---@class FSpawnGroupItemInfo
---@field PawnGroupID number
---@field PawnPercent number
---@field MonsterGroupDetailInfos ULuaArrayHelper<FMonsterGropDataDetail>
FSpawnGroupItemInfo = {}


---@class FSpawnTableData
---@field PawnID number
---@field PathName string
---@field MetaData string
FSpawnTableData = {}


---@class FSpawnByCharacterLocData
---@field SpawnRandomDistance number
---@field NoAIAttackTimeDelt number
---@field DistanceNoEnemy number
---@field HpPercentage number
---@field MaxSpawnNum number
FSpawnByCharacterLocData = {}


---@class UMonsterProbeComponent: UGameModeProbeComponent
---@field TimeToSpawnPawn number
---@field SpawnGroupInfoList ULuaArrayHelper<FSpawnGroupItemInfo>
---@field PawnTableData ULuaMapHelper<number, FSpawnTableData>
---@field SpawnByCharacterData FSpawnByCharacterLocData
---@field GroupId number
---@field SpawnDisRang number
---@field RefreshMonsterParm_NoMeetEnemiesTime number
---@field RefreshMonsterParm_DistanceFromPlayers number
---@field RefreshMonsterParm_RemainHealthRatio number
local UMonsterProbeComponent = {}

function UMonsterProbeComponent:InitialItemTable() end
