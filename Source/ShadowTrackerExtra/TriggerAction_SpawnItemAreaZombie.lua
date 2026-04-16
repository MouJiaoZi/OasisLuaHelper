---@meta

---玩家进入某个区域触发刷僵尸, feishen, 20201001 在多个固定区域刷僵尸，每个区域刷点随机； 多个固定区域统一僵尸数量控制； 注意： 1. 刷点的GroupType必须为0（A）, SpotType必须为0（A） 2. 刷点tag的格式为xxx_0, xxx_1..., 其中的0，1表示区域0， 1，与AreaZombieList下标对应 3. 玩家进入和离开事件格式为Enter_0, Leave_0, 其中Enter_0表示进入0区域，Leave_0表示离开0区域 history: 1. 按僵尸类型比例和权重刷，需要记录当前存活僵尸的数量，20210101，feishen
---@class FLiveZombieValueCategoryCfg
---@field Count number
---@field Weight number
FLiveZombieValueCategoryCfg = {}


---@class FAreaZombieCfg
---@field TotalZombeForOnePlayer number @每个区域给每个玩家刷僵尸的总量
---@field UseLiveZombieRatioWeightControl boolean
---@field LiveZombieRatioWeightMap ULuaMapHelper<string, FLiveZombieValueCategoryCfg> @僵尸存活类型比例控制
---@field PlayerControllerList ULuaArrayHelper<ASTExtraPlayerController> @当前区域有多少个玩家，当区域没有玩家时，停止刷僵尸
FAreaZombieCfg = {}


---@class UTriggerAction_SpawnItemAreaZombie: UTriggerAction, ITriggerAction_SpawnItemInterface
---@field SpawnItemCfg FSpawnItemCfg
---@field SpawnZombieTotal number
---@field SpawnZombieFrequnce number
---@field UseSpawnZombieCD boolean
---@field SpawnZombieCDCount number
---@field SpawnZombieCDTime number
---@field AreaZombieList ULuaArrayHelper<FAreaZombieCfg> @通过spot点tag编号来分区域
---@field UseCalculateByPlayer boolean
---@field StopSpawn boolean
---@field SpotDataSerialize FUAESpotDataSerialize
local UTriggerAction_SpawnItemAreaZombie = {}
