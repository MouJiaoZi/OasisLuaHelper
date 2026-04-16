---@meta

---@class UKismetMaterialLibrary: UBlueprintFunctionLibrary
local UKismetMaterialLibrary = {}

---Sets a scalar parameter value on the material collection instance. Logs if ParameterName is invalid.
---@param WorldContextObject UObject
---@param Collection UMaterialParameterCollection
---@param ParameterName string
---@param ParameterValue number
function UKismetMaterialLibrary:SetScalarParameterValue(WorldContextObject, Collection, ParameterName, ParameterValue) end

---Sets a vector parameter value on the material collection instance. Logs if ParameterName is invalid.
---@param WorldContextObject UObject
---@param Collection UMaterialParameterCollection
---@param ParameterName string
---@param ParameterValue FLinearColor
function UKismetMaterialLibrary:SetVectorParameterValue(WorldContextObject, Collection, ParameterName, ParameterValue) end

---Gets a scalar parameter value from the material collection instance. Logs if ParameterName is invalid.
---@param WorldContextObject UObject
---@param Collection UMaterialParameterCollection
---@param ParameterName string
---@return number
function UKismetMaterialLibrary:GetScalarParameterValue(WorldContextObject, Collection, ParameterName) end

---Gets a vector parameter value from the material collection instance. Logs if ParameterName is invalid.
---@param WorldContextObject UObject
---@param Collection UMaterialParameterCollection
---@param ParameterName string
---@return FLinearColor
function UKismetMaterialLibrary:GetVectorParameterValue(WorldContextObject, Collection, ParameterName) end
