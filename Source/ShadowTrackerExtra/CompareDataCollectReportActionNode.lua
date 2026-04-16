---@meta

---@class EDataReporterType
---@field PlayerState number
---@field CanNotMove number
---@field MoveSpeedError number
EDataReporterType = {}


---@class FDataCollectReportActionParam
---@field ReporterType EDataReporterType
---@field ReportSubKey string
FDataCollectReportActionParam = {}


---@class UCompareDataCollectReportActionNode: UCompareBaseActionNode
---@field ReporterType EDataReporterType
---@field ReportSubKey string
---@field ParamList ULuaArrayHelper<FDataCollectReportActionParam>
local UCompareDataCollectReportActionNode = {}

---@param InConditionList ULuaArrayHelper<FCompareConditionInstance>
function UCompareDataCollectReportActionNode:DoAction(InConditionList) end

---@return boolean
function UCompareDataCollectReportActionNode:IsActionComplated() end

---@param InNode UCompareBaseNode
---@return number
function UCompareDataCollectReportActionNode:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareDataCollectReportActionNode:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareDataCollectReportActionNode:ModifyNodeParam(InParamIndex) end

function UCompareDataCollectReportActionNode:ResetParamList() end
