---@meta

---@class FDropItemData
---@field ItemID number
---@field ItemCount number
---@field DropMode number
FDropItemData = {}


---@class FDropItemRule
---@field ItemDropPercent number
---@field ItemDropRuleStartID number
---@field ItemDropRuleEndID number
---@field ItemDropMode number
FDropItemRule = {}


---@class FRandomRule
---@field ItemIDs ULuaArrayHelper<number>
---@field ItemCounts ULuaArrayHelper<number>
---@field RuleID number
---@field Weight number
FRandomRule = {}


---在某个位置掉落一堆物品
---@class UTriggerAction_SpawnItemDrop: UTriggerAction
---@field SpawnItemCfg FSpawnItemCfg
local UTriggerAction_SpawnItemDrop = {}
