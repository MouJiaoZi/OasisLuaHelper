---@meta

---@class UKismetGuidLibrary: UBlueprintFunctionLibrary
local UKismetGuidLibrary = {}

---Returns true if the values are equal (A == B)
---@param A FGuid
---@param B FGuid
---@return boolean
function UKismetGuidLibrary:EqualEqual_GuidGuid(A, B) end

---Returns true if the values are not equal (A != B)
---@param A FGuid
---@param B FGuid
---@return boolean
function UKismetGuidLibrary:NotEqual_GuidGuid(A, B) end

---Checks whether the given GUID is valid
---@param InGuid FGuid
---@return boolean
function UKismetGuidLibrary:IsValid_Guid(InGuid) end

---Invalidates the given GUID
---@param InGuid FGuid
function UKismetGuidLibrary:Invalidate_Guid(InGuid) end

---Returns a new unique GUID
---@return FGuid
function UKismetGuidLibrary:NewGuid() end

---Converts a GUID value to a string, in the form 'A-B-C-D'
---@param InGuid FGuid
---@return string
function UKismetGuidLibrary:Conv_GuidToString(InGuid) end

---Converts a String of format EGuidFormats to a Guid. Returns Guid OutGuid, Returns bool Success
---@param GuidString string
---@param OutGuid FGuid
---@param Success boolean
function UKismetGuidLibrary:Parse_StringToGuid(GuidString, OutGuid, Success) end
