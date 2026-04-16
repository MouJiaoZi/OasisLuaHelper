---@meta

---@class UHomelandBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local UHomelandBlueprintFunctionLibrary = {}

---@param SubType number
---@return EHomeStoreItemType
function UHomelandBlueprintFunctionLibrary:GetHomeStoreType(SubType) end

---@param HomeStoreItemType EHomeStoreItemType
---@return string
function UHomelandBlueprintFunctionLibrary:GetDefaultClassFromHomeStoreType(HomeStoreItemType) end

---@param HomeStoreItemType EHomeStoreItemType
---@return boolean
function UHomelandBlueprintFunctionLibrary:BisUseDefaultClass(HomeStoreItemType) end

---@param ItemID number
---@return EHomeStoreItemType
function UHomelandBlueprintFunctionLibrary:GetHomeStoreTypeFromItemID(ItemID) end

---@param ItemID number
---@return number
function UHomelandBlueprintFunctionLibrary:GetSubTypeIDFromItemID(ItemID) end
