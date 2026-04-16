---@meta

---@class UScreenAppearanceStatics: UBlueprintFunctionLibrary
local UScreenAppearanceStatics = {}

---@param WorldContextObject UObject
---@param AppearanceOwner AActor
---@param AppearanceName string
function UScreenAppearanceStatics:StopScreenAppearanceByName(WorldContextObject, AppearanceOwner, AppearanceName) end

---@param WorldContextObject UObject
---@param AppearanceOwner AActor
---@param AppearanceNameList ULuaArrayHelper<string>
function UScreenAppearanceStatics:StopScreenAppearanceByNameList(WorldContextObject, AppearanceOwner, AppearanceNameList) end

---@param WorldContextObject UObject
---@param AppearanceOwner AActor
---@param ProviderClass UScreenAppearanceProvider
function UScreenAppearanceStatics:StopScreenAppearanceBySoftClass(WorldContextObject, AppearanceOwner, ProviderClass) end

---@param WorldContextObject UObject
---@param AppearanceOwner AActor
---@param ProviderClass UScreenAppearanceProvider
function UScreenAppearanceStatics:StopScreenAppearanceBySoftClassNextTick(WorldContextObject, AppearanceOwner, ProviderClass) end

---@param WorldContextObject UObject
---@param Provider UScreenAppearanceProvider
function UScreenAppearanceStatics:StopScreenAppearance(WorldContextObject, Provider) end

---@param WorldContextObject UObject
---@param AppearanceOwner AActor
---@param AppearanceName string
---@return boolean
function UScreenAppearanceStatics:IsScreenAppearancePlaying(WorldContextObject, AppearanceOwner, AppearanceName) end

---@param WorldContextObject UObject
---@return boolean
function UScreenAppearanceStatics:HasActiveAppearance(WorldContextObject) end

---@param WorldContextObject UObject
---@param AppearanceName string
---@param ParameterName string
---@param NewValue number
function UScreenAppearanceStatics:SetFloatParameterOnScreenAppearance(WorldContextObject, AppearanceName, ParameterName, NewValue) end

---@param WorldContextObject UObject
---@param AppearanceName string
---@param ParameterName string
---@param NewValue FVector
function UScreenAppearanceStatics:SetVectorParameterOnScreenAppearance(WorldContextObject, AppearanceName, ParameterName, NewValue) end
