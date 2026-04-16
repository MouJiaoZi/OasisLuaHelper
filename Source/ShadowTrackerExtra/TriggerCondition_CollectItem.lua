---@meta

---@class UTriggerCondition_CollectItem: UTriggerCondition_Task
---@field CollectedItemID number @The ItemID of items which need to be collected
---@field NeedToCollect number @Number of items which need to be collected
---@field Collected number @Number of items that are already collected
local UTriggerCondition_CollectItem = {}

---Get item id from variable set
---@param InDataSource UVariableSet
---@param outItemID number
---@return boolean
function UTriggerCondition_CollectItem:GetItemIDFromData(InDataSource, outItemID) end

---Get item count from variable set, which means how many items are collected this time
---@param InDataSource UVariableSet
---@param outItemCount number
---@return boolean
function UTriggerCondition_CollectItem:GetItemCountFromData(InDataSource, outItemCount) end

---Directly set collection param with a string, which has a format "ItemID|ItemCount"
---@param InParams string
function UTriggerCondition_CollectItem:SetCollectConditionParam(InParams) end

---Get collect process
---@return number
function UTriggerCondition_CollectItem:GetCollectProcess() end
