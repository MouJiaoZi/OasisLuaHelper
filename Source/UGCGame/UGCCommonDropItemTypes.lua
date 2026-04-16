---@meta

---掉落物选点方式
---@class EUGCDropItemPositionDirection
---@field DropItemPositionDirection_Random number @完全随机
---@field DropItemPositionDirection_PseudoRandom number @伪随机
---@field DropItemPositionDirection_FacePlayer number @面向玩家
EUGCDropItemPositionDirection = {}


---掉落物数据来源
---@class EUGCDropItemListGeneratorType
---@field DropItemListGeneratorType_ItemTable number @读表
---@field DropItemListGeneratorType_BluePrint number @蓝图配置
EUGCDropItemListGeneratorType = {}


---掉落物类型
---@class EUGCGenerateItemEntityType
---@field GenerateItemEntity_BackPack number @背包
---@field GenerateItemEntity_WrapperActor number @Wrapper
---@field GenerateItemEntity_TombBox number @死亡盒子
EUGCGenerateItemEntityType = {}


---@class FUGCGenerateDropItemData
---@field ItemDataList ULuaArrayHelper<FPickUpItemData>
FUGCGenerateDropItemData = {}


---蓝图配置掉落物信息
---@class FUGCGenerateDropItemInfo
---@field ItemID number @掉落物ItemID
---@field Count number @掉落物数量
FUGCGenerateDropItemInfo = {}


---@class FUGCDropItemStrategyContext
FUGCDropItemStrategyContext = {}
