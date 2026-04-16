---@meta

---@class FDropItemPlanLimitTriggerData
---@field ProducerID number
---@field PlanID number
---@field LimitTime number
---@field bCheckPeriodLimit boolean
---@field PeriodLimts ULuaArrayHelper<FDropTimePeriodLimit>
FDropItemPlanLimitTriggerData = {}


---@class FDropItemLimitConfigInfo
---@field ItemID number
---@field Limit number
---@field Probability number
---@field bCheckGlobal boolean
---@field LimitTag string
---@field ProducerID number
---@field bCheckPeriodLimit boolean
---@field PeriodLimts ULuaArrayHelper<FDropTimePeriodLimit>
FDropItemLimitConfigInfo = {}


---@class UTriggerAction_DropItemLimit: UTriggerAction
---@field LimitConfigInfoInfos ULuaArrayHelper<FDropItemLimitConfigInfo>
---@field PlanLimitTriggerData ULuaArrayHelper<FDropItemPlanLimitTriggerData>
local UTriggerAction_DropItemLimit = {}
