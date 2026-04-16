---@meta

---@class FComponentKey
---@field SCSVariableName string
---@field AssociatedGuid FGuid
FComponentKey = {}


---@class FComponentOverrideRecord
---@field ComponentKey FComponentKey
---@field CookedComponentInstancingData FBlueprintCookedComponentInstancingData
FComponentOverrideRecord = {}


---@class UInheritableComponentHandler: UObject
---@field Records ULuaArrayHelper<FComponentOverrideRecord> @All component records
---@field UnnecessaryComponents ULuaArrayHelper<UActorComponent> @List of components that were marked unnecessary, need to keep these around so it doesn't regenerate them when a child asks for one
local UInheritableComponentHandler = {}
