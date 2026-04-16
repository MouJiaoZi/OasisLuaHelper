---@meta

---@class FCheckComponentTickEnableInfo
---@field PropertyOwner EPropertyOwner
---@field CheckTickEnable boolean
---@field WhiteNameList ULuaArrayHelper<string>
---@field CheckComponentSubclass ULuaArrayHelper<UActorComponent>
---@field ReoprtComNameList ULuaArrayHelper<string>
---@field ReportComList ULuaArrayHelper<UActorComponent>
---@field CacheActor AActor
FCheckComponentTickEnableInfo = {}


---@class FCompareComponentTickConditionParam
---@field CheckActorList ULuaArrayHelper<FCheckComponentTickEnableInfo>
FCompareComponentTickConditionParam = {}


---@class UCompareComponentTickCondition: UCompareBaseCondition
---@field CheckActorList ULuaArrayHelper<FCheckComponentTickEnableInfo>
---@field ParamList ULuaArrayHelper<FCompareComponentTickConditionParam>
local UCompareComponentTickCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UCompareComponentTickCondition:InitCompareNode(OwnerCom) end

---@param OutString string
function UCompareComponentTickCondition:GetConditionInfo(OutString) end

---@param InNode UCompareBaseNode
---@return number
function UCompareComponentTickCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareComponentTickCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareComponentTickCondition:ModifyNodeParam(InParamIndex) end

function UCompareComponentTickCondition:ResetParamList() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UCompareComponentTickCondition:CalculateConditionResult(InDeltaTime) end
