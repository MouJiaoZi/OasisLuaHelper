---@meta

---@class FTagAndValue
---@field Tag string
---@field Value string
FTagAndValue = {}


---@class UAssetRegistryHelpers: UObject
local UAssetRegistryHelpers = {}

function UAssetRegistryHelpers:GetAssetRegistry() end

---Creates asset data from a UObject.
---@param InAsset UObject
---@param bAllowBlueprintClass boolean
---@return FAssetData
function UAssetRegistryHelpers:CreateAssetData(InAsset, bAllowBlueprintClass) end

---Checks to see if this AssetData refers to an asset or is NULL
---@param InAssetData FAssetData
---@return boolean
function UAssetRegistryHelpers:IsValid(InAssetData) end

---Returns true if this asset was found in a UAsset file
---@param InAssetData FAssetData
---@return boolean
function UAssetRegistryHelpers:IsUAsset(InAssetData) end

---Returns true if the this asset is a redirector.
---@param InAssetData FAssetData
---@return boolean
function UAssetRegistryHelpers:IsRedirector(InAssetData) end

---Returns the full name for the asset in the form: Class ObjectPath
---@param InAssetData FAssetData
---@return string
function UAssetRegistryHelpers:GetFullName(InAssetData) end

---Convert to a SoftObjectPath for loading
---@param InAssetData FAssetData
---@return FSoftObjectPath
function UAssetRegistryHelpers:ToSoftObjectPath(InAssetData) end

---Returns true if the asset is loaded
---@param InAssetData FAssetData
---@return boolean
function UAssetRegistryHelpers:IsAssetLoaded(InAssetData) end

---Returns the name for the asset in the form: Class'ObjectPath'
---@param InAssetData FAssetData
---@return string
function UAssetRegistryHelpers:GetExportTextName(InAssetData) end

---Gets the value associated with the given tag as a string
---@param InAssetData FAssetData
---@param InTagName string
---@param OutTagValue string
---@return boolean
function UAssetRegistryHelpers:GetTagValue(InAssetData, InTagName, OutTagValue) end

---Populates the FARFilters tags and values map with the passed in tags and values
---@param InFilter FARFilter
---@param InTagsAndValues ULuaArrayHelper<FTagAndValue>
---@return FARFilter
function UAssetRegistryHelpers:SetFilterTagsAndValues(InFilter, InTagsAndValues) end
