---@meta

---@class FTagLogAttributes
---@field Attributes ULuaSetHelper<string>
FTagLogAttributes = {}


---@class UTagLogBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local UTagLogBlueprintFunctionLibrary = {}

---@param bEnable boolean
function UTagLogBlueprintFunctionLibrary:SetEnableTagLogOutput(bEnable) end

---@return boolean
function UTagLogBlueprintFunctionLibrary:IsEnableTagLogOutput() end

---@param LogCategory string
---@param LogVerbosity number
---@param FormatString string
---@param InArgs ULuaArrayHelper<FTagLogParamData>
function UTagLogBlueprintFunctionLibrary:TagLog(LogCategory, LogVerbosity, FormatString, InArgs) end

---@param InValue number
---@return FTagLogStructBinary
function UTagLogBlueprintFunctionLibrary:ConvertStruct(InValue) end

---@param CategoryName string
---@param Verbosity number
---@param InString string
function UTagLogBlueprintFunctionLibrary:PrintUGCLog(CategoryName, Verbosity, InString) end

---@param InputText string
function UTagLogBlueprintFunctionLibrary:ExtractXmlAttributesToMap(InputText) end
