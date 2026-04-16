---@meta

---@class FUGCMobBTDebugTreeElemInfo
---@field Name string
---@field ExecutionIndex number
---@field ParentExecutionIndex number
---@field TickInternal number
---@field RandomDeviation number
---@field Value boolean
FUGCMobBTDebugTreeElemInfo = {}


---@class FUGCMobBTDebugTreeInfo
---@field Name string
---@field NodeStartIndex number
---@field DecoratorStartIndex number
---@field ServiceStartIndex number
---@field ParallelTaskStartIndex number
---@field EndIndex number
FUGCMobBTDebugTreeInfo = {}


---@class FUGCMobBTBlackBoardInfo
---@field Key string
---@field Value string
---@field ValueType string
FUGCMobBTBlackBoardInfo = {}


---@class FUGCMobBTDebugInfo
---@field Trees ULuaArrayHelper<FUGCMobBTDebugTreeInfo>
---@field Elems ULuaArrayHelper<FUGCMobBTDebugTreeElemInfo>
FUGCMobBTDebugInfo = {}


---@class UBehaviorTreeComponent: UBrainComponent
---@field NodeInstances ULuaArrayHelper<UBTNode> @instanced nodes
local UBehaviorTreeComponent = {}

---@param CooldownTag FGameplayTag
---@return number
function UBehaviorTreeComponent:GetTagCooldownEndTime(CooldownTag) end

---add to the cooldown tag's duration
---@param CooldownTag FGameplayTag
---@param CooldownDuration number
---@param bAddToExistingDuration boolean
function UBehaviorTreeComponent:AddCooldownTagDuration(CooldownTag, CooldownDuration, bAddToExistingDuration) end

---assign subtree to RunBehaviorDynamic task specified by tag
---@param InjectTag FGameplayTag
---@param BehaviorAsset UBehaviorTree
function UBehaviorTreeComponent:SetDynamicSubtree(InjectTag, BehaviorAsset) end

---@param OutTreeInfo FUGCMobBTDebugInfo
---@param OutBlackBoardInfo ULuaArrayHelper<FUGCMobBTBlackBoardInfo>
function UBehaviorTreeComponent:GetUGCMobBTDebugInfo(OutTreeInfo, OutBlackBoardInfo) end
