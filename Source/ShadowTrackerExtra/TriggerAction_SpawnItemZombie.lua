---@meta

---@class FZombieCfg
---@field BeginTime number
---@field SpawnInterval number
---@field UseRandomSpawn boolean
---@field SpotTypeProperties ULuaArrayHelper<FSpotTypeProperty>
FZombieCfg = {}


---@class FSpawnZombieTotalCfg
---@field Name string
---@field Location string
---@field Total number
FSpawnZombieTotalCfg = {}


---@class FSpawnItemZombieCfg
---@field bTotalUseCfg boolean
---@field Total number
---@field UseCheckTag boolean
---@field CheckTag string
---@field UseSupplementZombie boolean
---@field UseZombieLocationID boolean
---@field ZombieLocationID string
---@field UseZombieCfg boolean
---@field ZombieCfgList ULuaArrayHelper<FZombieCfg>
FSpawnItemZombieCfg = {}


---在要塞中固定1个刷点刷僵尸，按配置控制刷僵尸数量，频率
---@class UTriggerAction_SpawnItemZombie: UTriggerAction, ITriggerAction_SpawnItemInterface
---@field SpawnItemCfg FSpawnItemCfg
---@field SpawnItemZombieCfg FSpawnItemZombieCfg
---@field SpotDataSerialize FUAESpotDataSerialize
---@field SpawnZombieTotalCfgList ULuaArrayHelper<FSpawnZombieTotalCfg>
local UTriggerAction_SpawnItemZombie = {}
