---@meta

---@class EUGCItemSpawnerManagerStartCondition
---@field None number @关卡加载
---@field Event number @事件触发
---@field FunctionCall number @手动调用
EUGCItemSpawnerManagerStartCondition = {}


---物资生成管理器上每个刷新点的配置
---@class FUGCItemSpawnerInfo
---@field bOverrideItemConfig boolean @是否覆盖该刷新点上的物资配置，开启则刷新点上的配置无效，使用这里的配置
---@field ItemConfig FUGCItemSpawnerItemConfig @配置刷新点上的物资配置
---@field Items ULuaArrayHelper<AActor>
FUGCItemSpawnerInfo = {}


---生成系统：物资生成管理器
---@class AUGCItemSpawnerManager: AActor
---@field StartCondition EUGCItemSpawnerManagerStartCondition @管理器的启动方式
---@field EventName string @启动方式选择事件触发时，监听的GMP事件名
---@field ItemSpawners ULuaArrayHelper<FUGCItemSpawnerInfo> @配置刷新点
---@field MaxWaveInternalTime number @配置两次刷新之间的最大时间间隔
---@field MinWaveInternalTime number @配置两次刷新之间的最小时间间隔
---@field MaxSpawnerNumPerWave number @配置同一时间有物资刷出的刷新点的最大数量
---@field MinSpawnerNumPerWave number @配置同一时间有物资刷出的刷新点的最小数量
---@field TotalSpawnWaveCount number @物资刷新的总轮数，设为-1则无限刷新
---@field bOverrideItemConfig boolean @是否覆盖所有刷新点上的物资配置
---@field ItemConfig FUGCItemSpawnerItemConfig @配置所有刷新点上的物资配置
local AUGCItemSpawnerManager = {}

---Event
---生效范围 服务器
---物品刷新
---@param Items ULuaArrayHelper<AActor> @本轮刷新的物品
function AUGCItemSpawnerManager:OnItemsSpawn(Items) end

---生效范围 服务器
---启动管理器
function AUGCItemSpawnerManager:StartSpawnerManager() end

---生效范围 服务器
---重置管理器
function AUGCItemSpawnerManager:ResetSpawnerManager() end

---生效范围 服务器
---清理刷出的物资
function AUGCItemSpawnerManager:CleanAllItem() end

---生效范围 服务器
---修改特定刷新点的物资配置
---@param InItemConfig FUGCItemSpawnerItemConfig @新的物资刷新配置
---@param SpawnerIndex number
function AUGCItemSpawnerManager:SetItemConfigOverrideForSpawner(InItemConfig, SpawnerIndex) end

---生效范围 服务器
---修改所有刷新点的物资配置
---@param InItemConfig FUGCItemSpawnerItemConfig @新的物资刷新配置
function AUGCItemSpawnerManager:SetItemConfigOverride(InItemConfig) end

---生效范围 服务器
---清除刷新点的物资配置设置，调用后将使用刷新点本身的配置
function AUGCItemSpawnerManager:CleanAllItemConfigOverride() end

function AUGCItemSpawnerManager:RegisterEvent() end

function AUGCItemSpawnerManager:UnRegisterEvent() end

function AUGCItemSpawnerManager:OnEventTrigger() end
