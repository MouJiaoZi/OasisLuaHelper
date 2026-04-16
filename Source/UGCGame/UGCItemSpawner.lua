---@meta

---物资配置类型
---@class EUGCItemSpawnerConfigMode
---@field ItemID number @物资ID
---@field DropTable number @掉落表
---@field DropGroupTable number @掉落组表
---@field Custom number @自定义
EUGCItemSpawnerConfigMode = {}


---物资配置
---@class FUGCItemSpawnerItemConfig
---@field ConfigMode EUGCItemSpawnerConfigMode @刷出物资的配置方式
---@field ItemID number @使用物资ID模式时，物资的ID
---@field ItemCount number @使用物资ID模式时，物资的数量
---@field DropID number @使用掉落表模式时，掉落表的ID
---@field DropGroupID number @使用掉落组表模式时，掉落组表的ID
---@field CustomParam ULuaMapHelper<string, string> @使用自定义模式时，用于自定义的ID
FUGCItemSpawnerItemConfig = {}


---物资刷新系统：物资刷新器
---@class AUGCItemSpawner: AActor
---@field ItemConfig FUGCItemSpawnerItemConfig @配置刷出的物资类别和数量
---@field bNeedSpawnerManager boolean @物资刷新点是否能独立运作，还是依赖于物资刷新管理器
---@field bLoopSpawn boolean @独立运作模式时，物资被拾取后是否会自动生成
---@field SpawnCD number @开启循环生成后，物资被拾取后间隔重新刷新
---@field bTraceGround boolean @物资是否一定刷新在地面上
---@field bRandomRotator boolean @物资方向是否随机
---@field StartRadius number @物资刷新位置到刷新点的最小距离
---@field EndRadius number @物资刷新位置到刷新点的最大距离
---@field SpawnedItems ULuaArrayHelper<AActor>
local AUGCItemSpawner = {}

---@param ItemConfig FUGCItemSpawnerItemConfig
function AUGCItemSpawner:StartSpawn(ItemConfig) end

---Event
---生效范围 服务器
---物资刷出事件
---@param Items ULuaArrayHelper<AActor>
function AUGCItemSpawner:OnItemsSpawn(Items) end

---Event
---生效范围 服务器
---所有物资都被拾取
function AUGCItemSpawner:OnAllItemsArePick() end

---@param DropID number
function AUGCItemSpawner:SpawnItemsByDropID(DropID) end

---@param DropID number
function AUGCItemSpawner:SpawnItemsByDropGroupID(DropID) end

---@param ItemID number
---@return boolean
function AUGCItemSpawner:GetIsObjEditorItemV2(ItemID) end

---Event
---生效范围 服务器
---覆写该事件来自定义物资刷出流程
---@param CustomParam ULuaMapHelper<string, string> @自定义参数列表
function AUGCItemSpawner:CustomSpawnItem(CustomParam) end

---生效范围 服务器
---清除刷出的物资
function AUGCItemSpawner:CleanItems() end

function AUGCItemSpawner:OnItemDestroy() end
