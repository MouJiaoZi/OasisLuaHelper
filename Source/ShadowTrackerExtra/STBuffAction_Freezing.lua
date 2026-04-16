---@meta

---@class FBuffFreezingDataStruct
FBuffFreezingDataStruct = {}


---@class USTBuffAction_Freezing: USTExtraBuffAction
---@field MaxFreezeValue number
---@field FireNewBuffName string
---@field bClearFreezeValueAfterFireNewBuff boolean
local USTBuffAction_Freezing = {}

---@return number
function USTBuffAction_Freezing:GetMaxFreezeValue() end

---@return number
function USTBuffAction_Freezing:GetCurrentFreezeValue() end

function USTBuffAction_Freezing:IncreaseCurrentFreezeValue() end

function USTBuffAction_Freezing:ResetCurrentFreezeValue() end
