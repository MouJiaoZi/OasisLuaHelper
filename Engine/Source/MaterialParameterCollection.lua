---@meta

---Base struct for collection parameters
---@class FCollectionParameterBase
---@field ParameterName string @The name of the parameter.  Changing this name will break any blueprints that reference the parameter.
---@field Id FGuid @Uniquely identifies the parameter, used for fixing up materials that reference this parameter when renaming.
FCollectionParameterBase = {}


---A scalar parameter
---@class FCollectionScalarParameter
---@field DefaultValue number
FCollectionScalarParameter = {}


---A vector parameter
---@class FCollectionVectorParameter
---@field DefaultValue FLinearColor
FCollectionVectorParameter = {}


---Asset class that contains a list of parameter names and their default values. Any number of materials can reference these parameters and get new values when the parameter values are changed.
---@class UMaterialParameterCollection: UObject
---@field StateId FGuid @Used by materials using this collection to know when to recompile.
---@field ScalarParameters ULuaArrayHelper<FCollectionScalarParameter>
---@field VectorParameters ULuaArrayHelper<FCollectionVectorParameter>
local UMaterialParameterCollection = {}
