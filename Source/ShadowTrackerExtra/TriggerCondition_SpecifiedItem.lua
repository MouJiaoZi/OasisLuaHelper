---@meta

---@class UTriggerCondition_SpecifiedItem: UTriggerCondition_Task
---@field SpecifiedItemID number @Specified item id of this condition, such as weapon id, emote id, etc
local UTriggerCondition_SpecifiedItem = {}

---Get item id from variable set
---@param InDataSource UVariableSet
---@param outItemID number
---@return boolean
function UTriggerCondition_SpecifiedItem:GetItemIDFromData(InDataSource, outItemID) end

---Directly set item id
---@param ItemID number
function UTriggerCondition_SpecifiedItem:SetSpecifiedItemID(ItemID) end
