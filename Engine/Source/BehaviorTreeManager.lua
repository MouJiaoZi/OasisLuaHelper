---@meta

---@class FBehaviorTreeTemplateInfo
FBehaviorTreeTemplateInfo = {}


---@class UBehaviorTreeManager: UObject
---@field MaxDebuggerSteps number @limit for recording execution steps for debugger
---@field LoadedTemplates ULuaArrayHelper<FBehaviorTreeTemplateInfo> @initialized tree templates
---@field ActiveComponents ULuaArrayHelper<UBehaviorTreeComponent>
local UBehaviorTreeManager = {}
