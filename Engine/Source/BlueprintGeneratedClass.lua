---@meta

---@class FNodeToCodeAssociation
FNodeToCodeAssociation = {}


---@class FDebuggingInfoForSingleFunction
FDebuggingInfoForSingleFunction = {}


---@class FPointerToUberGraphFrame
FPointerToUberGraphFrame = {}


---@class FBlueprintDebugData
FBlueprintDebugData = {}


---@class FEventGraphFastCallPair
---@field EventGraphCallOffset number
FEventGraphFastCallPair = {}


---A single changed Blueprint component property.
---@class FBlueprintComponentChangedPropertyInfo
---@field PropertyName string @The name of the changed property.
---@field ArrayIndex number @The array index of the changed property.
FBlueprintComponentChangedPropertyInfo = {}


---Cooked data for a Blueprint component template.
---@class FBlueprintCookedComponentInstancingData
---@field bIsValid boolean @Flag indicating whether or not this contains valid cooked data. Note that an empty changed property list can also be a valid template data context.
---@field ChangedPropertyList ULuaArrayHelper<FBlueprintComponentChangedPropertyInfo> @List of property info records with values that differ between the template and the component class CDO. This list will be generated at cook time.
FBlueprintCookedComponentInstancingData = {}


---@class UBlueprintGeneratedClass: UClass
---@field NumReplicatedProperties number
---@field bHasNativizedParent number @Flag used to indicate if this class has a nativized parent in a cooked build.
---@field DynamicBindingObjects ULuaArrayHelper<UDynamicBlueprintBinding> @Array of objects containing information for dynamically binding delegates to functions in this blueprint
---@field ComponentTemplates ULuaArrayHelper<UActorComponent> @Array of component template objects, used by AddComponent function
---@field Timelines ULuaArrayHelper<UTimelineTemplate> @Array of templates for timelines that should be created
---@field CookedComponentInstancingData ULuaMapHelper<string, FBlueprintCookedComponentInstancingData> @Property guid map
local UBlueprintGeneratedClass = {}
