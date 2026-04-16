---@meta

---@class EUGCSpawnWaveStartCondition
---@field AllMobDie number
---@field LastWaveEnd number
EUGCSpawnWaveStartCondition = {}


---@class EUGCMobSpawnerManagerStartCondition
---@field None number @关卡加载
---@field Event number @事件触发
---@field FunctionCall number @手动调用
EUGCMobSpawnerManagerStartCondition = {}


---@class FUGCSpawnWaveSpawnerInfo
---@field bOverrideMobConfig boolean
---@field MobConfig FUGCMobSpawnerMobConfig
FUGCSpawnWaveSpawnerInfo = {}


---@class FUGCSpawnWave
---@field Spawners ULuaArrayHelper<FUGCSpawnWaveSpawnerInfo> @配置该波次包含的刷怪点
---@field WaveStartCondition EUGCSpawnWaveStartCondition @配置该波次的开始条件
---@field StartDelayTime number @配置该波次满足开始条件后延迟多久开始刷怪
FUGCSpawnWave = {}


---@class FOnUGCMobSpawnerManagerRemoveAliveMobs : ULuaMulticastDelegate
FOnUGCMobSpawnerManagerRemoveAliveMobs = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUGCMobSpawnerManagerRemoveAliveMobs:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 number
function FOnUGCMobSpawnerManagerRemoveAliveMobs:Broadcast(Param1, Param2) end


---刷怪系统：刷怪管理器
---@class AUGCMobSpawnerManager: AActor
---@field StartCondition EUGCMobSpawnerManagerStartCondition @配置刷怪管理器的启动方式
---@field EventName string @启动方式使用事件触发时，监听的GMP名
---@field MaxSpawnPerFrame number @配置刷怪管理器每帧刷怪的上限
---@field AliveMobsCheckDeltaTime number @配置刷怪管理器检查当前怪物存活情况的间隔
---@field SpawnWaves ULuaArrayHelper<FUGCSpawnWave> @配置刷怪的波次
---@field AliveMobs ULuaSetHelper<AActor>
local AUGCMobSpawnerManager = {}

function AUGCMobSpawnerManager:RegisterEvent() end

function AUGCMobSpawnerManager:UnRegisterEvent() end

---Event
---生效范围 服务器
---怪物刷出事件
---@param Mob AActor @刷出的怪物
function AUGCMobSpawnerManager:OnMobSpawn(Mob) end

---Event
---生效范围 服务器
---刷怪波次开始事件
---@param WaveIndex number @波次编号
function AUGCMobSpawnerManager:OnWaveStart(WaveIndex) end

---Event
---生效范围 服务器
---刷怪波次结束事件
---@param WaveIndex number @波次编号
function AUGCMobSpawnerManager:OnWaveEnd(WaveIndex) end

---Event
---生效范围 服务器
---所有波次结束事件
function AUGCMobSpawnerManager:OnAllWaveEnd() end

---Event
---生效范围 服务器
---所以波次怪物都已刷新并死亡事件
function AUGCMobSpawnerManager:OnAllMobDie() end

---生效范围 服务器
---启动刷怪管理器
function AUGCMobSpawnerManager:StartSpawnerManager() end

---生效范围 服务器
---重置刷怪管理器
---@param bDeleteAllMobs boolean @是否清除所有刷出的怪物
function AUGCMobSpawnerManager:ResetSpawnerManager(bDeleteAllMobs) end

---生效范围 服务器
---清理对刷出怪物的引用
---@param bDelete boolean @是否清除怪物
function AUGCMobSpawnerManager:CleanAllMobs(bDelete) end

---生效范围 服务器
---修改特定波次中特定刷新点的怪物配置覆盖
---@param InMobConfig FUGCMobSpawnerMobConfig @新的怪物配置
---@param WaveIndex number @波次编号
---@param SpawnerIndex number @刷新点编号
function AUGCMobSpawnerManager:SetMobConfigOverrideForSpawner(InMobConfig, WaveIndex, SpawnerIndex) end

---生效范围 服务器
---修改特定波次中所有刷新点的怪物配置覆盖
---@param InMobConfig FUGCMobSpawnerMobConfig @新的怪物配置
---@param WaveIndex number @波次编号
function AUGCMobSpawnerManager:SetMobConfigOverrideForWave(InMobConfig, WaveIndex) end

---生效范围 服务器
---修改所有波次的怪物配置覆盖
---@param InMobConfig FUGCMobSpawnerMobConfig @新的怪物配置
function AUGCMobSpawnerManager:SetMobConfigOverride(InMobConfig) end

---生效范围 服务器
---清除管理器所有的怪物配置覆盖
function AUGCMobSpawnerManager:CleanAllMobConfigOverride() end

---生效范围 服务器
---跳转到指定波次
---@param WaveIndex number
function AUGCMobSpawnerManager:JumpToWave(WaveIndex) end

function AUGCMobSpawnerManager:OnEventTrigger() end
