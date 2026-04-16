---@meta

---@class EDropItmeLimitType
---@field NoLimit number @无额外限制
---@field PeriodLimit number @时间段限制
EDropItmeLimitType = {}


---@class FDropItemLimit_CheckContext
---@field ItemID number
---@field ItemCount number
---@field ActorTags ULuaArrayHelper<string>
---@field ProducerID number
---@field DropInstanceID number
FDropItemLimit_CheckContext = {}


---@class FDropTimePeriodLimit
---@field LowerTime number
---@field UpperTime number
---@field LimitCount number
FDropTimePeriodLimit = {}


---@class FDropItemLimitData
---@field ItemID number
---@field Limit number
---@field Probability number
---@field ConsumedCount number
---@field LimitType EDropItmeLimitType
---@field PeriodLimt ULuaArrayHelper<FDropTimePeriodLimit>
FDropItemLimitData = {}


---@class FDropItemLimit
---@field DropItemLimits ULuaArrayHelper<FDropItemLimitData>
FDropItemLimit = {}


---@class FDropItemLimit_FName
---@field TagLimit ULuaMapHelper<string, FDropItemLimit>
FDropItemLimit_FName = {}


---@class FDropItemLimit_Int
---@field PIDLimit ULuaMapHelper<number, FDropItemLimit>
FDropItemLimit_Int = {}


---@class FDropItemLimit_ItemType
---@field ItemTypeLimit ULuaMapHelper<number, FDropItemLimit>
FDropItemLimit_ItemType = {}


---@class FProducerIDOverride
---@field SourceProducerID number
---@field TargetProducerIDList ULuaArrayHelper<number>
FProducerIDOverride = {}


---@class FDropItemWeightModifyConfig
---@field Desc string
FDropItemWeightModifyConfig = {}


---@class FDropItemWeightModifyContext
---@field ItemID number
---@field SourceWeight number
---@field DropRuleConfig FDropRuleConfigItem
FDropItemWeightModifyContext = {}


---@class FDropPlanLimitData
---@field PlanID number
---@field ItemTypeNum number
---@field DroppedTypeNum number
---@field LimitType EDropItmeLimitType
---@field PeriodLimts ULuaArrayHelper<FDropTimePeriodLimit>
FDropPlanLimitData = {}


---@class FDropItemLimit_Plan
---@field PlanLimit ULuaArrayHelper<FDropPlanLimitData>
FDropItemLimit_Plan = {}


---@class FDropPlanLimitConfig
---@field PlanLimitData ULuaMapHelper<number, FDropItemLimit_Plan>
FDropPlanLimitConfig = {}


---@class UDropItemNetAlienationData: UNetAlienationData
---@field DropItemLimit_Global FDropItemLimit
---@field DropItemLimit_Tag FDropItemLimit_FName
---@field DropItemLimit_PID FDropItemLimit_Int
---@field DropItemLimit_ItemType FDropItemLimit_ItemType
---@field DisposableProbabilityOverride ULuaMapHelper<number, number>
---@field DropPlanLimitConfig FDropPlanLimitConfig
---@field ProducerIDOverrides ULuaArrayHelper<FProducerIDOverride>
---@field CachedPID2Config ULuaMapHelper<number, FCommonDropItemConfig>
---@field IsOpenRankDrop boolean
---@field DropItemWeightModifyConfigMap ULuaMapHelper<string, FDropItemWeightModifyConfig>
---@field RankIDDrops ULuaMapHelper<number, boolean>
---@field GlobalRankProbability number
local UDropItemNetAlienationData = {}

---@param CheckContext FDropItemLimit_CheckContext
---@return boolean
function UDropItemNetAlienationData:CheckLimit(CheckContext) end

---@param CheckContext FDropItemLimit_CheckContext
---@return boolean
function UDropItemNetAlienationData:HasLimit(CheckContext) end

---@param CheckContext FDropItemLimit_CheckContext
---@return boolean
function UDropItemNetAlienationData:ConsumeLimit(CheckContext) end

---@param CheckContext FDropItemLimit_CheckContext
---@return number
function UDropItemNetAlienationData:GetDropProbabilityOverride(CheckContext) end

---@param ItemID number
---@param ProbabilityOverride number
function UDropItemNetAlienationData:SetGlobalProbabilityOverride(ItemID, ProbabilityOverride) end

---@param ItemID number
---@param ProbabilityOverride number
---@param LimitTag string
function UDropItemNetAlienationData:SetTagProbabilityOverride(ItemID, ProbabilityOverride, LimitTag) end

---@param ItemID number
---@param ProbabilityOverride number
---@param ProducerID number
function UDropItemNetAlienationData:SetProducerIDProbabilityOverride(ItemID, ProbabilityOverride, ProducerID) end

