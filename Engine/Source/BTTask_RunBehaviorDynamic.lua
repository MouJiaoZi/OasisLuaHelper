---@meta

---RunBehaviorDynamic task allows pushing subtrees on execution stack. Subtree asset can be assigned at runtime with SetDynamicSubtree function of BehaviorTreeComponent. Does NOT support subtree's root level decorators!
---@class UBTTask_RunBehaviorDynamic: UBTTaskNode
---@field InjectionTag FGameplayTag @Gameplay tag that will identify this task for subtree injection
local UBTTask_RunBehaviorDynamic = {}
