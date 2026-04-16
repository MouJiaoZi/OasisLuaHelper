---@meta

---@class UCollectedEventDataValueToStringFunctionLibrary: UBlueprintFunctionLibrary
local UCollectedEventDataValueToStringFunctionLibrary = {}

---@return string
function UCollectedEventDataValueToStringFunctionLibrary:ToString_Array_Int32() end

---@return string
function UCollectedEventDataValueToStringFunctionLibrary:ToString_Array_uInt64() end

---@param TypeSpecificID number
---@return string
function UCollectedEventDataValueToStringFunctionLibrary:ToString_FItemDefineID_TypeSpecificID(TypeSpecificID) end

---@return string
function UCollectedEventDataValueToStringFunctionLibrary:ToString_Array_FItemDefineID_TypeSpecificID() end
