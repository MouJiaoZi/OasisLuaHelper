---@meta

---@class FDynamicReplicateStruct
---@field Count number
FDynamicReplicateStruct = {}


---@class UDynamicReplicateStructFunctionLibrary: UBlueprintFunctionLibrary
local UDynamicReplicateStructFunctionLibrary = {}

---@param Struct FDynamicReplicateStruct
---@param InOwner UObject
function UDynamicReplicateStructFunctionLibrary:SetFDynamicReplicateStructOwner(Struct, InOwner) end

---@param Target UObject
function UDynamicReplicateStructFunctionLibrary:FDynamicReplicateStructNetUpdate(Target) end

---@param Target UObject
---@param PropertyName number
function UDynamicReplicateStructFunctionLibrary:AddPropertyToDynamicReplicateList(Target, PropertyName) end

---@param Target UObject
---@param PropertyName number
function UDynamicReplicateStructFunctionLibrary:RemovePropertyFromDynamicReplicateList(Target, PropertyName) end
