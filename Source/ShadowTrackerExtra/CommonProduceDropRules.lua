---@meta

---@class FDIL_CheckContextWrapper
---@field CheckContext FDropItemLimit_CheckContext
FDIL_CheckContextWrapper = {}


---@class UDropItemUtils: UBlueprintFunctionLibrary
local UDropItemUtils = {}

---@param EntityType EGenerateItemEntityType
---@return string
function UDropItemUtils:ConvertEntityTypeToHumanString(EntityType) end

---@param DropModeID number
---@return EGenerateItemEntityType
function UDropItemUtils:GetDropModeByID(DropModeID) end

---@param PackageModeID number
---@return EDropRuleItemPackageMode
function UDropItemUtils:GetPackageModeByID(PackageModeID) end

---@param InWeightList ULuaArrayHelper<number>
---@return number
function UDropItemUtils:GetRandomIndexByWeight(InWeightList) end

---@param InPercentList ULuaArrayHelper<number>
---@param PercentMin number
---@param PercentMax number
function UDropItemUtils:GetRandomIndexListByPercentage(InPercentList, PercentMin, PercentMax) end

---@param DefineID FItemDefineID
---@return string
function UDropItemUtils:GetWrapperActorPath(DefineID) end

---@param WorldContext UObject
---@param ProduceID number
---@param DropPlan number
---@param DropInstanceID number
---@param LimitTypeNum number
---@return boolean
function UDropItemUtils:CheckPlanLimit(WorldContext, ProduceID, DropPlan, DropInstanceID, LimitTypeNum) end

---@param WorldContext UObject
---@param ProduceID number
---@param DropPlan number
---@param ConsumeNum number
function UDropItemUtils:ConsumePlanLimit(WorldContext, ProduceID, DropPlan, ConsumeNum) end

---@param WorldContext UObject
---@param ProduceID number
---@return number
function UDropItemUtils:GetDropItemProduceIDOverride(WorldContext, ProduceID) end

---@param WorldContext UObject
---@param StrategyContext FDropItemStrategyContext
---@param WeightModifyContext FDropItemWeightModifyContext
---@return number
function UDropItemUtils:DoDropItemWeightModify(WorldContext, StrategyContext, WeightModifyContext) end

---@param WorldContext UObject
---@param ProbabilityOverride ULuaMapHelper<number, number>
function UDropItemUtils:SetDisposableProbabilityOverride(WorldContext, ProbabilityOverride) end

---@param WorldContext UObject
function UDropItemUtils:ClearDisposableProbabilityOverride(WorldContext) end

---@param WorldContext UObject
---@param CheckContextWrapper FDIL_CheckContextWrapper
---@return number
function UDropItemUtils:GetDropItemProbabilityOverride(WorldContext, CheckContextWrapper) end

---@param WorldContext UObject
---@param CheckContextWrapper FDIL_CheckContextWrapper
---@return boolean
function UDropItemUtils:CheckDropItemLimit(WorldContext, CheckContextWrapper) end

---@param WorldContext UObject
---@param CheckContextWrapper FDIL_CheckContextWrapper
---@return boolean
function UDropItemUtils:HasDropItemLimit(WorldContext, CheckContextWrapper) end

---@param WorldContext UObject
---@param CheckContextWrapper FDIL_CheckContextWrapper
---@return boolean
function UDropItemUtils:ConsumeDropItemLimit(WorldContext, CheckContextWrapper) end

---@param WorldContext UObject
---@param InProduceID number
---@param OutConfig FCommonDropItemConfig
---@return boolean
function UDropItemUtils:FindExistConfig(WorldContext, InProduceID, OutConfig) end

---@param Producer AActor
---@param GeneratorSelector FDropItemListGeneratorSelector
---@param OutConfig FCommonDropItemConfig
---@return boolean
function UDropItemUtils:GenerateDropItemConfig(Producer, GeneratorSelector, OutConfig) end

---@param Producer AActor
---@param GeneratorSelector FDropItemListGeneratorSelector
---@param DropItemData FGenerateDropItemData
---@return boolean
function UDropItemUtils:GenerateDropItemList(Producer, GeneratorSelector, DropItemData) end

---@param Produce AActor
---@param ProduceID number
---@param GeneratorSelector FDropItemListGeneratorSelector
function UDropItemUtils:InitGeneratorSelector(Produce, ProduceID, GeneratorSelector) end

---@param Produce AActor
---@param ProduceID number
---@param DropItemData FGenerateDropItemData
---@return boolean
function UDropItemUtils:EscapeGenerateDropItemListByProduceID(Produce, ProduceID, DropItemData) end

---@param Produce AActor
---@param ProduceID number
---@param DropItemData FGenerateDropItemData
---@return boolean
function UDropItemUtils:GenerateDropItemListByProduceID(Produce, ProduceID, DropItemData) end

---@param Produce AActor
function UDropItemUtils:OutputCurrentDropItemPool(Produce) end

---@param Produce AActor
---@param ID number
---@return boolean
function UDropItemUtils:CheckRankDropIsLimit(Produce, ID) end

---@param Produce AActor
---@param ID number
---@return number
function UDropItemUtils:GetOverrideRankProbability(Produce, ID) end

---@param ItemIDLists ULuaArrayHelper<number>
function UDropItemUtils:GetItemIDListByDropItemContext(ItemIDLists) end

---@param ItemIDLists ULuaArrayHelper<number>
function UDropItemUtils:GetItemIDListByItemDataMap(ItemIDLists) end
