---@meta

---@class UConsumeAdditionalDataComponent: UActorComponent
---@field ItemID number
---@field Type number
---@field AdditionalDataMaxName string
---@field AdditionalDataName string
---@field AdditionalDataConsumeSpeed string
---@field LowValueRatio number
---@field LowValuePromptID number
---@field UsedUpPromptID number
---@field IsAutoSelect boolean
---@field ConsumeFinishDelegate FOnConsumeFinishDelegate
---@field ConsumeStartDelegate FOnConsumeStartDelegate
---@field SelectItemDelegate FOnConsumeStartDelegate
---@field BattleItemData FBattleItemData
local UConsumeAdditionalDataComponent = {}

function UConsumeAdditionalDataComponent:ConsumeOn() end

function UConsumeAdditionalDataComponent:ConsumeOff() end

---@return boolean
function UConsumeAdditionalDataComponent:CheckConsume() end
