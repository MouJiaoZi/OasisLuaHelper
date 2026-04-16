---@meta

---@class FDropItemPlanLimitModifyData
---@field ProducerID number
---@field PlanID number
---@field LimitTime number
---@field bCheckPeriodLimit boolean
---@field PeriodLimts ULuaArrayHelper<FDropTimePeriodLimit>
FDropItemPlanLimitModifyData = {}


---@class FDropItemModifyConfig
---@field ItemID number
---@field Limit number
---@field Probability number
---@field bCheckGlobal boolean
---@field LimitTag string
---@field ProducerID number
---@field bCheckPeriodLimit boolean
---@field PeriodLimts ULuaArrayHelper<FDropTimePeriodLimit>
FDropItemModifyConfig = {}


---@class FRankDropConfig
---@field RankID number
---@field bEnableRankDrop boolean
FRankDropConfig = {}


---@class FRankDropModifyConfig
---@field GlobalEnableRankDrop boolean
---@field RankDrops ULuaArrayHelper<FRankDropConfig>
FRankDropModifyConfig = {}


---@class FDropItemModifyConfigs
---@field LimitConfigs ULuaArrayHelper<FDropItemModifyConfig>
---@field PlanLimitConfigs ULuaArrayHelper<FDropItemPlanLimitModifyData>
---@field RankDropConfig FRankDropModifyConfig
FDropItemModifyConfigs = {}


---@class UIDIPHandle_DropItemModify: UIDIPHandle
---@field LimitConfigList FDropItemModifyConfigs
local UIDIPHandle_DropItemModify = {}

function UIDIPHandle_DropItemModify:ApplyConfig() end
