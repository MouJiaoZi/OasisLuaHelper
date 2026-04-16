---@meta

---@class UDataSourceBPLibrary: UBlueprintFunctionLibrary
local UDataSourceBPLibrary = {}

---@param InDataType EGMDataType
---@return boolean
function UDataSourceBPLibrary:HasDataSource(InDataType) end

---@param InDataSource UGMDataSource
function UDataSourceBPLibrary:SetDataSource(InDataSource) end
