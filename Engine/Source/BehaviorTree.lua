---@meta

---@class UBehaviorTree: UObject
---@field RootDecorators ULuaArrayHelper<UBTDecorator> @root level decorators, used by subtrees
---@field RootDecoratorOps ULuaArrayHelper<FBTDecoratorLogic> @logic operators for root level decorators, used by subtrees
local UBehaviorTree = {}