---@param ItemID number
---@param ProbabilityOverride number
function UDropItemNetAlienationData:SetItemTypeProbabilityOverride(ItemID, ProbabilityOverride) end

---@param ItemID number
---@param Limit number
function UDropItemNetAlienationData:AddGlobalLimit(ItemID, Limit) end

---@param ItemID number
---@param Limit number
---@param LimitTag string
function UDropItemNetAlienationData:AddTagLimit(ItemID, Limit, LimitTag) end

---@param ItemID number
---@param Limit number
---@param ProducerID number
function UDropItemNetAlienationData:AddProducerIDLimit(ItemID, Limit, ProducerID) end

---@param ItemID number
---@param Limit number
function UDropItemNetAlienationData:AddItemTypeLimit(ItemID, Limit) end

---@param ItemID number
---@param PeriodLimit FDropTimePeriodLimit
function UDropItemNetAlienationData:AddGlobalPeriodLimit(ItemID, PeriodLimit) end

---@param ItemID number
---@param PeriodLimit FDropTimePeriodLimit
---@param LimitTag string
function UDropItemNetAlienationData:AddTagPeriodLimit(ItemID, PeriodLimit, LimitTag) end

---@param ItemID number
---@param PeriodLimit FDropTimePeriodLimit
---@param ProducerID number
function UDropItemNetAlienationData:AddPIDPeriodLimit(ItemID, PeriodLimit, ProducerID) end

---@param ItemID number
---@param PeriodLimit FDropTimePeriodLimit
function UDropItemNetAlienationData:AddItemTypePeriodLimit(ItemID, PeriodLimit) end

---@return number
function UDropItemNetAlienationData:GetServerTime() end

---@param ItemID number
---@return number
function UDropItemNetAlienationData:GetDisposableProbabilityOverride(ItemID) end

---@param ProbabilityOverride ULuaMapHelper<number, number>
function UDropItemNetAlienationData:SetDisposableProbabilityOverride(ProbabilityOverride) end

function UDropItemNetAlienationData:ClearDisposableProbabilityOverride() end

---@param ProduceID number
---@param DropPlan number
---@param DropInstanceID number
---@param LimitTypeNum number
---@return boolean
function UDropItemNetAlienationData:CheckPlanLimit(ProduceID, DropPlan, DropInstanceID, LimitTypeNum) end

---@param ProduceID number
---@param DropPlan number
---@param ConsumeNum number
function UDropItemNetAlienationData:ConsumePlanLimit(ProduceID, DropPlan, ConsumeNum) end

---@param ProduceID number
---@param DropPlan number
---@param LimitTypeNum number
function UDropItemNetAlienationData:SetPlanLimit(ProduceID, DropPlan, LimitTypeNum) end

---@param ProduceID number
---@param DropPlan number
---@param PeriodLimit FDropTimePeriodLimit
function UDropItemNetAlienationData:SetPlanPeriodLimit(ProduceID, DropPlan, PeriodLimit) end

---@param SourceProducerID number
---@param TargetProducerID number
function UDropItemNetAlienationData:AddProducerOverrider(SourceProducerID, TargetProducerID) end

---@param SourceProducerID number
---@return boolean
function UDropItemNetAlienationData:RemoveProducerOverriderBySource(SourceProducerID) end

---@param SourceProducerID number
---@param TargetProducerID number
---@return boolean
function UDropItemNetAlienationData:RemoveProducerOverriderByTarget(SourceProducerID, TargetProducerID) end

---@param SourceProducerID number
---@return number
function UDropItemNetAlienationData:GetCurrentProducerOverrider(SourceProducerID) end

---@param StrategyContext FDropItemStrategyContext
---@param WeightModifyContext FDropItemWeightModifyContext
---@return number
function UDropItemNetAlienationData:DoDropItemWeightModify(StrategyContext, WeightModifyContext) end

---@param ID number
---@param bEnable boolean
function UDropItemNetAlienationData:AddRankLimitByID(ID, bEnable) end

---@param ID number
---@return boolean
function UDropItemNetAlienationData:CheckRankDropIsLimit(ID) end

---@param Produce AActor
---@param ProduceID number
---@param DropItemData FGenerateDropItemData
---@return boolean
function UDropItemNetAlienationData:GenerateDropItemListSelectorByProduceID(Produce, ProduceID, DropItemData) end

---@param Produce AActor
---@param ProduceID number
---@param DropItemData FGenerateDropItemData
---@return boolean
function UDropItemNetAlienationData:EscapeGenerateDropItemListSelectorByProduceID(Produce, ProduceID, DropItemData) end

function UDropItemNetAlienationData:OutPutAllData() end
