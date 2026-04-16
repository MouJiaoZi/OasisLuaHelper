---@meta

---@class FCheckComponentTickSync
---@field PropertyOwner EPropertyOwner
---@field bCheckAutoActive boolean
---@field WhiteNameList ULuaArrayHelper<string>
---@field CheckComponentSubclass ULuaArrayHelper<UActorComponent>
---@field ReoprtNameList ULuaArrayHelper<string>
---@field ReportComList ULuaArrayHelper<UActorComponent>
---@field CacheActor AActor
FCheckComponentTickSync = {}


---@class FCompareComponentTickSyncConditionParam
---@field CheckActorList ULuaArrayHelper<FCheckComponentTickSync>
FCompareComponentTickSyncConditionParam = {}


---@class UCompareComponentTickSyncCondition: UCompareBaseCondition
---@field CheckActorList ULuaArrayHelper<FCheckComponentTickSync>
---@field ParamList ULuaArrayHelper<FCompareComponentTickSyncConditionParam>
local UCompareComponentTickSyncCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UCompareComponentTickSyncCondition:InitCompareNode(OwnerCom) end

---@param OutString string
function UCompareComponentTickSyncCondition:GetConditionInfo(OutString) end

---@param InDeltaTime number
---@return ECompareConditionResult
function UCompareComponentTickSyncCondition:CalculateConditionResult(InDeltaTime) end

---@param InNode UCompareBaseNode
---@return number
function UCompareComponentTickSyncCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareComponentTickSyncCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareComponentTickSyncCondition:ModifyNodeParam(InParamIndex) end

function UCompareComponentTickSyncCondition:ResetParamList() end
