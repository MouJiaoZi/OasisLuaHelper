---@meta

---@class UKismetMetaDataLibrary: UBlueprintFunctionLibrary
local UKismetMetaDataLibrary = {}

---@param Field UField
---@param Key string
---@param NameIndex number
---@return boolean
function UKismetMetaDataLibrary:HasMetaData(Field, Key, NameIndex) end

---@param Enum UEnum
---@return number
function UKismetMetaDataLibrary:GetNumOfEnum(Enum) end

---@param Enum UEnum
---@param NameIndex number
---@return string
function UKismetMetaDataLibrary:GetEnumName(Enum, NameIndex) end

---@param Enum UEnum
---@param NameIndex number
---@return number
function UKismetMetaDataLibrary:GetEnumValue(Enum, NameIndex) end

---@param Enum UEnum
---@param Value number
---@return number
function UKismetMetaDataLibrary:GetEnumIndexByValue(Enum, Value) end

---@param Outer UObject
---@param bIncludeNestedObjects boolean
---@param ExclusionFlags number
---@param ExclusionInternalFlags number
function UKismetMetaDataLibrary:GetObjectsWithOuter(Outer, bIncludeNestedObjects, ExclusionFlags, ExclusionInternalFlags) end
