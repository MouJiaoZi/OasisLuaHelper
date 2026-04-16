---@meta

---@class FTaskIDPropertySelector
---@field TaskIDPropertyName string
FTaskIDPropertySelector = {}


---@class UCustomNetRelevantWithTaskID: UCustomNetRelevantBase
---@field bIsRelevant boolean
---@field bForceNetRelevant boolean
---@field TaskIDList ULuaArrayHelper<number>
---@field CacheRelevantMap ULuaMapHelper<ASTExtraPlayerController, boolean>
local UCustomNetRelevantWithTaskID = {}

---@param TaskID number
function UCustomNetRelevantWithTaskID:AddRelevantTaskID(TaskID) end

---@param TaskID number
function UCustomNetRelevantWithTaskID:RemoveRelevantTaskID(TaskID) end

function UCustomNetRelevantWithTaskID:ClearRelevantTaskID() end
