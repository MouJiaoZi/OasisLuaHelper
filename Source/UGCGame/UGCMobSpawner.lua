---@meta

---怪物配置类型
---@class EUGCMobSpawnerConfigMode
---@field Blueprint number @蓝图配置
---@field MobGroup number @怪物组表
---@field Custom number @自定义
EUGCMobSpawnerConfigMode = {}


---刷怪器控制模式
---@class EUGCMobSpawnerContrMode
---@field SpawnerManager number @管理器控制
---@field MaxCountLimit number @最大数量控制
---@field None number @无控制
EUGCMobSpawnerContrMode = {}


---刷怪系统：怪物刷新配置
---@class FUGCMobSpawnerMobConfig
---@field ConfigMode EUGCMobSpawnerConfigMode @刷出怪物类型的配置方式
---@field MobClass AGenericCharacter @使用蓝图配置时，刷出的怪物类
---@field MobGroupID number @使用怪物组表时，怪物组表的ID
---@field CustomParam ULuaMapHelper<string, string> @使用自定义模式时，自定义参数列表
FUGCMobSpawnerMobConfig = {}


---刷怪系统：刷怪器
---@class AUGCMobSpawner: AActor
---@field bNeedSpawnerManager boolean @是否刷怪点是否能独立运行，还是必须依赖刷怪管理器. 废弃, 请使用SpawnerContrMode
---@field SpawnerContrMode EUGCMobSpawnerContrMode @刷怪器控制模式.
---@field MaxAliveCount number
---@field MobConfig FUGCMobSpawnerMobConfig @配置刷出的怪物
---@field bUseNavMesh boolean @是否优先在有移动网格的地面上刷新
---@field Range number @配置怪物的生成范围的半径
---@field Height number @配置刷新点位置与实际生成位置的最大高度差
---@field RandomRotYaw boolean @怪物的出生面向是否随机，否则使用刷新点的朝向
---@field MinSpawnCount number @配置总的最小刷怪数量
---@field MaxSpawnCount number @配置总的最大刷怪数量
---@field SpawnCD number @配置两次刷怪之间的时间间隔
---@field MobCountPerSpawn number @配置单次刷怪的数量
---@field bTraceGround boolean @是否保证怪物刷到地面上
---@field RemainingSpawnCount number
---@field SupplementedCount number
local AUGCMobSpawner = {}

---Event
---生效范围 服务器
---怪物刷出事件
---@param Mob AActor @输出的怪物
function AUGCMobSpawner:OnMobSpawn(Mob) end

---生效范围 服务器
---修改最小最大刷怪数量
---@param InMinSpawnCount number @修改后的最小刷怪数量
---@param InMaxSpawnCount number @修改后的最大刷怪数量
function AUGCMobSpawner:ModifyMinMaxSpawnCount(InMinSpawnCount, InMaxSpawnCount) end
