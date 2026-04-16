---@meta

---@class UBTService_BlueprintBaseEx: UBTService_BlueprintBase
---@field ObservedKeyNames ULuaArrayHelper<string> @blackboard key names that should be observed
local UBTService_BlueprintBaseEx = {}

---@param ChangedKeyName string
function UBTService_BlueprintBaseEx:NotifyBlackboardKeyValueChanged(ChangedKeyName) end
