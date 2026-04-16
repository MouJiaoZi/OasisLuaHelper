---@meta

---GameplayTag decorator node. A decorator node that bases its condition on whether the specified Actor (in the blackboard) has a Gameplay Tag or Tags specified.
---@class UBTDecorator_CheckGameplayTagsOnActor: UBTDecorator
---@field ActorToCheck any
---@field TagsToMatch EGameplayContainerMatchType
---@field GameplayTags FGameplayTagContainer
---@field CachedDescription string @cached description
local UBTDecorator_CheckGameplayTagsOnActor = {}
