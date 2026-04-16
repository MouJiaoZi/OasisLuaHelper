---@meta

---@class FActivityEventStateViewTime
---@field Hour number
---@field Minute number
---@field Second number
FActivityEventStateViewTime = {}


---@class FActivityEventStateView
---@field StartOffset number
---@field ViewWidth number
FActivityEventStateView = {}


---@class FActivityEventStateViewConfig
---@field StateMachineName string
---@field StateView ULuaMapHelper<string, FActivityEventStateView>
FActivityEventStateViewConfig = {}


---@class FActivityEventStateViewResult
---@field StateName string
---@field ViewEndTime number
FActivityEventStateViewResult = {}


---@class UActivityEventStateUtility: UBlueprintFunctionLibrary
local UActivityEventStateUtility = {}

---@param WorldContextObject UObject
---@param OutState FActivityEventStateData
---@param StateMachineName string
---@return boolean
function UActivityEventStateUtility:GetCurrentActivityEventState(WorldContextObject, OutState, StateMachineName) end

---@param WorldContextObject UObject
---@param StateMachineName string
---@param TargetState string
function UActivityEventStateUtility:ChangeActivityEventState(WorldContextObject, StateMachineName, TargetState) end

---@param WorldContextObject UObject
---@param ViewConfig FActivityEventStateViewConfig
---@param OutViewResult FActivityEventStateViewResult
function UActivityEventStateUtility:GetViewEndTime(WorldContextObject, ViewConfig, OutViewResult) end

---@param WorldContextObject UObject
---@param ViewResult FActivityEventStateViewResult
---@param ViewTime FActivityEventStateViewTime
---@return boolean
function UActivityEventStateUtility:GetStructViewEndTime(WorldContextObject, ViewResult, ViewTime) end

---@param WorldContextObject UObject
---@param ViewResult FActivityEventStateViewResult
---@return string
function UActivityEventStateUtility:GetFormatViewEndTime(WorldContextObject, ViewResult) end
